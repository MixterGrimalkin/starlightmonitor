require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StarlightMonitor
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # require 'mqtt'

    # client2 = MQTT::Client.connect(
    #     host: 'a2q2k2ttlfw6v7.iot.us-west-2.amazonaws.com',
    #     port: 8883,
    #     # access_key_id: ENV['AWS_KEY_ID'],
    #     # secret_access_key: ENV['AWS_SECRET']
    #     ssl: true,
    #     cert_file: 'fc8bdb8653-certificate.pem.crt',
    #     key_file: 'fc8bdb8653-private.pem.key',
    #     ca_file: 'RootCA.pem'
    # )

    # Initialize AWS IoTDataPlane Client
    # client = Aws::IoTDataPlane::Client.new(
    #     region: 'us-west-2',
    #     access_key_id: ENV['AWS_KEY_ID'],
    #     secret_access_key: ENV['AWS_SECRET'],
    #     endpoint: 'https://a2q2k2ttlfw6v7.iot.us-west-2.amazonaws.com'
    # )
    #
    # topic = "Starlight"
    #
    # payload = {
    #     test: "Hello from Observatory #{ENV['RAILS_ENV']}"
    # }.to_json
    #
    # # Publish payload to the topic
    # resp = client.publish({
    #                           topic: topic,
    #                           qos: 1,
    #                           payload: payload
    #                       })
    #
    # client.subscribe(topic)

  end
end
