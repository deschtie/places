require("sinatra")
require("sinatra/reloader")
require("./lib/place")
also_reload("lib/**/*.rb")

get("/") do
  @places = Place.all()
  erb(:index)
end

post("/place") do
  description = params.fetch("description")
  place = Place.new(description)
  place.save()
  erb(:success)
end
