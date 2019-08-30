class Student
attr_reader :name 
@@all = []

def initialize(name)
  @name = name 
  @@all << self
end

def add_boating_test(test_name, status, instructor)
  BoatingTest.new(self, test_name, status, instructor)
end

def grade_percentage
  students = BoatingTest.all.select{|test| test.student == self}
  count = 0
  students.each{|test| count += 1 if test.status == 'passed'}
   ((count / students.length.to_f) * 100).round(2)
end

def self.find_student(name)
  self.all.find{|student| student.name == name}
end

def self. all
  @@all 
end

end
