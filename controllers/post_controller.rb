class PostController<Sinatra::Base
    set :root, File.join(File.dirname(__FILE__), "..")
    set :view, Proc.new { File.join(root, "views") }

    configure:development do
      register Sinatra::Reloader
    end

  get "/" do
    erb :"Homepage"
  end


get "/:id" do
  id = params[:id]
case id
  when "bread"
    erb:"bread"
  when "rice"
    erb :"rice"
  when "taco"
    erb:"taco"
  when "shoes"
    erb :"shoes"
  when "milkshake"
  erb :"milkshake"
  when "Homepage"
    
  else
    "Nothing"
end
end
end
