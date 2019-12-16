class Instructor

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def pass_student(student, test_name)
        if student.tests.find {|test| test.test_name == test_name} == nil 
            BoatingTest.new(student, test_name, self, "passed")
        else 
            student.tests.each do |test|
                if test.test_name == test_name 
                test.status = "passed"
                end
            end 
        end 
    end   
    
    def fail_student(student, test_name)
        if student.tests.find {|test| test.test_name == test_name} == nil 
            BoatingTest.new(student, test_name, self, "failed")
        else    
            student.tests.each do |test|
                if test.test_name == test_name
                test.status = "failed"
                end 
            end
        end 
    end 

end
