require 'rails_helper'

RSpec.describe TodosController, type: :controller do
	describe "GET /todos" do
		describe "WHEN no parametters are specified" do
			it "SHOULD retrive a list of unfiltered todos" do
			end
		end
		describe "WHEN parametter state is specified" do
			describe "AND is set to 'ACTIVE'" do
				it "SHOULD retrive a list of 'ACTIVE' todos" do
				end
			end
			describe "AND is set to 'INACTIVE'" do
				it "SHOULD retrive a list of 'INACTIVE' todos"  do
				end
			end
		end
	end
	describe "POST /todos" do
		it "SHOULD create a new TODO entry" do
		end
	end
	describe "GET  /todos/:id" do
		it "SHOULD retrive the TODO corresponding to :id" do
		end
	end
	describe "PUT  /todos/:id" do
		it "SHOULD update the TODO corresponding to :id with the supply params" do
		end
	end
	describe "DELETE /todos/:id" do
		it "SHOULD delete the TODO corresponding to :id" do
		end
	end
end
