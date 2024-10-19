require 'rails_helper'

RSpec.describe "manufacturers/edit", type: :view do
  let(:manufacturer) {
    Manufacturer.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:manufacturer, manufacturer)
  end

  it "renders the edit manufacturer form" do
    render template: "admin/manufacturers/edit"

    assert_select "form[action=?][method=?]", manufacturer_path(manufacturer), "post" do

      assert_select "input[name=?]", "manufacturer[name]"
    end
  end
end
