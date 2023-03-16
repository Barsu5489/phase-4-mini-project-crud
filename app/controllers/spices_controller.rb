class SpicesController < ApplicationController
    # Get /spices
    def index 
        spices = Spice.all
        render json: spices
    end

    # GET /spices/:id
   def show
  spice = Spice.find(params[:id])
  render json: spice
rescue ActiveRecord::RecordNotFound
  render json: { error: "Spice not found" }, status: :not_found
end
     def create 
        spices = Spice.create(spice_params)
        if spices
            render json: spices, status: :created
        end
       
     end
     def update 
        spices = Spice.find_by(id: params[:id])
        if spices 
            spices.update(spice_params)
            render json: spices
        end
     end
     def destroy 
        spices  = Spice.find_by(id: params[:id])
        if spices
            spices.destroy
        end
     end

     private
     def spice_params 
        params.permit(:title, :name, :image, :description, :notes, :rating)
     end
end
