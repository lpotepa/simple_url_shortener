require 'rails_helper'

RSpec.describe UrlsController, type: :controller do
  describe "/urls CREATE" do
    context "user provides proper url" do
      let(:params) { {url: "http://google.com"} }
      it "shows success flash message" do
        post :create, params: params
        expect(flash[:success]).to match(/Successfully generated a link:/)
      end
    end
    context "user provides an incorrect url" do
      let(:params) { {url: "abc"} }
      it "shows success flash message" do
        post :create, params: params
        expect(flash[:error]).to be_present
      end
    end
  end 
end
