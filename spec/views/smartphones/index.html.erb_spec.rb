require 'rails_helper'

RSpec.describe "smartphones/index", type: :view do
  before(:each) do
    assign(:smartphones, [
      Smartphone.create!(
        manufacturer: nil,
        model: nil,
        data_memory: "Data Memory",
        year_of_manufacture: 2,
        os_version: "Os Version",
        body_color: "Body Color",
        price: "9.99"
      ),
      Smartphone.create!(
        manufacturer: nil,
        model: nil,
        data_memory: "Data Memory",
        year_of_manufacture: 2,
        os_version: "Os Version",
        body_color: "Body Color",
        price: "9.99"
      )
    ])
  end

  it "renders a list of smartphones" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Data Memory".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Os Version".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Body Color".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
  end
end
