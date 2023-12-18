
puts
tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\n Cat food:
\t* Fishies
\t* Catnip\n\t* Grass
\n ===========
\n\√ fat cat
"""

loop  do

puts "\e[H\e[2J"

puts tabby_cat
puts
puts persian_cat
puts backslash_cat
sleep 0.1
sleep 0.3
sleep 0.5
puts fat_cat
puts
sleep 0.5
puts '---------------------'

end
# __END__

# gets
