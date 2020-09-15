class Animal  #clase animal clase padre
    attr_accessor :name  #atributo accesor

    def initialize (name) definir constructor
        @name= name #asignarlo a la variable de instancia
    end 
end 

class Cat < Animal #clase gato que va a heredar de naimal
   def talk  #definir metodo talk
    "miaaaau"  #sonido que retorna metodo talk
   end 
end 

class Dog < Animal #clase perro que hereda de Animal
    def talk #definir metodo talk
        "guaaaau"  #sonido que retorna el metodo talk
    end 
end 

popi = Dog.new("Popi")  #popi es igual a una instancia de la clase dog. y recibe un nombre
bicho = Cat.new("Bicho") #crear objeto de tipo gat. nuestro gato se llama bicho

puts popi.talk  
puts bicho.talk