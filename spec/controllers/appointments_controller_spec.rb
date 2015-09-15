require 'rails_helper'

RSpec.describe AppointmentsController, :type => :controller do

	describe "GET index" do

		it "renders the index template" do
			get :index
			expect(response).to render_template("index")
		end
	end

	describe "Get new" do
		it "blocks unauthenticated access" do
			sign_in nil

			get :new

			response.should redirect_to(new_patient_session_path)
		end

		it "allows authenticated access" do
			sign_in

			get :new

			expect(response).to render_template("new")
		end
	end

end
