require 'rails_helper'

RSpec.describe "shop_lists/new", type: :view do
  before(:each) do
    assign(:shop_list, ShopList.new(
      name: "MyString",
      active: false,
      comment: "MyText"
    ))
  end

  it "renders new shop_list form" do
    render

    assert_select "form[action=?][method=?]", shop_lists_path, "post" do

      assert_select "input[name=?]", "shop_list[name]"

      assert_select "input[name=?]", "shop_list[active]"

      assert_select "textarea[name=?]", "shop_list[comment]"
    end
  end
end
