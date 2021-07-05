require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("CatDog")
student2 = Student.new("Spongebob")
student3 = Student.new("Patrick")
student4 = Student.new("Gary")
student5 = Student.new("Pearl")
student6 = Student.new("Doug")
student7 = Student.new("Plankton")
student8 = Student.new("Nemotoad")

instructor1 = Instructor.new("Mrs. Puff")
instructor2 = Instructor.new("Mr. Krabs")
instructor3 = Instructor.new("Karen")

test1 = BoatingTest.new(student1, "How to Park", instructor1, "failed")
test2 = BoatingTest.new(student1, "Braking and Me", instructor1, "failed")
test3 = BoatingTest.new(student3, "Using Your Blinker", instructor1, "failed")
test4 = BoatingTest.new(student4, "Get Out of the Fast Lane", instructor1, "failed")
test5 = BoatingTest.new(student5, "Speeding 111", instructor2, "passed")
test6 = BoatingTest.new(student6, "Learn To Drive, Idiot", instructor2, "failed")
test7 = BoatingTest.new(student7, "Turning for Dummies", instructor2, "passed")
test8 = BoatingTest.new(student8, "Using Your Blinker", instructor1, "failed")
test9 = BoatingTest.new(student1, "Eating A Big Burrito While Driving", instructor3, "passed")





binding.pry
0 #leave this here to ensure binding.pry isn't the last line

