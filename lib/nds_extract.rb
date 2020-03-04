$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'pp'
require 'directors_database'

def directors_totals(nds)
  #pp nds
  result = {}

  # this is how we do it ==>
  #   loop through array of directors
  #   add each director :name as key to result object
  #   for each of director's movies, add to director's total
  #
  # this could also be done with a map and reducing... (mapReduce?)

  # loop through array of directors
  # row_index = 0
  # while row_index < nds.count do
  #   director = nds[row_index]
  #   director_name = director[:name]
  #   # instantiate director key and value
  #   result[director_name] = 0
  #
  #   # loop through array of movies
  #   movies = director[:movies]
  #   inner_index = 0
  #   while inner_index < movies.count do
  #     movie = movies[inner_index]
  #     # add :worldwide_gross to sum in result hash
  #     result[director_name] += movie[:worldwide_gross]
  #     # increment inner loop
  #     inner_index += 1
  #   end
  #   # increment outer loop
  #   row_index += 1
  # end

  # build result hash by reducing directors array
  # using the :name String value as the hash key.
  pp nds.reduce({}) { |r, d| pp d[:name] }



  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the :worldwide_gross
  # Be sure to return the result at the end!
  result
end
