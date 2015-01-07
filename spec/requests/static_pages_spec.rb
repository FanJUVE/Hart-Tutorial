require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do

  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }


  describe "Home page" do

    before(:each) do
      visit "/static_pages/home"
    end

    it "should have content 'Sample App'" do
      expect(page).to have_content('Sample App')
    end
    it "should have the base title" do
      expect(page).to have_title("#{base_title}")
    end
    it "should not have a custom page title" do
      expect(page).not_to have_title("| Home")
    end

  end

  describe "Help page" do

    before(:each) do
      visit "/static_pages/help"
    end

    it "should have content 'Help'" do
      expect(page).to have_content('Help')
    end
    it "should have right title" do
      expect(page).to have_title("#{base_title} | Help")
    end

  end


  describe "About Us" do

    before(:each) do
      visit "/static_pages/about"
    end

    it "should have content 'About Us'" do
      expect(page).to have_content('About Us')
    end
    it "should have right title" do
      expect(page).to have_title("#{base_title} | About Us")
    end

  end


  describe "contact" do

    before(:each) do
      visit "/static_pages/contact"
    end

    it "should have content 'About Us'" do
      expect(page).to have_content('Contact')
    end
    it "should have right title" do
      expect(page).to have_title("#{base_title} | Contact")
    end

  end

end
