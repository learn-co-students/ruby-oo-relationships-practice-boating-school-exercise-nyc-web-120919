class Student

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def add_boating_test(test, instructor)
        BoatingTest.new(self, test, instructor, "pending")
    end 

    def self.find_student(name)
        Student.all.select do |student|
            student.name == name 
        end 
    end 

    def tests
        BoatingTest.all.select do |test|
            test.student == self 
        end 
    end

    def grade_percentage
        counter = 0.0 
        tests.each do |test|
            if test.status == "passed"
                counter += 1
            end 
        end 
        pass_percentage = ((counter / tests.length)*100).round(2)
    end 

    
end
