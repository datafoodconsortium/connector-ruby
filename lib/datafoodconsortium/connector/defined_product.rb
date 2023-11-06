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
	def initialize(semanticId, name: "", description: "", productType: nil, quantity: nil, alcoholPercentage: 0.0, lifetime: "", claims: [], usageOrStorageConditions: "", allergenCharacteristics: [], nutrientCharacteristics: [], physicalCharacteristics: [], geographicalOrigin: nil, catalogItems: [], certifications: [], natureOrigin: [], partOrigin: [])
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
		self.semanticType = "dfc-b:DefinedProduct"
		registerSemanticProperty("dfc-b:name") { self.name }
		registerSemanticProperty("dfc-b:description") { self.description }
		registerSemanticProperty("dfc-b:hasType") { self.productType }
		registerSemanticProperty("dfc-b:hasQuantity") { self.quantity }
		registerSemanticProperty("dfc-b:alcoholPercentage") { self.alcoholPercentage }
		registerSemanticProperty("dfc-b:lifetime") { self.lifetime }
		registerSemanticProperty("dfc-b:hasClaim") { self.claims }
		registerSemanticProperty("dfc-b:usageOrStorageCondition") { self.usageOrStorageConditions }
		registerSemanticProperty("dfc-b:hasAllergenCharacteristic") { self.allergenCharacteristics }
		registerSemanticProperty("dfc-b:hasNutrientCharacteristic") { self.nutrientCharacteristics }
		registerSemanticProperty("dfc-b:hasPhysicalCharacteristic") { self.physicalCharacteristics }
		registerSemanticProperty("dfc-b:hasGeographicalOrigin") { self.geographicalOrigin }
		registerSemanticProperty("dfc-b:referencedBy") { self.catalogItems }
		registerSemanticProperty("dfc-b:hasCertification") { self.certifications }
		registerSemanticProperty("dfc-b:hasNatureOrigin") { self.natureOrigin }
		registerSemanticProperty("dfc-b:hasPartOrigin") { self.partOrigin }
	end
	


end
