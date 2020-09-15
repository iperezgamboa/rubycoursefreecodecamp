# (1) WORKING WITH STRINGS

#print out with an space. 
puts "Giraffe\n Academy"

#method upcase.
phrase = "Giraffe Academy"
puts phrase.upcase()

#method downcase
phrase = "Giraffe Academy"
puts phrase.downcase()

# you don't want to print out the spaces, use strip method to take out spaces.
phrase = "     Giraffe Academy    "
puts phrase.strip()

# method length tells you number of caracters 
phrase = "     Giraffe Academy    "
puts phrase.length()

#good way to figure out if a certain string,phrase of character shows up in the string you're working with

phrase = "Giraffe Academy"
puts phrase.include? "Academy"

#false value because Academys isnt inside of our phrase
phrase = "Giraffe Academy"
puts phrase.include? "Academys"

#assign index positio in ruby. starting from position 012345
         0123456 
phrase = "Giraffe Academy"
puts phrase[0]

#to see the index position caracters from 0-3
phrase = "Giraffe Academy"
puts phrase[0,3]

#it will show me where A starts inside of my string.
phrase = "Giraffe Academy"
puts phrase.index("A")

#Just upcase
phrase = "Giraffe Academy"
puts "programming".upcase()

#____________________________________________________________________________-
# (2) MATH AND WORKING WITH NUMBERS WITH RUBY 
#tu put a number
puts 5
#to put a minus number ruby has no problem
puts -10
#also decimals
puts 5.865543
#plus
puts 5 + 9 
#division
puts 9 / 3

puts 2**3

#prints out the remination of 10%3 = 1 
puts 10 % 3    

#to print out the given variable
num = 20
puts num 

# print out the string along with the number. 
num = 20
puts ("my fav num " + num.to_s)

#tell me the absolute value of num  (it will show you the positive value)
num = -20
puts num. abs()

#it will round the number
num = 20.487
puts num.round()


#celing function its gonna give us the next number of 20. the next highest number from 20
num = 20.1
puts num.ceil()

#floor function its gonna give us the number 20 cutting of the decimals. showing the lower number
num = 20.9
puts num.floor()

#to calculate sqrt of number 36. 

puts Math.sqrt(36)

#logarithm of 1
puts Math.log(1)

#_______________________________________________________________________________
# (3) WORKING WITH FLOAT and INTEGERS NUMBERS. Ruby does distinguish between FLOAT and DECIMALS

puts 1 + 7  #we get a FLOAT back.

puts 1.0 + 7  #we are getting a decimal back. 

puts 10 / 7.0   #we are getting a decimal back. 


#_________________________________________________________________________________
# (4) GETTING USERS INPUT from USERS

puts "Enter your Name: " #tell user what they should enter
name = gets.chomp()    #allow the user to enter information #name is to store whatever the users put to the prgoram
puts ("Hello" + name + ", you are cool!")  #the chomp get rid of the new line. so now is all in the same line.

puts "Enter your age: "
age = gets.chomp()
puts ("Hello" + name + ", you are " + age)  #getting 2 peaces of input and printem them out.

puts "please, tell me, where are you from?"
where = gets.chomp()
puts ("Hello" + name + ", you are " + age + "you are from " + where ) 

#_____________________________________________________________________________
# (5) BUILDING A CALCULATOR IN RUBY... ruby converts anything you enter into a string.are getting store as string and concatenated

puts "Enter a number: "
num1 = gets.chomp().to_f   #chomp get rid of any new line
puts "Enter another number"
num2 = gets.chomp().to_f

#puts (num1 + num2)  #to interger  result  2 + 2.5 = 
puts (num1 + num2)  #to float result 2 +2.5 = 4.5

#__________________________________________________________________________________
# (6) MAB LIBS GAME

puts "enter a color: " 
color = gets.chomp() #chomp getting rid of the new line
puts "enter a plural noun: "
plural_noun = gets.chomp()
puts "enter a celebrity: "
celebrity = gets.chomp()

puts ("Roses are " + color)
puts (plural_noun + " are blue")
puts ("I love " + celebrity )




