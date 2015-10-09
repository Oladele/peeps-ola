FactoryGirl.define do  
	
	factory :phone_number do
    contact_id 1
		name "MyString"
		phone_number "MyString"
	end
	
	factory :contact do
		name_first "MyString"
		name_last "MyString"
		email "MyString"
		twitter "MyString"
  end

end