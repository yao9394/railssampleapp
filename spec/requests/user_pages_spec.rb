require 'rails_helper'

RSpec.describe "UserPages", :type => :request do
  describe "User pages" do
    subject { page }
    describe "signup page" do
      before { visit signup_path }
      it { should have_selector('h1', text: 'Sign up') }
    end
  end
end
