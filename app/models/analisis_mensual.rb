class AnalisisMensual < ActiveRecord::Base
	belongs_to :paciente

	

 
	validates :hto, 
	presence: { message: "Incluir HTO"}
	validates :hb, 
	presence: { message: "Incluir HB"}


	validate :fecha_cannot_be_in_the_future,

	def fecha_cannot_be_in_the_future
		if fecha > Date.today
			errors.add(:fecha, "can't be in the future")
		end
	end

end
