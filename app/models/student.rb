class Student
    attr_accessor :first_name

    @@all = []
    
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def boating_tests
        BoatingTest.all.select {|bt|bt.student == self}
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end
    def self.find_student(name)
        @@all.find {|student|student.first_name == name}
    end
    def grade_percentage
        passed_tests = 0
         boating_tests.each do |bt|
            if bt.status == "passed"
                passed_tests += 1
            end
        end
        (passed_tests.to_f/boating_tests.count) * 100
    end

end
