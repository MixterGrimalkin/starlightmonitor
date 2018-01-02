class EventsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def register_event

    puts params

    message = params['message']
    puts message

    puts request.remote_ip
    puts request.url
    puts request.query_string

    render plain: 'Got it, thanks!'

  end

end
