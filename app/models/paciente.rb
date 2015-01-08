class Paciente < ActiveRecord::Base

	has_many :analisismensuales

	validates :primer_nombre, 
		presence: { message: "Nombre inválido"}
	validates :apellido_paterno, 
		presence: { message: "Apellido paterno inválido"}
	validates :apellido_materno, 
	presence: {message: "Apellido materno inválido"}
	validates :dni, 
		presence: {message: "Este campo no puede quedar vacío"}, 
		uniqueness: { case_sensitive: true }, 
		length: {is: 8, message: "Debe tener 8 digitos"} 
	validates :email,
		confirmation: {message: "El email no coincide"},
		format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email_confirmation, 
		presence: {message: "Por favor confirmar el email"}, if: "email?"	
		
end
