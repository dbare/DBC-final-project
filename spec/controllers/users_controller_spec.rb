require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	let(:email) { "b@b.com" }
	let(:first_name) { "b" }
	let(:dbc) { Company.create(name: "DBC", location: "SF", email: email ) }
	let(:user1) { User.create(first_name: first_name, last_name: "B", email: "BA@b.com", password: "password", company: dbc) }
	let(:user2) { User.create(first_name: first_name, last_name: "B", email: "BA@g.com", password: "password")}
	let(:user3) { User.create(first_name: "A", last_name: "B", email: "AA@g.com", password: "password")}


	describe "GET #index" do
		before { session[:user_id] = user1.id } 
		
		context "when a user is logged in" do
	    	it "responds with status code 200" do
	      		get :index
	      		expect(response).to have_http_status(200)
	   		end

	   		it "retrieves all users who are boots (no company_id)" do
	   			user1
	   			user2
	   			user3
	   			get :index
	   			expect(assigns(:boots).length).to eq 2
	   		end
	   	end
   	end

   	describe "POST #create" do
   		context "when a user is signing in" do
   			context 'when the user has a valid first name' do 
		   		it "redirects to the show page if a user is created" do
		   			token = Token.create(characters: "a")
		   			user = { user: { first_name: "b", last_name: "b", email: "a@a.com", password: "a", :unique_token => "a" } }
		   			post :create, user
		   			expect(response).to redirect_to "/users/#{User.last.id}"
		   		end
		   	end 

		   	context 'when a user does not have a valid first name' do 
		   		it "renders the new template if a user fails to be created" do
		   			token = Token.create(characters: "a")
		   			user = { user: { first_name: nil, last_name: "b", email: "a@a.com", password: "a", :unique_token => "a" } }
		   			post :create, user
		   			expect(response).to render_template "new"
		   		end
		   	end 
	   	end
   	end

   	describe "GET #show" do
   		before { session[:user_id] = user1.id } 

   		context "when a user is signed in" do
   			it "responds with status code 200" do
   				p user1
   				p "*" * 50
	      		get :show, id: user1.id
	      		expect(response).to have_http_status(200)
	   		end
   		end
   	end
end










