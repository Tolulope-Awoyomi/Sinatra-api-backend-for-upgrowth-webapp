class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "Let's create an amazing webapp!" }.to_json
  end

end
