require 'rails_helper'

RSpec.describe "smartphones/edit", type: :view do
  let(:smartphone) {
    Smartphone.create!(
      manufacturer: nil,
      model: nil,
      data_memory: "MyString",
      year_of_manufacture: 1,
      os_version: "MyString",
      body_color: "MyString",
      price: "9.99"
    )
  }

  before(:each) do
    assign(:smartphone, smartphone)
  end

  it "renders the edit smartphone form" do
    render

    assert_select "form[action=?][method=?]", smartphone_path(smartphone), "post" do

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
