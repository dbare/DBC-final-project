require 'rails_helper'

RSpec.describe CompaniesController, type: :controller do

	let(:dbc) { Company.create(name: "DBC", location: "SF", email: "R@n.com" ) }

	let(:user1) { User.create(first_name: "b", last_name: "B", email: "BA@b.com", password: "password", company: dbc) }
	let(:user2) { User.create(first_name: first_name, last_name: "B", email: "BA@g.com", password: "password")}


	describe "GET #index" do
		before { session[:user_id] = user1.id } 
		
		context "when a user is logged in" do
	    	it "responds with status code 200" do
	      		get :index
	      		expect(response).to have_http_status(200)
	   		end
		end
	end

	describe "GET #new" do
		context "when a user is logged in without proper admin_status" do
			it "responds with status code 200" do
	      		get :new
	      		expect(response).to have_http_status(302)
	   		end
	   	end
   	end

   	describe "POST #create" do
   		context "when a user with admin status is logged in" do
   			it "creates a new company" do
   				company = {company: { name: "DBC", location: "SF", email: "c@c.com" } }
   				post :create
   				expect(response).to redirect_to root_path
   			end
   		end

   		context "when a user with admin status is logged in" do
   			it "creates a new company" do
   				company = {company: { name: "DBC", location: "SF", email: "c@c.com" } }
   				post :create
   				expect(response).to redirect_to root_path
   			end
   		end
   	end
end