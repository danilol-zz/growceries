require "rails_helper"

RSpec.describe ShopListsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/shop_lists").to route_to("shop_lists#index")
    end

    it "routes to #new" do
      expect(get: "/shop_lists/new").to route_to("shop_lists#new")
    end

    it "routes to #show" do
      expect(get: "/shop_lists/1").to route_to("shop_lists#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/shop_lists/1/edit").to route_to("shop_lists#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/shop_lists").to route_to("shop_lists#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/shop_lists/1").to route_to("shop_lists#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/shop_lists/1").to route_to("shop_lists#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/shop_lists/1").to route_to("shop_lists#destroy", id: "1")
    end
  end
end
