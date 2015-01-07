class AnalisisMensualesController < ApplicationController
	
	def index
	end

	def show
		
	end

	def new
		@am = AnalisisMensual.new	
	end

	def create
		@am = AnalisisMensual.create(am_params).join(params[:id])
	end

	def edit
		
	end

	def update
		
	end

	def destroy
	end

	private
	def am_params
		params.require(:analisismensual).permit(:hto, :hb, :peso_pre, :peso_post, :urea_pre, :urea_post, :urr, :ktv, :tgp, :tgo, :month)		
	end


end
