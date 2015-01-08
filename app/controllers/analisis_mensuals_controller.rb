class AnalisisMensualsController < ApplicationController
	before_filter :set_paciente, only:[:new, :edit]	
	
	
	def index
	end

	def show
		
	end

	def new
		@am = AnalisisMensual.new	
	end

	def create
		# 		Product.create(model: params[:model], case_image: new_file, user_id: params[:user_id])
		# redirect_to "/users/"+ params[:user_id] + "/preview"

		@analisis = AnalisisMensual.create(am_params.merge(paciente_id: params[:paciente_id]))
		
		# @analisis = AnalisisMensual.create(hto: params[:hto], paciente_id: params[:paciente_id])		
		if @analisis.save
			redirect_to paciente_analisis_mensuals_path
		else
			render new_paciente_analisis_mensual_path
		end
	end

	def edit
		
	end

	def update
		
	end

	def destroy
	end

	private
	def am_params
		params.require(:analisis_mensual).permit(:fecha, :hto, :peso_pre, :peso_post, :urea_pre, :urea_post, :tgp, :tgo)		
	end
	def set_paciente
		@paciente = Paciente.find(params[:paciente_id])
	end
end
