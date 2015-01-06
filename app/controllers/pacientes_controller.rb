class PacientesController < ApplicationController
	def index
		@pacientes = Paciente.all
	end
	
	def show
		
	end
	
	def new
		@paciente = Paciente.new
	end
	
	def create
		Paciente.create(paciente_params)
		redirect_to root_path		
	end

	private
	def paciente_params
		params.require(:paciente).permit(:primer_nombre,:segundo_nombre,:apellido_paterno,:apellido_materno,:nacimiento, :dni, :direccion, :distrito, :provincia, :departamento)	
	end
end
