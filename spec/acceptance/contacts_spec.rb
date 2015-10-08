# require "api_documentation_helper"
require 'rspec_api_documentation'
require 'rspec_api_documentation/dsl'

RSpec.resource "Contacts" do
  header "Content-Type", "application/vnd.api+json"

  get "/contacts" do
    before do
      FactoryGirl.create :contact

    end
    example_request "List contacts" do
      expect(status).to eq 200
    end
  end

end