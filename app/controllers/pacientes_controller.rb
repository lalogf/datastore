class PacientesController < ApplicationController

	before_action :set_paciente, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@q = Paciente.search(params[:q])
		@pacientes = @q.result.paginate(:page => params[:page], :per_page => 5).order('apellido_paterno ASC')

	end
	
	def show
	end
	
	def new
		@paciente = Paciente.new
	end
	
	def create
		@paciente = Paciente.create(paciente_params)
		if @paciente.save
			flash[:success] = "You have create an account!"
			redirect_to root_path
		else
			render new_paciente_path
		end

	end

	def edit
	end

	def update
		@paciente.update(paciente_params)
		redirect_to paciente_path(params[:id])
		
	end

	def destroy
		@paciente.destroy
		redirect_to root_path
	end

	private
	def paciente_params
		params.require(:paciente).permit(:primer_nombre,:segundo_nombre,:apellido_paterno,:apellido_materno,:nacimiento, :dni, :direccion, :distrito, :provincia, :departamento, :email, :email_confirmation)	
	end
	def set_paciente
		@paciente = Paciente.friendly.find(params[:id])
	end
end
