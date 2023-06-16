require 'rails_helper'

RSpec.describe "employees/edit", type: :view do
  let(:employee) {
    Employee.create!(
      name: "MyString",
      age: 1,
      email: "MyString",
      address: "MyString"
    )
  }

  before(:each) do
    assign(:employee, employee)
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(employee), "post" do

      assert_select "input[name=?]", "employee[name]"

      assert_select "input[name=?]", "employee[age]"

      assert_select "input[name=?]", "employee[email]"

      assert_select "input[name=?]", "employee[address]"
    end
  end
end
