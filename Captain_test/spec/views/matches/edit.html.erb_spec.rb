require 'rails_helper'

RSpec.describe "matches/edit", type: :view do
  before(:each) do
    @match = assign(:match, Match.create!(
      :fighter1 => "",
      :fighter2 => "",
      :winner => "",
      :log => "MyText"
    ))
  end

  it "renders the edit match form" do
    render

    assert_select "form[action=?][method=?]", match_path(@match), "post" do

      assert_select "input[name=?]", "match[fighter1]"

      assert_select "input[name=?]", "match[fighter2]"

      assert_select "input[name=?]", "match[winner]"

      assert_select "textarea[name=?]", "match[log]"
    end
  end
end
