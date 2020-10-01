class CactiController < ApplicationController

    # Correct order is index, show, new, edit, create, update, destroy
    
    def index
        @cacti = Cactus.all
    end

    def show
        @cactus = Cactus.find(params[:id])
    end
    
    def new
        @cactus = Cactus.new
    end

    def edit
        @cactus = Cactus.find(params[:id])
    end

    def create
        @cactus = Cactus.new(cactus_params)
       
        @cactus.save
        redirect_to @cactus
    end

    def update
        @cactus = Cactus.find(params[:id])

        if @cactus.update(cactus_params)
            redirect_to @cactus
        else
            render 'edit'
        end
    end

    def destroy
        @cactus = Cactus.find(params[:id])
        @cactus.destroy
       
        render 'index'      
    end

    private
        def cactus_params
            params.require(:cactus).permit(:common_name, :genus, :species, :cultivar, :light_requirements, 
            :soil_requirements, :water_requirements, :fruit, :flower, :hardiness, :fertilizer, :propagation,
            :growth_rate, :max_size, :interesting_facts)
        end
end
