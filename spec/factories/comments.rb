FactoryGirl.define do 	
	factory :comment do
		author "mike"
		sequence(:body) { |n| "comment boby #{n}"}
	end
end