var/list/nuclear_reactions

/decl/nuclear_reaction
	var/substance = ""
	var/required_rads = 0
	var/heat_production = 0
	var/radiation = 0
	var/list/products = list()





/decl/nuclear_reaction/U235_chain
	substance = "U235"
	required_rads = 10
	heat_production = 10
	radiation = 30
	products = list("radwaste" = 0.5, "nuclear_waste" = 0.5)

/decl/nuclear_reaction/U235_decay
	substance = "U235"
	required_rads = 0
	heat_production = 1
	radiation = 1
	products = list("radwaste" = 0.05, "nuclear_waste" = 0.95)

/decl/nuclear_reaction/radwaste_decay
	substance = "radwaste"
	required_rads = 0
	heat_production = 1
	radiation = 2
	products = list("nuclear_waste" = 1)

/decl/nuclear_reaction/Pu239_chain
	substance = "Pu239"
	required_rads = 15
	heat_production = 12
	radiation = 25
	products = list("radwaste" = 0.6, "nuclear_waste" = 0.4)

/decl/nuclear_reaction/Pu239_Decay
	substance = "Pu239"
	required_rads = 0
	heat_production = 1
	radiation = 3
	products = list("radwaste" = 0.7, "nuclear_waste" = 0.3)

/decl/nuclear_reaction/U238_breed
	substance = "U238"
	required_rads = 50
	heat_production = 2
	radiation = 5
	products = list("radwaste" = 0.25, "Pu239" = 0.05,  "nuclear_waste" = 0.7 )

/decl/nuclear_reaction/Th232_breed
	substance = "Th232"
	required_rads = 10
	heat_production = 1
	radiation = 1
	products = list("Th233" = 0.5, "nuclear_waste" = 0.5 )



/decl/nuclear_reaction/Th233_decay
	substance = "Th233"
	required_rads = 0
	heat_production = 1
	radiation = 1
	products = list("radwaste" = 0.5, "nuclear_waste" = 0.5 )


/decl/nuclear_reaction/Th233_chain
	substance = "Th233"
	required_rads = 30
	heat_production = 6
	radiation = 4
	products = list("radwaste" = 0.3, "nuclear_waste" = 0.6, "U235" = 0.1)

/decl/nuclear_reaction/Sr90_Decay
	substance = "Sr90"
	required_rads = 0
	heat_production = 5
	radiation = 1
	products = list("radwaste" = 0.1, "nuclear_waste" = 0.9)