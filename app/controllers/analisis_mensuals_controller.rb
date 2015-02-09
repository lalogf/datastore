class AnalisisMensualsController < ApplicationController
	before_filter :set_paciente, only:[:new, :create, :edit]	
	before_action :authenticate_user!, except:[:index, :show] 
	
	
	def index
	end

	def show
		
	end

	def new
		@am = AnalisisMensual.new	
	end

	def create
		paci = Paciente.friendly.find(params[:paciente_id])
		@analisis = AnalisisMensual.create(am_params.merge(paciente_id: paci.id))
		
		
		if @analisis.save
			flash[:notice] = "Análisis creado exitosamente"
			redirect_to paciente_path(paci.slug)
		else
			render new_paciente_analisis_mensual_path(paci.slug)
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
		@paciente = Paciente.friendly.find(params[:paciente_id])
	end
end
