#(15)CASE EXPRESSIONS check a values against many other different values.

#allow to take an scenario when we're comapring the values and put them into an structure on its own. 
#comparing the situation with a differnt value.
# are appropiate in the situations when we're checking 
#a single value like a "day" against a bunch of different values and do different things depending on the situations.

def get_day_name(day) #convert name into the actual day_name
    day_name = ""

    case day   #statement case and give the value when want to compare
    when "mon"
        day_name = "Monday"
    when "tue"
        day_name = "Tuesday"
    when "wed"
        day_name = "Wednesday"
    when "thu"
        day_name = "Thursday"
    when "fri"
        day_name = "Friday"
    when "sat"
        day_name = "Saturday"
    when "sun"
        day_name = "Sunday"
    else   #in case user write an option that doesnt exit we could use else keyword
        day_name = "Invalid abbreviation"
end 

    return day_name
end 

puts get_day_name("thu")

#_____________________________________________________________________________
#(16) WHILE LOOPS in Ruby

#structure we can use that loops through a block of code an specific number of times.
# as long a certain condition remains true, it will keep looping over and executing the same code
# in the while loop. #to do something continuestly until we need to stop.
#so we specify a condition. as long as is true w
index = 1 
while index <= 5 #when the "index" condition is true the loop will stop
   puts index 
   index += 1 #code will keep looping the index until is equal to 5.
   
end 

#_____________________________________________________________________________
#(17) BUILDING A GUESSING GAME WITH A WHILELOOPS

secret_word = "giraffe"
guess = ""
guess_count = 0
guess_limit = 3
out_of_guesses = false
                                 #! means NOT
while guess != secret_word and !out_of_guesses #is not equal to secret word, it will keep looping
    if guess_count < guess_limit
    puts "Enter guess: "
    guess = gets.chomp()
    guess_count += 1
    else 
        out_of_guesses = true
    end 
end 

if out_of_guesses  #two situations, if they lose or else, they won. 
    puts "You have tried 3 times and couln't find the proper answer. You Lose"
else 
puts "You won!"
end 

#_______________________________________________________________________________
#(18)FOR LOOPS
#structure in ruby that allow us to look for an specific collection, array, number
#and to each item isnide of the collection we can do something.

#list of friend that will be used the for loop to look through the items.
friends = ["Kevin", "Karen", "Oscar", "Angela", "Andy"] 
#friends [1] too look for one of the elements.

for elements in friends  #saying for and specifing name of the variable and in every iteration of the loop this friend variable will represent another friend
                         #in the first i repreents kevin, in the second i, karen...etc
    puts elements 
end

#another way to loop:

friends.each do |friend|
    puts friend
end 

# loop through numbers. nother way to go through a numer an specific numer of times.
for index in 0..5
    puts index
end 

puts "click to continue: "
gets.chomp

6.times do |index|
    puts index
end 

#____________________________________________________________________________________
#(19)EXPONENT METHOD IN RUBY 
#it will take the power and base number

def pow(base_num, pow_num)  #two parameters.
   result = 1
   pow_num.times do |index|  #this is gonna loop through the code. so if pow_num is 3, will lopp 3 times in the code. 
      result = result * base_num
   end 
   return result
end 

puts pow(2, 3)
puts pow(1,2)

#_________________________________________________________________________________
#(20)COMMENTS

puts "Comments are fun"  #to describe what a line of code is doing. 
#puts "comments are fun" to temporaly unable a line of code. 

#__________________________________________________________________________________
#(21)READING FILES from an external files that are in our computer

File.open("employees.txt", "r") do |file| #inside of open enclose parenthesis, is the parameter of the name of the file.
                               #| |storying what we're doing inside the fine variable
    puts file.readchar()
    puts file.readchar()

    for line in file.readlines() #methods that return an array of all of the lines. located in employees.txt
        puts line
    end 

    file = File.open("employees.txt", "r") 
    puts file.read


end  #its gonna signify when we are done with the file. 

#__________________________________________________________________________________________
#(22)WRITING FILES
#we can read and write files just inside our program. 
#you can append at the end of the file.
#
File.open("employees.txt", "a") do |file|
    file.write("\nOscar, Accounting")
end 


File.open("index.html", "a") do |file|
    file.write("<h1> Hello </h1>")     #it will create an html file with <h1> Hello </h1> inside.
end 

File.open("employees.txt", "r") do |file|
    file.readline()
    file.write("Hi")
end 



