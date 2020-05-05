require 'rails_helper'

RSpec.describe "shop_lists/edit", type: :view do
  before(:each) do
    @shop_list = assign(:shop_list, ShopList.create!(
      name: "MyString",
      active: false,
      comment: "MyText"
    ))
  end

  it "renders the edit shop_list form" do
    render

    assert_select "form[action=?][method=?]", shop_list_path(@shop_list), "post" do

      assert_select "input[name=?]", "shop_list[name]"

      assert_select "input[name=?]", "shop_list[active]"

      assert_select "textarea[name=?]", "shop_list[comment]"
    end
  end
end
