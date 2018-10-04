module DecorpotExtension
  DECORPOT_TITLE = 'Decorpot'
  WIKIHOUSE_MAC = true
  SKETCHUP_CONSOLE.show
  # Initialise the core commands.    
  #DECORPOT_SETTINGS = UI::Command.new('Settings...') {
  #  self.load_decorpot_settings
  #}
  #DECORPOT_SHAPES = UI::Command.new('Shapes...') {
  #  self.load_decorpot_shapes
  #}

  DECORPOT_DIMENSIONS = UI::Command.new('Get Dimensions'){
    self.download_pdf_dimensions
  }

  DECORPOT_CONFIGURATION = UI::Command.new('Standards'){
    self.decorpot_config
  }

  DECORPOT_BOUNDING = UI::Command.new('Bounding'){
    self.bounding_box
  }

  DECORPOT_COMPATTRIBUTE = UI::Command.new('Component Attribute'){
    self.comp_attribute
  }

  DECORPOT_HEIGHTCONFIG = UI::Command.new('Height Config'){
    self.height_config
  }

  DECORPOT_SERVER = UI::Command.new('Decorpot Server'){
    self.open_app
  }

  DECORPOT_DYNAMICCONFIG = UI::Command.new('Dynamic Configuration'){
    self.dynamic_configuration
  }

  # Register a new submenu of the standard Plugins menu with the commands.
  DECORPOT_MENU = UI.menu('Plugins').add_submenu(DECORPOT_TITLE)
  #DECORPOT_MENU.add_item(DECORPOT_COMPATTRIBUTE)
  #DECORPOT_MENU.add_item(DECORPOT_BOUNDING)
  #DECORPOT_MENU.add_item(DECORPOT_DIMENSIONS)
  #DECORPOT_MENU.add_item(DECORPOT_SERVER)
  #DECORPOT_MENU.add_item(DECORPOT_DYNAMICCONFIG)
  DECORPOT_MENU.add_item(DECORPOT_CONFIGURATION)
  #DECORPOT_MENU.add_item(DECORPOT_HEIGHTCONFIG)
end # module