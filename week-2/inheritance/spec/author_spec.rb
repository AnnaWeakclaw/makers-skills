require 'author'

describe Author do
  let(:author) { Author.new("Makers", 44208126832) }
  it "has a name" do
    expect(author.name).to eq("Makers")
  end
  it "knows publishers number" do
    expect(author.number).to eq(44208126832)
  end
end