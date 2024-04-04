# MIT License
# 
# Copyright (c) 2023 Maxime Lecoq <maxime@lecoqlibre.fr>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.








require "virtual_assembly/semantizer"

class DataFoodConsortium::Connector::DefinedProduct
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:DefinedProduct".freeze

	# @return [String]
	attr_accessor :name

	# @return [String]
	attr_accessor :description

	# @return [ISKOSConcept]
	attr_accessor :productType

	# @return [IQuantity]
	attr_accessor :quantity

	# @return [Real]
	attr_accessor :alcoholPercentage

	# @return [String]
	attr_accessor :lifetime

	# @return [ISKOSConcept]
	attr_accessor :claims

	# @return [String]
	attr_accessor :usageOrStorageConditions

	# @return [IAllergenCharacteristic]
	attr_accessor :allergenCharacteristics

	# @return [INutrientCharacteristic]
	attr_accessor :nutrientCharacteristics

	# @return [IPhysicalCharacteristic]
	attr_accessor :physicalCharacteristics

	# @return [ISKOSConcept]
	attr_accessor :geographicalOrigin

	# @return [ICatalogItem]
	attr_accessor :catalogItems

	# @return [ISKOSConcept]
	attr_accessor :certifications

	# @return [ISKOSConcept]
	attr_accessor :natureOrigin

	# @return [ISKOSConcept]
	attr_accessor :partOrigin

	# @return [String]
	attr_accessor :images

	# @param semanticId [String]
	# @param name [String]
	# @param description [String]
	# @param productType [ISKOSConcept]
	# @param quantity [IQuantity]
	# @param alcoholPercentage [Real]
	# @param lifetime [String]
	# @param claims [ISKOSConcept]
	# @param usageOrStorageConditions [String]
	# @param allergenCharacteristics [IAllergenCharacteristic]
	# @param nutrientCharacteristics [INutrientCharacteristic]
	# @param physicalCharacteristics [IPhysicalCharacteristic]
	# @param geographicalOrigin [ISKOSConcept]
	# @param catalogItems [ICatalogItem]
	# @param certifications [ISKOSConcept]
	# @param natureOrigin [ISKOSConcept]
	# @param partOrigin [ISKOSConcept]
	# @param images [String]
	def initialize(semanticId, name: "", description: "", productType: nil, quantity: nil, alcoholPercentage: 0.0, lifetime: "", claims: [], usageOrStorageConditions: "", allergenCharacteristics: [], nutrientCharacteristics: [], physicalCharacteristics: [], geographicalOrigin: nil, catalogItems: [], certifications: [], natureOrigin: [], partOrigin: [], images: [])
		super(semanticId)
		@name = name
		@description = description
		@productType = productType
		@quantity = quantity
		@alcoholPercentage = alcoholPercentage
		@lifetime = lifetime
		@claims = claims
		@usageOrStorageConditions = usageOrStorageConditions
		@allergenCharacteristics = allergenCharacteristics
		@nutrientCharacteristics = nutrientCharacteristics
		@physicalCharacteristics = physicalCharacteristics
		@geographicalOrigin = geographicalOrigin
		@catalogItems = catalogItems
		@certifications = certifications
		@natureOrigin = natureOrigin
		@partOrigin = partOrigin
		@images = images
		self.semanticType = "dfc-b:DefinedProduct"
		registerSemanticProperty("dfc-b:name", &method("name")).valueSetter = method("name=")
		registerSemanticProperty("dfc-b:description", &method("description")).valueSetter = method("description=")
		registerSemanticProperty("dfc-b:hasType", &method("productType")).valueSetter = method("productType=")
		registerSemanticProperty("dfc-b:hasQuantity", &method("quantity")).valueSetter = method("quantity=")
		registerSemanticProperty("dfc-b:alcoholPercentage", &method("alcoholPercentage")).valueSetter = method("alcoholPercentage=")
		registerSemanticProperty("dfc-b:lifetime", &method("lifetime")).valueSetter = method("lifetime=")
		registerSemanticProperty("dfc-b:hasClaim", &method("claims")).valueSetter = method("claims=")
		registerSemanticProperty("dfc-b:usageOrStorageCondition", &method("usageOrStorageConditions")).valueSetter = method("usageOrStorageConditions=")
		registerSemanticProperty("dfc-b:hasAllergenCharacteristic", &method("allergenCharacteristics")).valueSetter = method("allergenCharacteristics=")
		registerSemanticProperty("dfc-b:hasNutrientCharacteristic", &method("nutrientCharacteristics")).valueSetter = method("nutrientCharacteristics=")
		registerSemanticProperty("dfc-b:hasPhysicalCharacteristic", &method("physicalCharacteristics")).valueSetter = method("physicalCharacteristics=")
		registerSemanticProperty("dfc-b:hasGeographicalOrigin", &method("geographicalOrigin")).valueSetter = method("geographicalOrigin=")
		registerSemanticProperty("dfc-b:referencedBy", &method("catalogItems")).valueSetter = method("catalogItems=")
		registerSemanticProperty("dfc-b:hasCertification", &method("certifications")).valueSetter = method("certifications=")
		registerSemanticProperty("dfc-b:hasNatureOrigin", &method("natureOrigin")).valueSetter = method("natureOrigin=")
		registerSemanticProperty("dfc-b:hasPartOrigin", &method("partOrigin")).valueSetter = method("partOrigin=")
		registerSemanticProperty("dfc-b:image", &method("images")).valueSetter = method("images=")
	end
	


end
