class Student

  attr_reader :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def boating_tests
    BoatingTest.all.select {|boating_test| boating_test.student == self}
  end

  def add_boating_test(bt_name, bt_status, instructor)
    BoatingTest.new(self, bt_name, bt_status, instructor)
  end

  def grade_percentage
    all_tests = self.boating_tests.select(&:bt_status).count
    # same as above all_tests = self.boating_tests.select {|boating_test| boating_test.bt_status}.count
    passed_test = self.boating_tests.select {|boating_test| boating_test.bt_status == "passed"}.count
    grade_percentage = (passed_test.to_f / all_tests.to_f) * 100
  end

  def self.find_student(target_first_name)
    self.all.select {|student| student.first_name == target_first_name}
  end

  def self.all
    @@all
  end


end
