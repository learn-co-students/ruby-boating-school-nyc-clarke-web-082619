class Student
    @@all = []

    attr_reader :first_name

    def initialize(first_name)
        @first_name = first_name

        @@all << self
    end

    def add_boating_test(test, status, instructor)
        BoatingTest.new(self, test, status, instructor)
    end

    def grade_percentage
        taken = 0
        passed = 0
        BoatingTest.all.each do |test|
            if test.student == self then
                passed += 1 if test.status == "passed"
                taken += 1
            end
        end
        (passed.to_f/taken.to_f) * 100
    end

    def self.find_student(name)
        all.find {|student| student.first_name == name}
    end

    def self.all
        @@all
    end
end
