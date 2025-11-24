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

class DataFoodConsortium::Connector::LocalizedProduct
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:LocalizedProduct".freeze

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
	attr_accessor :theoreticalStocks

	# @return [ISuppliedProduct]
	attr_accessor :suppliedProducts

	# @return [IPhysicalProduct]
	attr_accessor :physicalProducts

	# @return [IPlannedLocalProductionFlow]
	attr_accessor :plannedLocalProductionFlows

	# @return [IPlannedLocalConsumptionFlow]
	attr_accessor :plannedLocalConsumptionFlows

	# @param semanticId [String]
	# @param name [String]
	# @param description [String]
	# @param images [String]
	# @param quantity [IQuantity]
	# @param cost [Real]
	# @param theoreticalStocks [Real]
	# @param suppliedProducts [ISuppliedProduct]
	# @param physicalProducts [IPhysicalProduct]
	# @param plannedLocalProductionFlows [IPlannedLocalProductionFlow]
	# @param plannedLocalConsumptionFlows [IPlannedLocalConsumptionFlow]
	def initialize(semanticId, name: nil, description: nil, images: [], quantity: nil, cost: nil, theoreticalStocks: [], suppliedProducts: [], physicalProducts: [], plannedLocalProductionFlows: [], plannedLocalConsumptionFlows: [])
		super(semanticId)
		@name = name
		@description = description
		@images = images
		@quantity = quantity
		@cost = cost
		@theoreticalStocks = theoreticalStocks
		@suppliedProducts = suppliedProducts
		@physicalProducts = physicalProducts
		@plannedLocalProductionFlows = plannedLocalProductionFlows
		@plannedLocalConsumptionFlows = plannedLocalConsumptionFlows
		self.semanticType = "dfc-b:LocalizedProduct"
		registerSemanticProperty("dfc-b:name", &method("name")).valueSetter = method("name=")
		registerSemanticProperty("dfc-b:description", &method("description")).valueSetter = method("description=")
		registerSemanticProperty("dfc-b:image", &method("images")).valueSetter = method("images=")
		registerSemanticProperty("dfc-b:hasQuantity", &method("quantity")).valueSetter = method("quantity=")
		registerSemanticProperty("dfc-b:cost", &method("cost")).valueSetter = method("cost=")
		registerSemanticProperty("dfc-b:constituedBy", &method("theoreticalStocks")).valueSetter = method("theoreticalStocks=")
		registerSemanticProperty("dfc-b:hasReference", &method("suppliedProducts")).valueSetter = method("suppliedProducts=")
		registerSemanticProperty("dfc-b:representedBy", &method("physicalProducts")).valueSetter = method("physicalProducts=")
		registerSemanticProperty("dfc-b:producedBy", &method("plannedLocalProductionFlows")).valueSetter = method("plannedLocalProductionFlows=")
		registerSemanticProperty("dfc-b:consumedBy", &method("plannedLocalConsumptionFlows")).valueSetter = method("plannedLocalConsumptionFlows=")
	end
	


end
