require "./voter.rb"
describe voter do
    it "should ba a super class of parent" do
        voter = voter.new("john doe")
        exspect voter.superclass.to eq(Person)
    end
end