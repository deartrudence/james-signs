require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :sub_category => nil,
      :title => "MyString",
      :description => "MyText",
      :item_number => "MyString",
      :size => "MyString",
      :materials => "MyText",
      :recent => false
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

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
