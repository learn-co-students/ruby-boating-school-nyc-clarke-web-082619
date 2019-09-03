class Instructor
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name

        @@all << self
    end

    def pass_student(student, test)
        the_test = BoatingTest.all.find { |boatingTest| boatingTest.test == test && boatingTest.student == student }
        if the_test then
            the_test.status = 'passed' 
        else
            the_test = BoatingTest.new(student, test, 'passed', self)
        end
        the_test
    end

    def fail_student(student, test)
        the_test = BoatingTest.all.find { |boatingTest| boatingTest.test == test && boatingTest.student == student }
        if the_test then
            the_test.status = 'failed' 
        else
            the_test = BoatingTest.new(student, test, 'failed', self)
        end
        the_test
    end

    def self.all
        @@all
    end
end
