require 'rails_helper'

RSpec.describe "before_and_afters/index", type: :view do
  before(:each) do
    assign(:before_and_afters, [
      BeforeAndAfter.create!(
        :title => "Title",
        :description => "MyText"
      ),
      BeforeAndAfter.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of before_and_afters" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
