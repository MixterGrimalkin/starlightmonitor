class ObservatoryController < ApplicationController

  def index
    @constellations = Constellation.includes(:components).order(:created_at).all
  end

  def current_state
    data = []
    Constellation.includes(:components).all.each do |constellation|
      comps_data = []
      constellation.components.each do |component|
        comps_data << {
            name: component.name,
            desc: component.description,
            current_state: component.current_state
        }
      end
      data << {
          name: constellation.name,
          desc: constellation.description,
          online: constellation.last_online && (DateTime.now.to_i - constellation.last_online.to_i < 1.minute.to_i),
          components: comps_data
      }
    end
    render json: data
  end

end
