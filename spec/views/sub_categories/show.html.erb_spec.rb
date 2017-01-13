require 'rails_helper'

RSpec.describe "sub_categories/show", type: :view do
  before(:each) do
    @sub_category = assign(:sub_category, SubCategory.create!(
      :portfolio_section => nil,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
