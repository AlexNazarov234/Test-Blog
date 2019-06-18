def sign_up
	visit new_user_registration_path

	fill_in :user_email, :with => 'user@test.com'
	fill_in :user_username, :with => 'mike123'
	fill_in :user_password, :with => '111111'
	fill_in :user_password_confirmation, :with => '111111'

	click_button 'Sign up'
end