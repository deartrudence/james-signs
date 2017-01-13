require 'rails_helper'

RSpec.describe "sub_categories/new", type: :view do
  before(:each) do
    assign(:sub_category, SubCategory.new(
      :portfolio_section => nil,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new sub_category form" do
    render

    assert_select "form[action=?][method=?]", sub_categories_path, "post" do

      assert_select "input#sub_category_portfolio_section_id[name=?]", "sub_category[portfolio_section_id]"

      assert_select "input#sub_category_title[name=?]", "sub_category[title]"

      assert_select "textarea#sub_category_description[name=?]", "sub_category[description]"
    end
  end
end
