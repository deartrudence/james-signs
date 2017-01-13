require 'rails_helper'

RSpec.describe "portfolio_sections/new", type: :view do
  before(:each) do
    assign(:portfolio_section, PortfolioSection.new(
      :title => "MyString"
    ))
  end

  it "renders new portfolio_section form" do
    render

    assert_select "form[action=?][method=?]", portfolio_sections_path, "post" do

      assert_select "input#portfolio_section_title[name=?]", "portfolio_section[title]"
    end
  end
end
