require 'rails_helper'

RSpec.describe "weapons/show", type: :view do
  before(:each) do
    @weapon = assign(:weapon, Weapon.create!(
      :name => "Name",
      :dexterity => 2,
      :strength => 3,
      :intelligence => 4,
      :damage => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
