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

require "datafoodconsortium/connector/defined_product"


require "virtual_assembly/semantizer"

class DataFoodConsortium::Connector::TechnicalProduct < DataFoodConsortium::Connector::DefinedProduct

    SEMANTIC_TYPE = "dfc-b:TechnicalProduct".freeze


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
	def initialize(semanticId, name: nil, description: nil, productType: nil, quantity: nil, alcoholPercentage: nil, lifetime: nil, claims: [], usageOrStorageConditions: nil, allergenCharacteristics: [], nutrientCharacteristics: [], physicalCharacteristics: [], geographicalOrigin: nil, catalogItems: [], certifications: [], natureOrigin: [], partOrigin: [], images: [])
		super(semanticId, name: name, description: description, productType: productType, quantity: quantity, alcoholPercentage: alcoholPercentage, lifetime: lifetime, claims: claims, usageOrStorageConditions: usageOrStorageConditions, allergenCharacteristics: allergenCharacteristics, nutrientCharacteristics: nutrientCharacteristics, physicalCharacteristics: physicalCharacteristics, geographicalOrigin: geographicalOrigin, catalogItems: catalogItems, certifications: certifications, natureOrigin: natureOrigin, partOrigin: partOrigin, images: images)
		
		self.semanticType = "dfc-b:TechnicalProduct"
		
	end
	


end
