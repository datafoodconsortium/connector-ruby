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

	attr_accessor :name
	attr_accessor :description
	attr_accessor :productType
	attr_accessor :quantity
	attr_accessor :alcoholPercentage
	attr_accessor :lifetime
	attr_accessor :claims
	attr_accessor :usageOrStorageConditions
	attr_accessor :allergenCharacteristics
	attr_accessor :nutrientCharacteristics
	attr_accessor :physicalCharacteristics
	attr_accessor :geographicalOrigin
	attr_accessor :catalogItems
	attr_accessor :certifications
	attr_accessor :natureOrigin
	attr_accessor :partOrigin

	def initialize(name, description)
		super()
		self.semanticType = "http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#DefinedProduct"
		self.name = name
		self.description = description
		self.productType = nil
		self.quantity = nil
		self.alcoholPercentage = nil
		self.lifetime = nil
		self.claims = []
		self.usageOrStorageConditions = nil
		self.allergenCharacteristics = []
		self.nutrientCharacteristics = []
		self.physicalCharacteristics = []
		self.geographicalOrigin = nil
		self.catalogItems = []
		self.certifications = []
		self.natureOrigin = []
		self.partOrigin = []
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#name") { self.name }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#description") { self.description }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasType") { self.productType }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasQuantity") { self.quantity }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#alcoholPercentage") { self.alcoholPercentage }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#lifetime") { self.lifetime }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasClaim") { self.claims }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#usageOrStorageCondition") { self.usageOrStorageConditions }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasAllergenCharacteristic") { self.allergenCharacteristics }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasNutrientCharacteristic") { self.nutrientCharacteristics }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasPhysicalCharacteristic") { self.physicalCharacteristics }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasGeographicalOrigin") { self.geographicalOrigin }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#referencedBy") { self.catalogItems }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasCertification") { self.certifications }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasNatureOrigin") { self.natureOrigin }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasPartOrigin") { self.partOrigin }
	end
	

	def addClaim(claim)
		self.claims.push(claim)
	end
	
	def removeClaim(claim)
		raise "Not implemented"
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
		raise "Not implemented"
	end
	
	def removeNutrientCharacteristic(nutrientCharacteristic)
		raise "Not implemented"
	end
	
	def removePhysicalCharacteristic(physicalCharacteristic)
		raise "Not implemented"
	end
	
	def removeNatureOrigin(natureOrigin)
		raise "Not implemented"
	end
	
	def removePartOrigin(partOrigin)
		raise "Not implemented"
	end
	
	def addCatalogItem(catalogItem)
		self.catalogItems.push(catalogItem)
	end
	
	def addCertification(certification)
		self.certifications.push(certification)
	end
	
	def removeCertification(certification)
		raise "Not implemented"
	end
	

end
