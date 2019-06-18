require 'spec_helper'
require 'capybara/rspec'

feature "Contact creation" do 
	scenario "allows acces to contacts page" do 
		visit "/contacts"
		
		expect(page).to have_content I18n.t 'contacts.contact_us'
	end
end


# feature "Signing in" do
#   background do
#     User.make(email: 'user@example.com', password: 'caplin')
#   end

#   scenario "Signing in with correct credentials" do
#     visit '/sessions/new'
#     within("#session") do
#       fill_in 'Email', with: 'user@example.com'
#       fill_in 'Password', with: 'caplin'
#     end
#     click_button 'Sign in'
#     expect(page).to have_content 'Success'
#   end