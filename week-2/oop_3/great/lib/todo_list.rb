require "todo"

class TodoList
  def initialize
    @todos = []
  end

  def add(description, todo_class = Todo)
    @todos << todo_class.new(description)
  end

  def get(index)
    all[index]
  end

  def set_complete(index)
    get(index).completed?
  end

  def to_string
    all.each_with_index.map { |todo, index|
      "#{index + 1}. #{todo.description} #{todo.completion_to_string}"
    }.join("\n")
  end

  private

  def all
    @todos
  end
end
