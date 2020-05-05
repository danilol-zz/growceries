require 'rails_helper'

RSpec.describe "shop_lists/show", type: :view do
  before(:each) do
    @shop_list = assign(:shop_list, ShopList.create!(
      name: "Name",
      active: false,
      comment: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
  end
end
