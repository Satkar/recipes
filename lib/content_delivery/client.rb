require 'contentful'

class ContentDelivery::Client
  
  attr_accessor :connection

  def initialize
    begin
      @connection = Contentful::Client.new(
        space: Rails.application.credentials.send(:"#{Rails.env}")[:contentful_api_space],
        access_token: Rails.application.credentials.send(:"#{Rails.env}")[:contentful_api_access_token],
        dynamic_entries: :auto 
      ) 
    rescue Contentful::Unauthorized => e
      Rails.logger.info "#{e.inspect}"
    rescue
      Rails.logger.info "Something went wrong with Connection"
    end
  end

  def list_entries(type)
    connection.entries(content_type: type, locale: '*') if connection
  end

  def fetch_entry(id)
    connection.entry id if connection
  end

end