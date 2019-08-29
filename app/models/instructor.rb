class Instructor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def pass_student(s,n)
        t = BoatingTest.all.find{|x| 
        x.student == s && x.name == n
        }
        if t
            t.status = "passed"
            return t
        else
            return BoatingTest.new(s,name,"passed",self)
        end
    end

    def fail_student(s,n)
        t = BoatingTest.all.find{|x| 
        x.student == s && x.name == n
        }
        if t
            t.status = "failed"
            return t
        else
            return BoatingTest.new(s,name,"failed",self)
        end
    end

    def self.all
        @@all
    end
end
