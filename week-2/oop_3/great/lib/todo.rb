class Todo

  attr_reader :completion_to_string, :description
  def initialize(description)
    @completed = false
    @description = description
  end

  def completion_to_string 
    @completed ? "complete" : "not complete"
  end

  def completed?
    @completed = true
  end
end
