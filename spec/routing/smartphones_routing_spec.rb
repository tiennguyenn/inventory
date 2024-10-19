require "rails_helper"

RSpec.describe Admin::SmartphonesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "admin/smartphones").to route_to("admin/smartphones#index")
    end

    it "routes to #new" do
      expect(get: "admin/smartphones/new").to route_to("admin/smartphones#new")
    end

    it "routes to #show" do
      expect(get: "admin/smartphones/1").to route_to("admin/smartphones#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "admin/smartphones/1/edit").to route_to("admin/smartphones#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "admin/smartphones").to route_to("admin/smartphones#create")
    end

    it "routes to #update via PUT" do
      expect(put: "admin/smartphones/1").to route_to("admin/smartphones#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "admin/smartphones/1").to route_to("admin/smartphones#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "admin/smartphones/1").to route_to("admin/smartphones#destroy", id: "1")
    end
  end
end
