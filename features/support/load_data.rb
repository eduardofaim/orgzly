require 'faker'
require 'calabash-android/operations'


module LoadData
	class DadosNota
		def registro_nota 
			return {:title => Faker::GameOfThrones.character}
		end
	end
end