require 'rails_helper'

RSpec.describe "weapons/edit", type: :view do
  before(:each) do
    @weapon = assign(:weapon, Weapon.create!(
      :name => "MyString",
      :dexterity => 1,
      :strength => 1,
      :intelligence => 1,
      :damage => 1
    ))
  end

  it "renders the edit weapon form" do
    render

    assert_select "form[action=?][method=?]", weapon_path(@weapon), "post" do

      assert_select "input[name=?]", "weapon[name]"

      assert_select "input[name=?]", "weapon[dexterity]"

      assert_select "input[name=?]", "weapon[strength]"

      assert_select "input[name=?]", "weapon[intelligence]"

      assert_select "input[name=?]", "weapon[damage]"
    end
  end
end
