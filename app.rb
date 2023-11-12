dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
# Write code here
  somehash.each do | city, zip |
    puts "#{city}"
  end
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
# Write code here
  somehash.each do | name, zip |
    if key == name
      60.times { print "-" }
      puts
      puts "The area code of #{name}'s is #{zip}"
      60.times { print "-" }
      puts
      break
    end
  end
  
end
 
# Execution flow
loop do  
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  if answer != "y"
    break
  else
    60.times { print "-" }
    puts
    get_city_names(dial_book)
    60.times { print "-" }
    puts
    puts "Type the name of the city would you like the zip code for?"
    zip_of = gets.chomp.downcase
    get_area_code(dial_book, zip_of)
  end
end
