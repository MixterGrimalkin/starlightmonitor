class EventsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def view
    @constellation = Constellation.where(name: params[:cons_name]).try(:first)
    @events = @constellation ? @constellation.star_events.order(created_at: :desc).limit(ENV['LOG_LIMIT'].to_i) : []
  end

  def register_event
    if constellation = Constellation.includes(:components).where(name: params[:cons_name]).try(:first)
      if component = constellation.components.select { |c| c.name==params[:comp_name] }.first
        new_state = (params[:state].downcase=='on')
        unless new_state==component.current_state
          StarEvent.create({component: component, state: new_state, remote_ip: request.remote_ip})
          component.current_state = new_state
          component.save
        end
        constellation.last_online = DateTime.now
        constellation.save
        render plain: "Event Recorded\n"
      else
        render plain: "Component '#{params[:comp_name]}' not found\n", status: 404
      end
    else
      render plain: "Constellation '#{params[:cons_name]}' not found\n", status: 404
    end
  end

  def ping_constellation
    if constellation = Constellation.where(name: params[:cons_name]).try(:first)
      constellation.last_online = DateTime.now
      constellation.save
      render plain: "Pinged '#{params[:cons_name]}'\n"
    else
      render plain: "Constellation '#{params[:cons_name]}' not found\n", status: 404
    end
  end

end
