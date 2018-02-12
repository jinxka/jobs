require 'rails_helper'

RSpec.describe "matches/index", type: :view do
  before(:each) do
    assign(:matches, [
      Match.create!(
        :fighter1 => "",
        :fighter2 => "",
        :winner => "",
        :log => "MyText"
      ),
      Match.create!(
        :fighter1 => "",
        :fighter2 => "",
        :winner => "",
        :log => "MyText"
      )
    ])
  end

  it "renders a list of matches" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
