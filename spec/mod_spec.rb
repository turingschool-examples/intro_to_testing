require './lib/mod'
require './lib/student'

describe Mod do 
    it 'exists' do 
        mod_1 = Mod.new('Mod 1', 'Intro To OOP')
        
        expect(mod_1).to be_an_instance_of Mod 
    end 
    
    it 'has attributes' do 
        mod_1 = Mod.new('Mod 1', 'Intro To OOP')

        expect(mod_1.name).to eq("Mod 1")
        expect(mod_1.description).to eq("Intro To OOP")
        expect(mod_1.students).to eq([])
    end 

    it 'can add students' do 
        mod_1 = Mod.new('Mod 1', 'Intro To OOP')
        chris = Student.new('chRIs')
        richard = Student.new('RiCHard')
        meg = Student.new('meG')

        mod_1.add_student(chris)
        mod_1.add_student(richard)
        mod_1.add_student(meg)

        expect(mod_1.students).to eq([chris,richard,meg])
    end 

    it 'can capitalize student names' do 
        mod_1 = Mod.new('Mod 1', 'Intro To OOP')
        chris = Student.new('chRIs')
        richard = Student.new('RiCHard')
        meg = Student.new('meG')

        mod_1.add_student(chris)
        mod_1.add_student(richard)
        mod_1.add_student(meg)

        expect(mod_1.capitalized_student_names).to eq(["Chris","Richard","Meg"])
    end 

    it 'can alphabetize student names' do 
        mod_1 = Mod.new('Mod 1', 'Intro To OOP')
        chris = Student.new('chRIs')
        richard = Student.new('RiCHard')
        meg = Student.new('meG')

        mod_1.add_student(chris)
        mod_1.add_student(richard)
        mod_1.add_student(meg)

        expect(mod_1.alphabetical_student_names).to eq(["Chris","Meg","Richard"])
    end 
end 