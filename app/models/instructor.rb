class Instructor
    attr_accessor :name

    def initialize(name)
    @name = name
    @@all << self
    end

    @@all = []

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        boat_test = boating_tests.find {|bt|bt.student == student && bt.name == test_name} 
        if boat_test
        boat_test.status = "passed"
        boat_test
        else 
             BoatingTest.new(student, test_name, "passed", self)
        end

    end

    def boating_tests
       BoatingTest.all.select {|bt|bt.instructor == self} 
    end

    def fail_student(student, test_name)
        boat_test = boating_tests.find {|bt|bt.student == student && bt.name == test_name} 
        if boat_test
        boat_test.status = "failed"
        boat_test
        else 
             BoatingTest.new(student, test_name, "failed", self)
        end
    end


end
