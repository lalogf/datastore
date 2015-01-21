class AnalisisMensual < ActiveRecord::Base
	belongs_to :paciente

	validates :hto, 
	presence: { message: "Incluir HTO"}
	validates :hb, 
	presence: { message: "Incluir HB"}

end
