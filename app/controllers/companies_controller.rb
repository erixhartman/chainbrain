class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.build(company_params)

    if @company.save
      redirect_to locations_path, notice: "Company created"
    else
      redirect_to root_path
    end
  end

private
 def picture_params
   params.require(:company).permit(:name)
 end

end
