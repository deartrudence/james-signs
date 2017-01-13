require 'rails_helper'

RSpec.describe "portfolio_sections/show", type: :view do
  before(:each) do
    @portfolio_section = assign(:portfolio_section, PortfolioSection.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
