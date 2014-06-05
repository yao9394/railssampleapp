require 'rails_helper'
require 'spec_helper'

RSpec.describe "StaticPages", :type => :request do
  describe "GET /static_pages" do
    it "should have the content 'StaticPages#home'" do
      visit '/static_pages/home'
      page.should have_content('StaticPages#home')
    end
  end
  describe "GET /static_pages" do
    it "should have the content 'StaticPages#help'" do
      visit '/static_pages/help'
      page.should have_content('StaticPages#help')
    end
  end
  describe "GET /static_pages" do
    it "should have the content 'StaticPages#about'" do
      visit '/static_pages/about'
      page.should have_content('StaticPages#about')
    end
  end
end
