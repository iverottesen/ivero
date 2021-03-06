require 'spec_helper'

describe "Static pages" do

  describe 'Home page' do
    it "should have the h1 'Ivero'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Ivero')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Ivero')
    end

    it "should have the costum page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '- Home')
    end
  end

  describe 'Help page' do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Help')
    end
  end

  describe 'About page' do
    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'About')
    end
  end

  describe 'Contact page' do
    it "should have the h1 'contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => 'Contact')
    end
  end

end
