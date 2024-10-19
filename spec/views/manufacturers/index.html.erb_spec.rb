require 'rails_helper'

RSpec.describe "manufacturers/index", type: :view do
  before(:each) do
    assign(:manufacturers, [
      Manufacturer.create!(
        name: "Name"
      ),
      Manufacturer.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of manufacturers" do
    render template: 'admin/manufacturers/index'
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
