require 'rails_helper'

RSpec.describe "matches/new", type: :view do
  before(:each) do
    assign(:match, Match.new(
      :fighter1 => "",
      :fighter2 => "",
      :winner => "",
      :log => "MyText"
    ))
  end

  it "renders new match form" do
    render

    assert_select "form[action=?][method=?]", matches_path, "post" do

      assert_select "input[name=?]", "match[fighter1]"

      assert_select "input[name=?]", "match[fighter2]"

      assert_select "input[name=?]", "match[winner]"

      assert_select "textarea[name=?]", "match[log]"
    end
  end
end
