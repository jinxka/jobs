require 'rails_helper'

RSpec.describe "weapons/new", type: :view do
  before(:each) do
    assign(:weapon, Weapon.new(
      :name => "MyString",
      :dexterity => 1,
      :strength => 1,
      :intelligence => 1,
      :damage => 1
    ))
  end

  it "renders new weapon form" do
    render

    assert_select "form[action=?][method=?]", weapons_path, "post" do

      assert_select "input[name=?]", "weapon[name]"

      assert_select "input[name=?]", "weapon[dexterity]"

      assert_select "input[name=?]", "weapon[strength]"

      assert_select "input[name=?]", "weapon[intelligence]"

      assert_select "input[name=?]", "weapon[damage]"
    end
  end
end
