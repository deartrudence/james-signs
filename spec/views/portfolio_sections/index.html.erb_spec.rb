require 'rails_helper'

RSpec.describe "portfolio_sections/index", type: :view do
  before(:each) do
    assign(:portfolio_sections, [
      PortfolioSection.create!(
        :title => "Title"
      ),
      PortfolioSection.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of portfolio_sections" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
