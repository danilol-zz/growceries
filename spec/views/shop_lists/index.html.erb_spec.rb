require 'rails_helper'

RSpec.describe "shop_lists/index", type: :view do
  before(:each) do
    assign(:shop_lists, [
      ShopList.create!(
        name: "Name",
        active: false,
        comment: "MyText"
      ),
      ShopList.create!(
        name: "Name",
        active: false,
        comment: "MyText"
      )
    ])
  end

  it "renders a list of shop_lists" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
