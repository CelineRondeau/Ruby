#Using functions to make your life easy.
# Create a function, for example do addition
# It is simple, the example below, gets the movies hash, the title and the rate, and do a simple operation of insertion.
# Remember to return the movies at the end

#Do addition -
#get's 3 arguments: movies, title, rate. Returns movies.
def do_add(movies,title, rate)
  movies[title] = rate
  return movies
end

#Do the display:
#Get's one argument, movies, and print it
def do_display(movies)
 movies.each do | movie, rate |
   puts "Movie #{movie}: Rate #{rate}"
 end
end

#list_movies = {"Star Wars", "Divergent"}
movies = {
 StarWars: 4.8,
 Divergent: 4.7
}

puts
puts "What would you like to do?"
puts "Type 'add' to add a movie."
puts "Type 'update' to update a movie."
puts "Type 'display' to display all movies."
puts "Type 'delete' to delete a movie."

choice = gets.chomp

case choice
 when "add"
 puts "What movie title would you like to add?"
 new_movie = gets.chomp
 puts "What rate?"
 new_rate = gets.chomp
 do_add(movies, new_movie, new_rate)
 do_display(movies)
 when "update"
 puts "Updated!"
 when "display"
 puts "Movies!"
 do_display(movies)
 when "delete"
 puts "Deleted"
else
 puts "Error!"
end
