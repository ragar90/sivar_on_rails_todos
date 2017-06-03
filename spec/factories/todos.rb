FactoryGirl.define do
	factory :todo do
		description {SecureRandom.hex(512)}
		factory :active_todo do
			state true
		end

		factory :inactive_todo do
			state false
		end
	end
end