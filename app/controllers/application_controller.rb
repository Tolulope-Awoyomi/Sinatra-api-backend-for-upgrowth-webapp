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

  # include show routes
  get "/aspects/:id" do
    aspect = Aspect.find_by(id: params[:id])
    if aspect
    aspect.to_json(include: :strategies)
    else
      "404 - not found"
    end
  end

  get "/strategies/:id" do
    strategy = Strategy.find_by(id: params[:id])
    if strategy
    strategy.to_json(include: :aspect)
    else 
      "404 - not found"
    end
  end


end
