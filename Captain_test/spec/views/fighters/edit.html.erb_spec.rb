require 'rails_helper'

RSpec.describe "fighters/edit", type: :view do
  before(:each) do
    @fighter = assign(:fighter, Fighter.create!(
      :name => "MyString",
      :damage => 1,
      :hp => 1,
      :strength => 1,
      :dexterity => 1,
      :intelligence => 1
    ))
  end

  it "renders the edit fighter form" do
    render

    assert_select "form[action=?][method=?]", fighter_path(@fighter), "post" do

      assert_select "input[name=?]", "fighter[name]"

      assert_select "input[name=?]", "fighter[damage]"

      assert_select "input[name=?]", "fighter[hp]"

      assert_select "input[name=?]", "fighter[strength]"

      assert_select "input[name=?]", "fighter[dexterity]"

      assert_select "input[name=?]", "fighter[intelligence]"
    end
  end
end
