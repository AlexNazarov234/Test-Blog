require 'spec_helper'
require 'capybara/rspec'

feature "Account creation" do 
	scenario "allows guest to create account" do 
		sign_up
		expect(page).to have_comment I18n.t 'devise.registrations.signed_up'	
	end
end

