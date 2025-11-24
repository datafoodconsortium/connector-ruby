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

class DataFoodConsortium::Connector::RealStock
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:RealStock".freeze

	# @return [IPhysicalProduct]
	attr_accessor :physicalProduct

	# @return [IQuantity]
	attr_accessor :quantity

	# @return [IPhysicalPlace]
	attr_accessor :physicalPlace

	# @return [DateTime]
	attr_accessor :availabilityDate

	# @return [IProductBatch]
	attr_accessor :productBatches

	# @param semanticId [String]
	# @param physicalProduct [IPhysicalProduct]
	# @param quantity [IQuantity]
	# @param physicalPlace [IPhysicalPlace]
	# @param availabilityDate [DateTime]
	# @param productBatches [IProductBatch]
	def initialize(semanticId, physicalProduct: nil, quantity: nil, physicalPlace: nil, availabilityDate: nil, productBatches: [])
		super(semanticId)
		@physicalProduct = physicalProduct
		@quantity = quantity
		@physicalPlace = physicalPlace
		@availabilityDate = availabilityDate
		@productBatches = productBatches
		self.semanticType = "dfc-b:RealStock"
		registerSemanticProperty("dfc-b:constitutes", &method("physicalProduct")).valueSetter = method("physicalProduct=")
		registerSemanticProperty("dfc-b:hasQuantity", &method("quantity")).valueSetter = method("quantity=")
		registerSemanticProperty("dfc-b:isStoredIn", &method("physicalPlace")).valueSetter = method("physicalPlace=")
		registerSemanticProperty("dfc-b:availabilityDate", &method("availabilityDate")).valueSetter = method("availabilityDate=")
		registerSemanticProperty("dfc-b:identifies", &method("productBatches")).valueSetter = method("productBatches=")
	end
	


end
