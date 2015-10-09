require "api_documentation_helper"

RSpec.resource "Contacts" do
  header "Content-Type", "application/vnd.api+json"

  get "/contacts" do
    before do
      FactoryGirl.create :contact
      FactoryGirl.create :contact
    end

    example_request "List contacts" do
      expect(status).to eq 200
    end
  end
end