class BoatingTest
    @@all = []

    attr_reader :student, :test, :instructor
    attr_accessor :status

    def initialize(student, test, status, instructor)
        @student =  student
        @test = test  
        @status = status
        @instructor = instructor

        @@all << self
    end

    

    def self.all
        @@all
    end
end
