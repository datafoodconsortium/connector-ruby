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

class DataFoodConsortium::Connector::ShippingOption
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:PickupOption".freeze

	# @return [String]
	attr_accessor :name

	# @return [String]
	attr_accessor :description

	# @return [Real]
	attr_accessor :fee

	# @return [IQuantity]
	attr_accessor :quantity

	# @return [IOrder]
	attr_accessor :order

	# @return [ISaleSession]
	attr_accessor :saleSession

	# @return [DateTime]
	attr_accessor :beginDate

	# @return [DateTime]
	attr_accessor :endDate

	# @param semanticId [String]
	# @param name [String]
	# @param description [String]
	# @param fee [Real]
	# @param quantity [IQuantity]
	# @param order [IOrder]
	# @param saleSession [ISaleSession]
	# @param beginDate [DateTime]
	# @param endDate [DateTime]
	def initialize(semanticId, name: nil, description: nil, fee: nil, quantity: nil, order: nil, saleSession: nil, beginDate: nil, endDate: nil)
		super(semanticId)
		@name = name
		@description = description
		@fee = fee
		@quantity = quantity
		@order = order
		@saleSession = saleSession
		@beginDate = beginDate
		@endDate = endDate
		self.semanticType = "dfc-b:PickupOption"
		registerSemanticProperty("dfc-b:name", &method("name")).valueSetter = method("name=")
		registerSemanticProperty("dfc-b:description", &method("description")).valueSetter = method("description=")
		registerSemanticProperty("dfc-b:fee", &method("fee")).valueSetter = method("fee=")
		registerSemanticProperty("dfc-b:hasQuantity", &method("quantity")).valueSetter = method("quantity=")
		registerSemanticProperty("dfc-b:selectedBy", &method("order")).valueSetter = method("order=")
		registerSemanticProperty("dfc-b:optionOf", &method("saleSession")).valueSetter = method("saleSession=")
		registerSemanticProperty("dfc-b:startDate", &method("beginDate")).valueSetter = method("beginDate=")
		registerSemanticProperty("dfc-b:endDate", &method("endDate")).valueSetter = method("endDate=")
	end
	


end
