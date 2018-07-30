require "./person.rb"

describe person do
    it "should ba a instance of person" do
    person = person.new("john doe")
    expect(person).to be_a(person)
        
     end
    #it "should show name" do
        #person = person.new("john doe")
end