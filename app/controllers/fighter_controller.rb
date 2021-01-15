class FighterController < ApplicationController
    def new 
    end
    def create
        render plain: params[:fighter].inspect
    end
end
