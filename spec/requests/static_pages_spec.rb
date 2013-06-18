require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
       visit '/static_pages/home'
       page.should have_content('Sample App')
    end

    it "should have the title 'Home'" do
   		visit '/static_pages/home'
   		page.should have_selector('title', :text=>"Home")
   	end
  end

    describe "Help Page" do
    	it "should have content 'Help'" do
    		visit '/static_pages/help'
    		page.should have_content('Help')
    	end
    	it "should have the title 'Help'" do
    		visit '/static_pages/help'
    		page.should have_selector('title', :text=>"Help")
    	end
   end

    describe "About Page" do
    	it "should have content 'About Us'" do
    		visit '/static_pages/about'
    		page.should have_content('About Us')
    		end
    	it "should have the title 'About Us'" do
    		visit '/static_pages/about'
    		page.should have_selector('title', :text=>"About Us")
    	end
    end

end
