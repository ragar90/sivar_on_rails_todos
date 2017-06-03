require 'rails_helper'

RSpec.describe TodosController, type: :controller do
	describe "GET /todos" do
		before(:all) do
			create_list(:active_todo, 6)
			create_list(:inactive_todo, 4)
		end
		describe "WHEN no parametters are specified" do
			it "SHOULD retrive a list of unfiltered todos" do
				get :index, format: :json
				expect(response).to have_http_status(:success)
				asserted_json = json
				expect(asserted_json["todos"].length).to be == 10
			end
		end
		describe "WHEN parametter state is specified" do
			describe "AND is set to 'ACTIVE'" do
				it "SHOULD retrive a list of 'ACTIVE' todos" do
					get :index, state: "ACTIVE", format: :json
					expect(response).to have_http_status(:success)
					asserted_json = json
					expect(asserted_json["todos"].length).to be == 6
				end
			end
			describe "AND is set to 'INACTIVE'" do
				it "SHOULD retrive a list of 'INACTIVE' todos" do
					get :index, state: "INACTIVE", format: :json
					expect(response).to have_http_status(:success)
					asserted_json = json
					expect(asserted_json["todos"].length).to be == 4
				end
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
