require 'rails_helper'

RSpec.describe RedirectsController, type: :controller do
  describe "/:slug GET" do
    context "user provides proper existing slug" do
      let(:url) { Url.create(url: "http://google.pl", slug: "abcd1") }
      it "shows success flash message" do
        get :index, params: {slug: url.slug} 
        expect(response).to redirect_to(url.url)
      end
    end
    context "user provides a non-existing slug" do
      it "shows success flash message" do
        get :index, params: {slug: "abc"} 
        expect(response).to redirect_to(root_path)
        expect(flash[:error]).to match(/Url not found./)
      end
    end
  end 
end
