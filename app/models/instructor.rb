class Instructor

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def boating_tests
    BoatingTest.all.select {|boating_test| boating_test.instructor == self}
  end


  def pass_student(student, target_bt_name)
    # student_find = self.boating_tests.find {|boating_test| boating_test.student.first_name == student}
    # test_find = self.boating_tests.find {|boating_test| boating_test.bt_name == target_bt_name}
    # match = student_find && test_find
    
    match = student.boating_tests.find_all {|boating_test| boating_test.bt_name == target_bt_name}
    if match.length != 0
      match.each {|boating_test| boating_test.bt_status = "passed"}
    else
      return BoatingTest.new(student, target_bt_name, "passed", self)
    end

    # ------------------------------------
    # NOT A STUDENT INSTANCE because i made it a string...
    # match = self.boating_tests.find_all {|boating_test| boating_test.student.first_name == target_student && boating_test.bt_name == target_bt_name}
    #   if match.length != 0
    #     match.each {|boating_test| boating_test.bt_status = "passed"}
    #   else
    #     return BoatingTest.new(target_student, target_bt_name, "passed", self)
    #   end
    # ------------------------------------

    # if (student_find == target_student) && (test_find == target_bt_name)
    #   self.boating_tests.map {|boating_test| boating_test.bt_status = "passed"}
    # else
    #   BoatingTest.new(target_student, target_bt_name, "passed", self)
    # end
    # self.boating_tests
    # test_name = self.boating_class.map(&:bt_test)
  #   take in student instance and test name
  # match name and update status to pass_student
  # if not match it should create a test with the student
  #   and test name and put status as pass_student
  #   should return the boatingtest instance
  end

  def fail_student(student, target_bt_name)
    # student_find = self.boating_tests.find {|boating_test| boating_test.student.first_name == student}
    # test_find = self.boating_tests.find {|boating_test| boating_test.bt_name == target_bt_name}
    # match = student_find && test_find
    
    match = student.boating_tests.find_all {|boating_test| boating_test.bt_name == target_bt_name}
    if match.length != 0
      match.each {|boating_test| boating_test.bt_status = "failed"}
    else
      return BoatingTest.new(student, target_bt_name, "failed", self)
    end

  end

  def self.all
    @@all
  end

end
