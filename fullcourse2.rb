#(7) ARRAYS 
#(container that can hold multiple valuables, hundres of them)
#you can put different datatypes 


#one way to access elements inside the array
friends = Array["Kevin", "Karen", "Oscar", false]
puts friends 


#another way to access elements inside the array
index = Array["1stindexposition", "Karen", "Oscar", false]
puts index[0]


hola = Array["1stindexposition", "Karen", "Oscar", false]
puts index[-2]

#to specify arrays inside of square brackets []
top = Array["Kevin", "Karen", "Oscar", false]
puts top[0,2]

#telling ruby that we want to create an array withouth putting values/initial info to it yet.
#when printed, it will fill all the elements in blank between the 0 - 5
friends = Array.new

friends[0] = "Michael"
friends[5] = "Holly"
puts friends 

#shows how many elements are inside the array []
friends = Array["Kevin", "Karen", "Oscar"]
puts friends.length()

#to see if an elemente is inside of the array. if it is will give true, else false.
friends = Array["Kevin", "Karen", "Oscar"]
puts friends.include?("Kevin") 

#print the elements of the array reversed

friends = Array["Ana", "Belen", "Carlos"]
puts friends.reverse()

#sort the elements. you can sort them alfabetically
friends = Array["Ana", "Belen", " Fernando", "Carlos"]
puts friends.sort()

#no way to sort numbers and strings    in Ruby
#_____________________________________________________________

#(8) HASHES {}
#tipe of data structure that allows you to store different pieces of information. 
#hashes you can actually store the keyvalue pairs, you can give them a key

states = {
    "Pennsylvania" => "PA",  #ruby admits only unique keys 
    "New York" => "NY",
    "Orgeno" => "OR"
    
       
}

puts states
puts states["New York"] #it's gonna print out NY that maps to newyork

puts states[:Pennsylvania]

#many situations when you'll need to map keys to values.
#when i create an array i am creating a list of individual values, but when you create a hash, you're creating a list of value pairs that you give an specif key and will speed out the value.

#__________________________________________________________________________
#(9) METHODS

def sayhi
    puts "Hello user"
end 

puts "Top"
puts sayhi  #to show it you need to call the method. 
puts "Bottom"

#give this methods some information. 
def sayhi(name, age)
    puts ("Hello" + name + ", you are " + age.to_s)
end 

sayhi("Mike", 83)

#you can give defaults values like noname , -1.
def sayhi(name="no name", age= -1) #specify default values can be a good way to control this methods.
    puts ("Hello" + name + ", you are " + age.to_s)
end 

sayhi

#__________________________________________________________________________________

#(10)RETURN STATEMENT. this is how methods can give us information back

def cube(num) #specify, pass it num. calling cube method and is giving us the value back
    num * num * num 
    
end 

puts cube(3) 

#in this case instead of returning num * num * num is gonna return me 5 due is the last line inside of this method.
def cube(num) #specify, pass it num 
    num * num * num 
  5  
end 
  
puts cube(3) 

#i can say return and it will return 27 anyways. any code that goes before this return keyword of after won't be excuted.
#the return method will tell ruby that you're done with the method. so nothing after will be executed
def cube(num) #specify, pass it num 
  return  num * num * num, 
  5  
end 
  
puts cube(3) 

#you can also return any kind of Datatype: strings, boolean, etc. 

#_______________________________________________________________________________
#(11) IF STATEMENTS IN RUBY: helps our programs to make decisions and respond to others decisions. 

ismale = true  #set this to true.
istall = false

if ismale and istall  #its only gonna executed if both are true
    puts "You are tall male"
elsif ismale and !istall   #exclamation means the opposite. is the Negation operator
puts "you are a short male"
elsif !ismale and install
    puts "you are not male but are tall"
else
    puts "You are not male or not tall"
end 

#________________________________________________________________________________
#(12)IF STATEMENTS conditioner statement. 

def max(num1, num2, num3)  #in the parentesis is specified the parameter.
   if num1 >= num2 and num1 >= num3 #this comparason is either true or false, so needs to use true or false to show comparison
        return num1
   elsif num2 > num1 and num2 >= num3
        return num2
   else 
        return num3
   end 
end 

puts max(1001, 20, 33)  #it will show me the greatest number


def calidad(bueno, masomenos, malo)  #in the parentesis is specified the parameter, in this case Strings
    if 'bueno' >= 'masomenos' and 'malo' >= 'malo' #this comparason is either true or false, so needs to use true or false to show comparison
         return 'bueno'
    elsif 'masomenos' > 'bueno' and 'bueno' >= 'malo'
         return 'masomenos'
    else 
         return 'malo'
    end 
 end 
 
 puts calidad('bueno', 'masomenos', 'malo') 


#___________________________________________________________________________________
#(13)BUILDING A BETTER CALCULATOR

#we will need to get some input from users. some information. the 1st number,2nd number and operation they want to perform.

puts "Enter first number: "
num1 = gets.chomp().to_f

puts "Enter operator: "
op = gets.chomp()

puts "Enter second number: "
num2 = gets.chomp().to_f   #to convert it to a float number 

#figure out what they enter. so we can use an If statement (allows us to responder to different values in our program)

if op == "+"
    puts (num1 + num2)
elsif op == "-"
    puts (num1 - num2)
elsif op == "/"
    puts (num1 / num2)
elsif op == "*"
    puts (num1 * num2)
else 
    puts "Invalid operator"
end 
   
#__________________________________________________________________________________
#(14)CASE EXPRESSIONS  
#allow to take an scenario when we're comapring the values and put them into an structure on its own. 
#comparing the situation with a differnt value.

def get_day_name(day) #convert name into the actual day_name
    day_name = ""

case day
when "mon"
    day_name ="Monday"
when "mon"
    day_name ="Monday"
when "mon"
    day_name ="Monday"
when "thu"
    day_name ="Thursday"
when "fri"
    day_name ="Friday"
when "sat"
    day_name ="Saturday"
when "sun"
    day_name ="Sunday"
else   #in case user write an option that doesnt exit we could use else keyword
    day_name = "Invalid abbreviation"
end 

return day_name
end 

puts get_day_name("mon")

    # if day === " mon"
    #     day_name = "monday"
    # elsif day == "tue"
    #     day_name = "tuesday"

    return day_name
end 

mon -> Monday
tue -> Tuesday
