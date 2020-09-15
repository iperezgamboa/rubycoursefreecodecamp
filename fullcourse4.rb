#Handling Errors (Falta)

#Classes & Objects

#many types of data that we can use in our program. when you're running a program,there will be many differnt values
#that you want to store and track. We can keep track of the data in our program by using a variable. the problem with
#the problem is that not all the information in the real world can be represented by boolean, numbers, strings, etc.
#pc, cellphone, pelota, etc can't be represented. so ruby helped us to create our own datatype, that 
#will allow to represent your own datatype. we do it with Class.

# the class is a model, modeling a real world object. i'm defining a model to represent a book inside of our program.
class Book     #name with capital letter
  attr_accessor :title, :author, :pages   #giving attributes 
end  

#one object created
book1 = Book.new() #create a new instance of a book. so create a book object. is telling ruby that we want to create a new book. we stored inside of book1.
book1.title = "Harry Potter" #a giving book its gonna have all these attributes
book1.author = "JK Rowling"
book1.pages = 400  

puts book1.pages #asigning  

#second object created
book2 = Book.new()
book2.title = "Lord of the rings"
book2.author = "Tolkein"
book2.pages = 500

puts book2.author #its gonna print out the authorbook2 
puts book1.pages #its gonna print out pages of book1

#all data is an object in ruby.


#INITIALIZE METHODS  method that will be call whenever we create and object, blue print for what a book is in a program.

class Libro     #name with capital letter
    attr_accessor :titulo, :autor, :paginas   #giving attributes
    def initialize(titulo, autor, paginas) #inside () you can pass some information
        @titulo = titulo
        @autor = autor
        @paginas = paginas
    end 
end 
        
     x = Libro.new("Harry Potter", "Jk Rowling", 350)
     d = Libro.new("Lord of the rings","tolkein", 500)

  puts x.titulo
  puts x.autor
  puts x.paginas
  puts d.titulo
  puts d.autor
  puts d.paginas



# para acceder a un lugar debemos tener una ruta
# ese metodo debe apuntar a un view


#INSTANT/OBJECT METHODS
#we'll go inside of a class that we create in ruby and give some methods. 
#

class Student
    attr_accessor :name, :major, :gpa  #atributes for student
    def initialize(name, major, gpa)  #passing the name,major and gpa.
        @name = name
        @major = major
        @gpa = gpa
    end 
  #create a method to figure out if an object has honors or not.
    def has_honors   #its gonna return true or false depdening if the object/student has honors
       if @gpa >= 3.5
        return true        
       end 
       return false 
    end 
end 

student1 = Student.new("Jim","Business",2.6)   #1 student object
student2 = Student.new("Pam", "art", 3.6)      #2 student object

#will provide different results depending of the object/student chosen. 
puts student1.has_honors # has 2.6 so its lower than 3.5 return False. 
puts student2.has_honors  # has 3.6 so higher than 3.5 so return true. 

#BUILDING A QUIZ

class Question  #question data type following
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end 
end 

    p1 = "What color are apples?\n(a)red\n(b)purple\n(c)orange"
    p2 = "What color are bananas?\n(a)pink\n(b)red\n\(c)yellow"
    p3 = "What color are pears?\n(a)yellow\n(b)green\n(c)orange"

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "c"),
    Question.new(p3, "b") 
] #wanna be able to ask the question, answer the question and figure out if the answer is right or not.

def run_test(questions)
    answer = ""
    score = 0
    for question in questions 
        puts question.prompt
        answer = gets.chomp() #it will store whatever the user respond into the answer 
        if answer == question.answer   #another attribute of question class
            score += 1 
        end
    end 
    puts ("You got" + score.to_s + "/" + questions.length().to_s)
end 

run_test(questions) #call the methods and pass the questions that have been created in line 104



