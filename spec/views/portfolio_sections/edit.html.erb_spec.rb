require 'rails_helper'

RSpec.describe "portfolio_sections/edit", type: :view do
  before(:each) do
    @portfolio_section = assign(:portfolio_section, PortfolioSection.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit portfolio_section form" do
    render

    assert_select "form[action=?][method=?]", portfolio_section_path(@portfolio_section), "post" do

      assert_select "input#portfolio_section_title[name=?]", "portfolio_section[title]"
    end
  end
end
