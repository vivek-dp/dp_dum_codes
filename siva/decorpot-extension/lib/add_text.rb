module DecorpotExtension
	def self.sketchup_add_text
		@model = Sketchup.active_model
		@selection = @model.selection
		if @selection.length != 0
			dialog = UI::WebDialog.new("#{DECORPOT_TITLE} - Add Lamination", true, "#{DECORPOT_TITLE}-Add Lamination", 400, 400, 150, 150, true)
			dialog.add_action_callback("get_laminatevalues") { |d, args|
				@value = args.split(",")
				@selection.each {|sel|
					textval = @value[0]
					#point = Geom::Point3d.new
					#vector = Geom::Vector3d.new
					#puts point, vector
					upval = sel.entities.add_text textval, [0.5, 0.5, 0.5], [2, 0.2, 0.2]
					upval.material = "red"
				}
			}

			html_path = File.join(WEBDIALOG_PATH, 'add_text.html')
			dialog.set_file(html_path)
			if WIKIHOUSE_MAC
				dialog.show_modal
			else
				dialog.show
			end
		else
			UI.messagebox "No Component Selected!", MB_OK
		end
	end
end