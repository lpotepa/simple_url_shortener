require 'rails_helper'

RSpec.describe Url, type: :model do
  context "Incorrect URL is provided" do
    let(:params) { {url: "abc", slug: "abcde" }}
    let(:url) { Url.new(params) }
    it 'throws validation errors' do
      expect(url).to be_invalid
    end
  end
  context "Correct URL is provided" do
    let(:params) { {url: "http://google.com", slug: "abcde" }}
    let(:url) { Url.new(params) }
    it 'does not throw any validation errors' do
      expect(url).to be_valid
    end
  end
  context "URL is not provided" do
    let(:params) { {slug: "abcde" }}
    let(:url) { Url.new(params) }
    it 'throws validation errors' do
      expect(url).to be_invalid
    end
  end
end
