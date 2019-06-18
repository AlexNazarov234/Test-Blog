require 'spec_helper'
require 'capybara/rspec'

feature "Contact creation" do 
	scenario "allows acces to contacts page" do 
		visit "/contacts"
		
		expect(page).to have_content I18n.t 'contacts.contact_us'
	end

	scenario "allows a guest to create contact" do
		fill_in :contact_email, :with => 'user@test.com'
		fill_in :contact_message, :with => 'blabla'

		click_button 'Send message'

		expect(page).to have_content 'Thanks'
	end

end
