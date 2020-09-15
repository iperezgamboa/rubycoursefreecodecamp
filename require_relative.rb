#(31) REQUIRE RELATIVE
require_relative "fullcourse5" #telling ruby we'll use something inside of fullcourse4 file.
include Tools

Tools.sayhi("mike")


#(32) INTERACTIVE RUBY (IRB)

#an application that allows us to test ruby commands 
#(its a safe enviroment for testing purposes. it is to test out functionalities, test out little methods, 
#there is no setup requirement, you can just go there and try things out )

#you can put any valid ruby command inside of irb

#Example:
2.5.4 :001 > num = 123 
 => 123 
2.5.4 :002 > puts 123
123
 => nil 
2.5.4 :003 > def sayhi
2.5.4 :004?>   puts "hello"
2.5.4 :005?>   end
 => :sayhi 
2.5.4 :006 > sayhi
hello
 => nil 
2.5.4 :007 > 