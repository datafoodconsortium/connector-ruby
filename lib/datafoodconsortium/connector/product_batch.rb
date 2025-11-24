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

class DataFoodConsortium::Connector::ProductBatch
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:ProductBatch".freeze

	# @return [String]
	attr_accessor :name

	# @return [String]
	attr_accessor :description

	# @return [String]
	attr_accessor :batchNumber

	# @return [IRealStock]
	attr_accessor :realStock

	# @return [IPhysicalProduct]
	attr_accessor :physicalProduct

	# @return [DateTime]
	attr_accessor :bestBeforeDate

	# @return [DateTime]
	attr_accessor :expirationDate

	# @return [DateTime]
	attr_accessor :productionDate

	# @param semanticId [String]
	# @param name [String]
	# @param description [String]
	# @param batchNumber [String]
	# @param realStock [IRealStock]
	# @param physicalProduct [IPhysicalProduct]
	# @param bestBeforeDate [DateTime]
	# @param expirationDate [DateTime]
	# @param productionDate [DateTime]
	def initialize(semanticId, name: nil, description: nil, batchNumber: nil, realStock: nil, physicalProduct: nil, bestBeforeDate: nil, expirationDate: nil, productionDate: nil)
		super(semanticId)
		@name = name
		@description = description
		@batchNumber = batchNumber
		@realStock = realStock
		@physicalProduct = physicalProduct
		@bestBeforeDate = bestBeforeDate
		@expirationDate = expirationDate
		@productionDate = productionDate
		self.semanticType = "dfc-b:ProductBatch"
		registerSemanticProperty("dfc-b:name", &method("name")).valueSetter = method("name=")
		registerSemanticProperty("dfc-b:description", &method("description")).valueSetter = method("description=")
		registerSemanticProperty("dfc-b:batchNumber", &method("batchNumber")).valueSetter = method("batchNumber=")
		registerSemanticProperty("dfc-b:identifiedBy", &method("realStock")).valueSetter = method("realStock=")
		registerSemanticProperty("dfc-b:contains", &method("physicalProduct")).valueSetter = method("physicalProduct=")
		registerSemanticProperty("dfc-b:bestBeforeDate", &method("bestBeforeDate")).valueSetter = method("bestBeforeDate=")
		registerSemanticProperty("dfc-b:expirationDate", &method("expirationDate")).valueSetter = method("expirationDate=")
		registerSemanticProperty("dfc-b:productionDate", &method("productionDate")).valueSetter = method("productionDate=")
	end
	


end
