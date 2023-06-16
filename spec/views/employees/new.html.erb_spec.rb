require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
      name: "MyString",
      age: 1,
      email: "MyString",
      address: "MyString"
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input[name=?]", "employee[name]"

      assert_select "input[name=?]", "employee[age]"

      assert_select "input[name=?]", "employee[email]"

      assert_select "input[name=?]", "employee[address]"
    end
  end
end
