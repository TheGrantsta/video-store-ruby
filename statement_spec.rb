require_relative "statement"

RSpec.describe Statement do
  it "should display customer name" do
    statement = Statement.new "John Doe"

    expect(statement.customerName).to eq "John Doe"
  end
  it "should display 'Rental record for [customer name]'" do
    statement = Statement.new "Jane Smith"

    expect("#{statement}").to eq "Rental record for Jane Smith"
  end
end
