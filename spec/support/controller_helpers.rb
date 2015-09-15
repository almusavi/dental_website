  module ControllerHelpers
  	def sign_in(patient = double('patient'))
  		if patient.nil?
  			allow(request.env['warden']).to receive(:authenticate!).and_throw(:warden, {:scope => :patient})
  			allow(controller).to receive(:current_patient).and_return(nil)
  		else
  			allow(request.env['warden']).to receive(:authenticate!).and_return(patient)
  			allow(controller).to receive(:current_patient).and_return(patient)
  		end
  	end
  end

  RSpec.configure do |config|
  	config.include Devise::TestHelpers, :type => :controller
  	config.include ControllerHelpers, :type => :controller
  end