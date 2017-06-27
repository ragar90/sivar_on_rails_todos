class Todo < ActiveRecord::Base
	enum states:{ACTIVE: true, INACTIVE: false}
end
