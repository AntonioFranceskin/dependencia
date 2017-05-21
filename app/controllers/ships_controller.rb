class ShipsController < ApplicationController
skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]

  def index
    if params.key?(:company_id)
      @company = Company.find_by(id: params[:company_id])
      @ships = if @company
                @company.ships
              else
                {Text: 'Company  Not Found'}
              end 
    else
      @ships = Ship.all
    end           
  end


	def edit
    	@ship  = Ship.find_by_id(params[:id])
   		if @ship.update(ship_params)
            render json: @ship 
    	else
      		render json: { text: 'bad request' }
    	end
	end

	def show
 		Ship.find_by_id(params[:id])? @ship  = Ship.find_by_id(params[:id]) : @ship = {Text: 'Ship  Not Found'}
	end

  def new
    create
  end

  def create
    @company = Company.find_by(id: params[:company_id])
    if @company
        @ship = Ship.new(ship_params)
        @ship.company_id = @company
        @ship.save
    else
        @ship = {Text: 'Record  Not Found'}
    end     
    render json: @ship 
  end

  def update
    @ship  = Ship.find_by_id(params[:id])
   	if @ship.update(ship_params)
        render json: @ship
    else
      	render json: { text: 'bad request' }
    end
  end
  
  def destroy
    @ship  = Ship.find_by_id(params[:id])
   	if @ship.destroy
        render json: @ship
    else
      	render json: { text: 'bad request' }
    end
  end

  private

  def ship_params
    params.permit(:id, :name, :imo, :status, :type_ship)
  end

end
