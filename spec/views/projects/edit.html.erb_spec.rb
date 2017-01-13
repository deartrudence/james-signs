require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :sub_category => nil,
      :title => "MyString",
      :description => "MyText",
      :item_number => "MyString",
      :size => "MyString",
      :materials => "MyText",
      :recent => false
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_sub_category_id[name=?]", "project[sub_category_id]"

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "input#project_item_number[name=?]", "project[item_number]"

      assert_select "input#project_size[name=?]", "project[size]"

      assert_select "textarea#project_materials[name=?]", "project[materials]"

      assert_select "input#project_recent[name=?]", "project[recent]"
    end
  end
end
