require("sinatra")
require("sinatra/reloader")
require("./lib/places")
also_reload("lib/**/*.rb")

get("/") do
  @places = Places.all()
  erb(:index)
end

post("/places") do
  description = params.fetch("description")
  place = Places.new(description)
  place.save()
  erb(:success)
end
