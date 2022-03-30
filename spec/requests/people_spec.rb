require 'rails_helper'

RSpec.describe "People", type: :request do
  describe "GET /persons" do
    context "when access the index page" do
      before(:each) { get persons_path }

      it "return status code 200" do
        expect(response).to have_http_status(200)
      end

      it "have sub-title: 'Busca por nome:'" do
        expect(response.body).to include('Busca por nome:')
      end
    end

  end
end
