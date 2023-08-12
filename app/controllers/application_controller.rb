class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "Let's create an amazing webapp!" }.to_json
  end

  get "/aspects" do 
    aspects = Aspect.all
    aspects.to_json(include: :strategies)
  end

  # get "/strategies" do 
  #   strategies = Strategy.all
  #   strategies.to_json(include: :aspect)
  # end

  # # include show routes
  # get "/aspects/:id" do
  #   aspect = Aspect.find_by(id: params[:id])
  #   if aspect
  #   aspect.to_json(include: :strategies)
  #   else
  #     "404 - not found"
  #   end
  # end

  # get "/strategies/:id" do
  #   strategy = Strategy.find_by(id: params[:id])
  #   if strategy
  #   strategy.to_json(include: :aspect)
  #   else 
  #     "404 - not found"
  #   end
  # end

  # include other CRUD routes
  post "/aspects" do
    aspect = Aspect.create(
      name: params[:name]
    )
    aspect.to_json
  end

  post "/strategies" do
    aspect = Aspect.find(params[:aspect_id])
    strategy = aspect.strategies.create(
      name: params[:name]
    )
    strategy.to_json
  end

  patch "/strategies/:id" do
    strategy = Strategy.find(params[:id])
    strategy.update(
      name: params[:name]
    )
    strategy.to_json
  end

  delete "/strategies/:id" do 
    strategy = Strategy.find(params[:id])
    strategy.destroy
  end

end

