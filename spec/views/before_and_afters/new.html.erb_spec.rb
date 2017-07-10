require 'rails_helper'

RSpec.describe "before_and_afters/new", type: :view do
  before(:each) do
    assign(:before_and_after, BeforeAndAfter.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new before_and_after form" do
    render

    assert_select "form[action=?][method=?]", before_and_afters_path, "post" do

      assert_select "input#before_and_after_title[name=?]", "before_and_after[title]"

      assert_select "textarea#before_and_after_description[name=?]", "before_and_after[description]"
    end
  end
end
