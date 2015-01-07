class Paciente < ActiveRecord::Base

	validates :primer_nombre, presence: true
	validates :apellido_paterno, presence: true
	validates :apellido_materno, presence: true
	validates :dni, presence: true, uniqueness: { case_sensitive: true }, length: {is: 8}, on: :create

end
