require 'rails_helper'

RSpec.describe "before_and_afters/show", type: :view do
  before(:each) do
    @before_and_after = assign(:before_and_after, BeforeAndAfter.create!(
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
