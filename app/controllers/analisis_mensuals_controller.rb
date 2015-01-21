class AnalisisMensualsController < ApplicationController
	before_filter :set_paciente, only:[:new, :edit]	
	before_action :authenticate_user!, except:[:index, :show] 
	
	
	def index
	end

	def show
		
	end

	def new
		@am = AnalisisMensual.new	
	end

	def create
		paciente = Paciente.friendly.find(params[:paciente_id])
		@analisis = AnalisisMensual.create(am_params.merge(paciente_id: paciente.id))
		
		
		if @analisis.save
			redirect_to paciente_analisis_mensuals_path
		else
			render new_paciente_analisis_mensual_path(paciente.id)
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
		params.require(:analisis_mensual).permit(:fecha, :hb,:hto, :peso_pre, :peso_post, :urea_pre, :urea_post, :tgp, :tgo, :urr, :ktv)		
	end
	def set_paciente
		@paciente = Paciente.find(params[:paciente_id])
	end
	# def hb_from_hto
	# 	params[:hb] = params[:hto].to_i / 3.0
	# end
end
