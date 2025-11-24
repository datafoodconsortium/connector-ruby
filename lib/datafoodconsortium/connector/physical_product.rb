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

class DataFoodConsortium::Connector::PhysicalProduct
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:PhysicalProduct".freeze

	# @return [String]
	attr_accessor :name

	# @return [String]
	attr_accessor :description

	# @return [String]
	attr_accessor :images

	# @return [IQuantity]
	attr_accessor :quantity

	# @return [Real]
	attr_accessor :cost

	# @return [Real]
	attr_accessor :realStocks

	# @return [ILocalizedProduct]
	attr_accessor :localizedProducts

	# @return [IProductBatch]
	attr_accessor :productBatches

	# @return [IRealizedProductionFlow]
	attr_accessor :realizedProductionFlows

	# @return [IRealizedConsumptionFlow]
	attr_accessor :realizedConsumptionFlows

	# @param semanticId [String]
	# @param name [String]
	# @param description [String]
	# @param images [String]
	# @param quantity [IQuantity]
	# @param cost [Real]
	# @param realStocks [Real]
	# @param localizedProducts [ILocalizedProduct]
	# @param productBatches [IProductBatch]
	# @param realizedProductionFlows [IRealizedProductionFlow]
	# @param realizedConsumptionFlows [IRealizedConsumptionFlow]
	def initialize(semanticId, name: nil, description: nil, images: [], quantity: nil, cost: nil, realStocks: [], localizedProducts: [], productBatches: [], realizedProductionFlows: [], realizedConsumptionFlows: [])
		super(semanticId)
		@name = name
		@description = description
		@images = images
		@quantity = quantity
		@cost = cost
		@realStocks = realStocks
		@localizedProducts = localizedProducts
		@productBatches = productBatches
		@realizedProductionFlows = realizedProductionFlows
		@realizedConsumptionFlows = realizedConsumptionFlows
		self.semanticType = "dfc-b:PhysicalProduct"
		registerSemanticProperty("dfc-b:name", &method("name")).valueSetter = method("name=")
		registerSemanticProperty("dfc-b:description", &method("description")).valueSetter = method("description=")
		registerSemanticProperty("dfc-b:image", &method("images")).valueSetter = method("images=")
		registerSemanticProperty("dfc-b:hasQuantity", &method("quantity")).valueSetter = method("quantity=")
		registerSemanticProperty("dfc-b:cost", &method("cost")).valueSetter = method("cost=")
		registerSemanticProperty("dfc-b:constituedBy", &method("realStocks")).valueSetter = method("realStocks=")
		registerSemanticProperty("dfc-b:represents", &method("localizedProducts")).valueSetter = method("localizedProducts=")
		registerSemanticProperty("dfc-b:tracedBy", &method("productBatches")).valueSetter = method("productBatches=")
		registerSemanticProperty("dfc-b:producedBy", &method("realizedProductionFlows")).valueSetter = method("realizedProductionFlows=")
		registerSemanticProperty("dfc-b:consumedBy", &method("realizedConsumptionFlows")).valueSetter = method("realizedConsumptionFlows=")
	end
	


end
