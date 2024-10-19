require "rails_helper"

RSpec.describe Admin::ManufacturersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "admin/manufacturers").to route_to("admin/manufacturers#index")
    end

    it "routes to #new" do
      expect(get: "admin/manufacturers/new").to route_to("admin/manufacturers#new")
    end

    it "routes to #show" do
      expect(get: "admin/manufacturers/1").to route_to("admin/manufacturers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "admin/manufacturers/1/edit").to route_to("admin/manufacturers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "admin/manufacturers").to route_to("admin/manufacturers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "admin/manufacturers/1").to route_to("admin/manufacturers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "admin/manufacturers/1").to route_to("admin/manufacturers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "admin/manufacturers/1").to route_to("admin/manufacturers#destroy", id: "1")
    end
  end
end
