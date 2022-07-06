class Mod 
    attr_reader :name, :description, :students

    def initialize(name, description)
        @name = name 
        @description = description
        @students = []
    end 

    def add_student(student)
        @students << student
    end 

    def capitalized_student_names
        cap_names = []

        @students.each do |student|
            cap_names << student.name.capitalize
        end 

        cap_names
    end 

    def alphabetical_student_names
        capitalized_student_names.sort
    end 
end 