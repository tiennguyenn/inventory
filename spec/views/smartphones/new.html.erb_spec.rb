require 'rails_helper'

RSpec.describe "smartphones/new", type: :view do
  before(:each) do
    assign(:smartphone, Smartphone.new(
      manufacturer: nil,
      model: nil,
      data_memory: "MyString",
      year_of_manufacture: 1,
      os_version: "MyString",
      body_color: "MyString",
      price: "9.99"
    ))
  end

  it "renders new smartphone form" do
    render

    assert_select "form[action=?][method=?]", smartphones_path, "post" do

      assert_select "input[name=?]", "smartphone[manufacturer_id]"

      assert_select "input[name=?]", "smartphone[model_id]"

      assert_select "input[name=?]", "smartphone[data_memory]"

      assert_select "input[name=?]", "smartphone[year_of_manufacture]"

      assert_select "input[name=?]", "smartphone[os_version]"

      assert_select "input[name=?]", "smartphone[body_color]"

      assert_select "input[name=?]", "smartphone[price]"
    end
  end
end
