require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :sub_category => nil,
        :title => "Title",
        :description => "MyText",
        :item_number => "Item Number",
        :size => "Size",
        :materials => "MyText",
        :recent => false
      ),
      Project.create!(
        :sub_category => nil,
        :title => "Title",
        :description => "MyText",
        :item_number => "Item Number",
        :size => "Size",
        :materials => "MyText",
        :recent => false
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Item Number".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
