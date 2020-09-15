# INHERITANCE IN RUBY 
#allow us to extend the functionality of one class into other classes. so i can basically define one as super class,
#then i can create sub classes that will inheritare all the attributes and clases from that super class

class Chef 

    def make_chicken
        puts "the chef makes chicken"
    end 
    def make_salad 
        puts "The chef makes salad"
    end 
    def make_special_dish
        puts "The chef makes bbq ribs"
    end
end 

class ItalianChef < Chef  #subclass due inherit from Chef super class
    def make_special_dish  #redefine the metho inside of italianChef class.
        puts "the chef makes eggplant parm"
    end 
    def make_pasta
        print "The chef makes pasta"
    end
end 

chef = Chef.new()
chef.make_special_dish

italian_chef = ItalianChef.new()
italian_chef.make_pasta                                               

# MODULES
#container where we can store different groups of methods. as you start programming and your program gets morecomplicated youll need to be more organized.
#we can do it that we can take methods that do similiar things and put them in someting inside
#called a module. 

module Tools

    def sayhi(name)
        puts "hello #{name}"
    end 

    def saybye(name)
        puts "bye #{name}"
    end
end 
#btw modules allow us to orgnaize our methods a lot better. you can put them inside of a module organized in a separate container.

include Tools #if i wanna to access the methos isnide of the tool module
Tools.saybye("mike") #we want to call the saybye method inside of the module, this give a name scape. saybye method inside of tool module.
#allow to refer to a particular namescape. syou can have a saybye methods with the same name in different modules and then i can use both of them. (in despite they have the same name)

