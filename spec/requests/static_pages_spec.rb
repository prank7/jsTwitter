require 'spec_helper'

describe "Static pages" do

  describe "Help page" do

    it "should have the right title'" do
      visit '/static_pages/help'
      expect(page).to have_title('Help')
    end
  end

  describe "About page" do
  	it "should have a page" do
  		visit('/static_pages/about')
  		expect(page).to have_title("About")
  	end
 end


end