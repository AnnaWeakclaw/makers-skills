require "todo"

describe Todo do
  describe "creation" do
    subject { described_class.new("say hi") }

    it "creates a todo" do
      expect(subject).to be_instance_of described_class
    end

    it "can be completed" do 
      expect(subject.completed?).to be true
    end

    it "returns complete string" do 
      subject.completed?
      expect(subject.completion_to_string). to eq("complete")
    end
  end
end
