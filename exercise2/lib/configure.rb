class Configuration
  attr_accessor :tail_logs
  attr_accessor :max_connections
  attr_accessor :admin_password
  
  def initialize
    @app_server = AppServer.new
  end
  
  def app_server
    yield @app_server if block_given?
    @app_server
  end
  class AppServer
    attr_accessor :port
    attr_accessor :admin_password
  end
end



def configure
  c = Configuration.new
  yield c if block_given?
  c
end

configuration = configure do |config|  
  config.tail_logs = true  
  config.max_connections = 55  
  config.admin_password = 'secret'  
  config.app_server do |app_server_config|  
    app_server_config.port = 8808  
    app_server_config.admin_password = config.admin_password  
  end  
end  
  
puts configuration.class # => Configuration  
puts configuration.tail_logs # => true  
puts configuration.app_server.admin_password # => 'secret'