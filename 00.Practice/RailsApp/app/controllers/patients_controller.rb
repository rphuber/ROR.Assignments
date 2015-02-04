class PatientsController < ApplicationController
  
  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create accepted_params
    redirect_to(root_path)
  end

  private
    def accepted_params
      params.require(:patient).permit(
              :first_name, 
              :last_name
      )
    end

end
