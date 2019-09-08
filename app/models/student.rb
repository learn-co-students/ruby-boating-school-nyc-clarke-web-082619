class Student
    attr_accessor :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name

        @@all << self
    end
#student, test_name, test_status, instructor
    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def grade_percentage
        student_tests= BoatingTest.all.find_all{|test| test.student.first_name == self.first_name}
        total_tests= student_tests.length.to_f
        total_passed= student_tests.find_all{|test| test.test_status == "passed"}
        num_passed= total_passed.length.to_f
        percent= (num_passed/total_tests)*100
    end 

    def self.find_student(name)
        all.find{|student|student.first_name == name }
    end 

    def self.all
        @@all
    end 
    
end
