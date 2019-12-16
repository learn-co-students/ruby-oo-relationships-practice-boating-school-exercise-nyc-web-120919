require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new("eunice")
s2 = Student.new("deb")
s3 = Student.new("chris")
s4 = Student.new("steven")
s5 = Student.new("rachael")
s6 = Student.new("justin")

i1 = Instructor.new("lisa")
i2 = Instructor.new("daniel")
i3 = Instructor.new("helen")
i4 = Instructor.new("jong")
i5 = Instructor.new("hannah")

b1 = BoatingTest.new(s1, "test1", "passed", i1)
b2 = BoatingTest.new(s2, "test2", "failed", i2)
b3 = BoatingTest.new(s3, "test3", "passed", i3)
b4 = BoatingTest.new(s4, "test4", "passed", i4)
b5 = BoatingTest.new(s5, "test1", "failed", i5)
b6 = BoatingTest.new(s6, "test1", "passed", i1)
b7 = BoatingTest.new(s1, "test2", "failed", i1)
b8 = BoatingTest.new(s1, "test1", "failed", i1)
b9 = BoatingTest.new(s1, "test1", "passed", i1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

