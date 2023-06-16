require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    assign(:employee, Employee.create!(
      name: "Name",
      age: 2,
      email: "Email",
      address: "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Address/)
  end
end
