# Add the 2 requires you will need here
require 'rspec'
require './lib/student'

describe Student do
  it 'exists' do
    student = Student.new('Penelope')

    expect(student).to be_instance_of(Student)
  end
  # test it has a name
  it 'has a name' do 
    student = Student.new('Penelope')
    
    expect(student.name).to eq("Penelope")
  end 
  
  # test it has cookies
  it 'has empty cookies to start' do 
    student = Student.new('Penelope')
    
    expect(student.cookies).to eq([])
  end 
  
  # test it can add cookies
  it 'can add cookies' do 
    student = Student.new('Penelope')

    student.add_cookie('Chocolate Chunk')
    student.add_cookie('Snickerdoodle')

    expect(student.cookies).to eq(["Chocolate Chunk", "Snickerdoodle"])
  end 
end
