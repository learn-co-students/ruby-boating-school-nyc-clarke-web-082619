class Student
    attr_reader :first_name
    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def add_boating_test(student,name,status,instructor)
    end

    def grade_percentage
        tests = BoatingTest.all.select{|x| x.student == self}
        passed = tests.select{|x| x.status == "passed"}
        return passed.length.to_f/tests.length.to_f
    end

    def self.all
        @@all
    end

    def self.find_student
        @@all.find{|x| x.first_name == self.first_name}
    end

end
