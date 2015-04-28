class Places

  @@all_places = []

  define_method(:initialize) do |description|
    @description = description
    @places = Places.all()

  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all_places
  end

#  define_method(:each) do |place|
#    @places.each() = place
#  end

#  define_singleton_method(:save) do





end
