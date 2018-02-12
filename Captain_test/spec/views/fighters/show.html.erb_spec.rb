require 'rails_helper'

RSpec.describe "fighters/show", type: :view do
  before(:each) do
    @fighter = assign(:fighter, Fighter.create!(
      :name => "Name",
      :damage => 2,
      :hp => 3,
      :strength => 4,
      :dexterity => 5,
      :intelligence => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
