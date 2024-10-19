require 'rails_helper'

RSpec.describe "smartphones/show", type: :view do
  before(:each) do
    assign(:smartphone, Smartphone.create!(
      manufacturer: nil,
      model: nil,
      data_memory: "Data Memory",
      year_of_manufacture: 2,
      os_version: "Os Version",
      body_color: "Body Color",
      price: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Data Memory/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Os Version/)
    expect(rendered).to match(/Body Color/)
    expect(rendered).to match(/9.99/)
  end
end
