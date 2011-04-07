require File.expand_path(File.dirname(__FILE__) + '/../lib/configure')

describe "configurate" do
    
  it "it accepts a block with an object" do
    configure do |config|
      config.tail_logs = true
    end.tail_logs.should be_true
  end
  
  it "is possible to configure app server" do
    configure do |config|
      config.app_server do |app_server|
        app_server.admin_password = "secret"
      end
    end.app_server.admin_password.should == "secret"
  end
  
  it "is possible to reconfigure app server" do
    conf = configure do |c|
      c.app_server do |a|
        a.port = 1336
      end
    end
    conf.app_server.port.should == 1336
    conf.app_server.port = 1337
    
    conf.app_server.port.should == 1337  
      
    
  end
end


describe Configuration::AppServer do
  it { should respond_to(:port)}
  it { should respond_to(:admin_password)}
end

describe Configuration do
  it {should respond_to(:tail_logs)}
  it {should respond_to(:max_connections)}
  it {should respond_to(:admin_password)}
  it { should respond_to(:app_server)}

  
  describe "#app_server" do
    it { subject.app_server.should be_a(Configuration::AppServer) }
  
    it "passes arguments given in a block" do
      mock_server = double("appserver")
      mock_server.should_receive(:foo=).with("bar")
      Configuration::AppServer.stub!(:new).and_return(mock_server)
      subject.app_server do |app_server|
        app_server.foo = "bar"
      end
    end
  end
end


