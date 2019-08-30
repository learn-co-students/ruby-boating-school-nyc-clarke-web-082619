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
      BoatingTest.all.include?(test_name) ? test_name.status = 'passed' : BoatingTest.new(student, test_name, 'passed', self)
  end

   def fail_student(student, test_name)
      BoatingTest.all.include?(test_name) ? test_name.status = 'failed' : BoatingTest.new(student, test_name, 'failed', self)
  end
end

