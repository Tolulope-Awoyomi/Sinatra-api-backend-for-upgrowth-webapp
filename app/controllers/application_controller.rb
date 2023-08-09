class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "Let's create an amazing webapp!" }.to_json
  end

  get "/aspects" do 
    aspects = Aspect.all
    aspects.to_json(include: :strategies)
  end

  get "/strategies" do 
    strategies = Strategy.all
    strategies.to_json(include: :aspect)
  end

end
