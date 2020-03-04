$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  pp nds
  result = {}

  # this is how we do it ==>
  #   loop through array of directors
  #   add each director :name as key to result object
  #   for each of director's movies, add to director's total
  #
  # this could also be done with a map and reducing... (mapReduce?)

  # loop through array of directors
  row_index = 0
  while row_index < nds.count do
    director = nds[row_index]
    director_name = director[:name]
    # instantiate director key and value
    result[director_name] = 0

    # loop through array of movies
    movies = director[:movies]
    inner_index = 0
    while inner_index < movies.count do
      movie = movies[inner_index]
      # add :worldwide_gross to sum in result hash
      result[director_name] += movie[:worldwide_gross]

      inner_index += 1
    end

    row_index += 1
  end



  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the :worldwide_gross
  # Be sure to return the result at the end!
  result
end
