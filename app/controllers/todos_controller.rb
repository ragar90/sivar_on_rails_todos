class TodosController < ApplicationController
	def index
		@state = Todo.states[params[:state]]
		# Verbose Code
		# if params[:state] == 'ACTIVE'
		# 	@state = true
		# elsif params[:state] == 'INACTIVE'
		# 	@state = false
		# end

		if @state.nil?
			@todos = Todo.all
		else
			@todos = Todo.where(state: @state)
		end
		respond_to do |format|
			format.json{render json:{todos:@todos}}
		end
	end
end
