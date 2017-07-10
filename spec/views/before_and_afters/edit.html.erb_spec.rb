require 'rails_helper'

RSpec.describe "before_and_afters/edit", type: :view do
  before(:each) do
    @before_and_after = assign(:before_and_after, BeforeAndAfter.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit before_and_after form" do
    render

    assert_select "form[action=?][method=?]", before_and_after_path(@before_and_after), "post" do

      assert_select "input#before_and_after_title[name=?]", "before_and_after[title]"

      assert_select "textarea#before_and_after_description[name=?]", "before_and_after[description]"
    end
  end
end
