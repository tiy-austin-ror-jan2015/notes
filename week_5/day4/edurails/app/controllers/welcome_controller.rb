class WelcomeController < ApplicationController
  before_action :set_company, only: [:show, :edit]

  # GET /companies
  # GET /companies.json
  def index
    if cookies[:company_id]
      @companies = Company.where(:id => cookies[:company_id])
    else
      @companies = Company.all
    end
  end

  def favorite_company
    cookies[:company_id] = params[:id]
    render plain: "OK"
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
    @companies = Company.all

  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name)
    end
end
