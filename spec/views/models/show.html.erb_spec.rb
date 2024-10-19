require 'rails_helper'

RSpec.describe "models/show", type: :view do
  before(:each) do
    assign(:model, Model.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
