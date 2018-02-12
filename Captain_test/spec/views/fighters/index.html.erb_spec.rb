require 'rails_helper'

RSpec.describe "fighters/index", type: :view do
  before(:each) do
    assign(:fighters, [
      Fighter.create!(
        :name => "Name",
        :damage => 2,
        :hp => 3,
        :strength => 4,
        :dexterity => 5,
        :intelligence => 6
      ),
      Fighter.create!(
        :name => "Name",
        :damage => 2,
        :hp => 3,
        :strength => 4,
        :dexterity => 5,
        :intelligence => 6
      )
    ])
  end

  it "renders a list of fighters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
