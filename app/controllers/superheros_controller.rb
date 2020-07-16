class SuperherosController < ApplicationController
    before_action :set_superhero, only: [:show, :edit, :update, :destroy]

    def index
        @superheros = Superhero.all
        render 'index'
    end

    def show
        render 'show'
    end

    def new
        @superhero = Superhero.new(flash[:superhero])
        render 'new'
    end

    def create
        # @superhero = Superhero.create(strong_params)
        # if @superhero.valid?
        #     redirect_to @superhero
        # end
        @superhero = Superhero.new(strong_params)
        if @superhero.save
            redirect_to @superhero
        else
            flash[:superhero] = strong_params
            flash[:errors] = @superhero.errors.full_messages
            redirect_to new_superhero_path
        end
    end

    def edit
        render 'edit'
    end

    def update
        @superhero.update(strong_params)
        if @superhero.valid?
            redirect_to @superhero
        else
            flash[:errors] = @superhero.errors.full_messages
            redirect_to edit_superhero_path(@superhero)
        end
    end

    def destroy
        @superhero.destroy
        redirect_to superheros_path
    end


    private

    def set_superhero
        @superhero = Superhero.find(params[:id])
    end

    def strong_params
        params.require(:superhero).permit(:name, :power, :weakness, :power_level, :good, :team_id)
    end

end
