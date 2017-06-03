require 'rails_helper'

RSpec.describe TodosController, type: :controller do
	describe "GET /todos" do
		describe "WHEN no parametters are specified" do
			it "SHOULD retrive a list of unfiltered todos" 
		end
		describe "WHEN parametter state is specified" do
			describe "AND is set to 'ACTIVE'" do
				it "SHOULD retrive a list of 'ACTIVE' todos" 
			end
			describe "AND is set to 'INACTIVE'" do
				it "SHOULD retrive a list of 'INACTIVE' todos" 
			end
		end
	end
	describe "POST /todos" do
		it "SHOULD create a new TODO entry"
	end
	describe "GET  /todos/:id" do
		it "SHOULD retrive the TODO corresponding to :id"
	end
	describe "PUT  /todos/:id" do
		it "SHOULD update the TODO corresponding to :id with the supply params"
	end
	describe "DELETE /todos/:id" do
		it "SHOULD delete the TODO corresponding to :id"
	end
end
