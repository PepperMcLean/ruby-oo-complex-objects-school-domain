# code here!
class School
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if not @roster.include?(grade)
            @roster[grade] = []
        end
        @roster[grade] << student
    end

    def grade(grade)
        return @roster.fetch(grade)
    end

    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end
        @roster
    end


end