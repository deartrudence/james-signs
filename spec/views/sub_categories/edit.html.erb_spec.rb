require 'rails_helper'

RSpec.describe "sub_categories/edit", type: :view do
  before(:each) do
    @sub_category = assign(:sub_category, SubCategory.create!(
      :portfolio_section => nil,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit sub_category form" do
    render

    assert_select "form[action=?][method=?]", sub_category_path(@sub_category), "post" do

      assert_select "input#sub_category_portfolio_section_id[name=?]", "sub_category[portfolio_section_id]"

      assert_select "input#sub_category_title[name=?]", "sub_category[title]"

      assert_select "textarea#sub_category_description[name=?]", "sub_category[description]"
    end
  end
end
