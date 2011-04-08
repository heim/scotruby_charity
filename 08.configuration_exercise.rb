def configure
  
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
  
configuration.class # => Configuration  
configuration.tail_logs # => true  
configuration.app_server.admin_password # => 'secret'