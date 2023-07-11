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

	# @return [IProductType]
	attr_accessor :productType

	# @return [Quantifiable]
	attr_accessor :quantity

	# @return [Real]
	attr_accessor :alcoholPercentage

	# @return [String]
	attr_accessor :lifetime

	# @return [Claimable]
	attr_accessor :claims

	# @return [String]
	attr_accessor :usageOrStorageConditions

	# @return [IAllergenCharacteristic]
	attr_accessor :allergenCharacteristics

	# @return [INutrientCharacteristic]
	attr_accessor :nutrientCharacteristics

	# @return [IPhysicalCharacteristic]
	attr_accessor :physicalCharacteristics

	# @return [IGeographicalOrigin]
	attr_accessor :geographicalOrigin

	# @return [ICatalogItem]
	attr_accessor :catalogItems

	# @return [ICertification]
	attr_accessor :certifications

	# @return [INatureOrigin]
	attr_accessor :natureOrigin

	# @return [IPartOrigin]
	attr_accessor :partOrigin

	# @param semanticId [String]
	# @param name [String]
	# @param description [String]
	# @param productType [IProductType]
	# @param quantity [Quantifiable]
	# @param alcoholPercentage [Real]
	# @param lifetime [String]
	# @param claims [Claimable]
	# @param usageOrStorageConditions [String]
	# @param allergenCharacteristics [IAllergenCharacteristic]
	# @param nutrientCharacteristics [INutrientCharacteristic]
	# @param physicalCharacteristics [IPhysicalCharacteristic]
	# @param geographicalOrigin [IGeographicalOrigin]
	# @param catalogItems [ICatalogItem]
	# @param certifications [ICertification]
	# @param natureOrigin [INatureOrigin]
	# @param partOrigin [IPartOrigin]
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
		self.semanticType = "https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#DefinedProduct"
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#name") { self.name }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#description") { self.description }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#hasType") { self.productType }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#hasQuantity") { self.quantity }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#alcoholPercentage") { self.alcoholPercentage }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#lifetime") { self.lifetime }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#hasClaim") { self.claims }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#usageOrStorageCondition") { self.usageOrStorageConditions }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#hasAllergenCharacteristic") { self.allergenCharacteristics }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#hasNutrientCharacteristic") { self.nutrientCharacteristics }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#hasPhysicalCharacteristic") { self.physicalCharacteristics }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#hasGeographicalOrigin") { self.geographicalOrigin }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#referencedBy") { self.catalogItems }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#hasCertification") { self.certifications }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#hasNatureOrigin") { self.natureOrigin }
		registerSemanticProperty("https://github.com/datafoodconsortium/ontology/releases/latest/download/DFC_BusinessOntology.owl#hasPartOrigin") { self.partOrigin }
	end
	

	
	def addClaim(claim)
		self.claims.push(claim)
	end
	
	
	def removeClaim(claim)
		raise "Not yet implemented."
	end
	
	
	def addAllergenCharacteristic(allergenCharacteristic)
		self.allergenCharacteristics.push(allergenCharacteristic)
	end
	
	
	def addNutrientCharacteristic(nutrientCharacteristic)
		self.nutrientCharacteristics.push(nutrientCharacteristic)
	end
	
	
	def addPhysicalCharacteristic(physicalCharacteristic)
		self.physicalCharacteristics.push(physicalCharacteristic)
	end
	
	
	def addNatureOrigin(natureOrigin)
		self.natureOrigin.push(natureOrigin)
	end
	
	
	def addPartOrigin(partOrigin)
		self.partOrigin.push(partOrigin)
	end
	
	
	def removeAllergenCharacteristic(allergenCharacteristic)
		raise "Not yet implemented."
	end
	
	
	def removeNutrientCharacteristic(nutrientCharacteristic)
		raise "Not yet implemented."
	end
	
	
	def removePhysicalCharacteristic(physicalCharacteristic)
		raise "Not yet implemented."
	end
	
	
	def removeNatureOrigin(natureOrigin)
		raise "Not yet implemented."
	end
	
	
	def removePartOrigin(partOrigin)
		raise "Not yet implemented."
	end
	
	
	def addCatalogItem(catalogItem)
		self.catalogItems.push(catalogItem)
	end
	
	
	def addCertification(certification)
		self.certifications.push(certification)
	end
	
	
	def removeCertification(certification)
		raise "Not yet implemented."
	end
	

end
