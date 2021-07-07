class Instructor
attr_accessor :name
@@all = [] 

    def initialize(name)
        @name = name

        @@all << self
    end 

    def pass_student(student, name)
        test_to_pass= BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.test_name == name}
        if test_to_pass
            test_to_pass.status = "passed"
        else
            BoatingTest.new(student, test_name, "passed", self)
        end 
    end 

    def fail_student(student, name)
        test_to_fail= BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.test_name == name}
        if test_to_fail
            test_to_fail.status= "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end 

    def self.all
        @@all 
    end 

end
