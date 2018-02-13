require 'rails_helper'

RSpec.describe "weapons/index", type: :view do
  before(:each) do
    assign(:weapons, [
      Weapon.create!(
        :name => "Name",
        :dexterity => 2,
        :strength => 3,
        :intelligence => 4,
        :damage => 5
      ),
      Weapon.create!(
        :name => "Name",
        :dexterity => 2,
        :strength => 3,
        :intelligence => 4,
        :damage => 5
      )
    ])
  end

  it "renders a list of weapons" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
