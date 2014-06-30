require 'rails_helper'
require 'spec_helper'

RSpec.describe "StaticPages", :type => :request do
  describe "Static pages" do
    subject { page }
    describe "Home page" do
      before { visit root_path }
      it { should have_content('StaticPages#home') }
    end
    describe "Help page" do
      before { visit help_path }
      it {should have_content('StaticPages#help')}
    end
    describe "About page" do
      before { visit about_path }
      it{ should have_content('StaticPages#about') }
    end
    describe "Contact page" do
      before { visit contact_path }
      it{ should have_selector('h1', text: 'Contact') }
    end
  end
end
