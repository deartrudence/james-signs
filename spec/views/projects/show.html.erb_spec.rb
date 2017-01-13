require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :sub_category => nil,
      :title => "Title",
      :description => "MyText",
      :item_number => "Item Number",
      :size => "Size",
      :materials => "MyText",
      :recent => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Item Number/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
