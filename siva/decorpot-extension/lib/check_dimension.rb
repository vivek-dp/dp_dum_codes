module DecorpotExtension
	def check_linear_dimension
		@model = Sketchup.active_model
		@entity = @model.entities
		@selection = @model.selection
		@selection.each {|sel|
			puts "-------12121",sel.class
		}
	end
end