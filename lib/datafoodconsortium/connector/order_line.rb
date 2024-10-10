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

class DataFoodConsortium::Connector::OrderLine
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:OrderLine".freeze

	# @return [String]
	attr_accessor :description

	# @return [Real]
	attr_accessor :quantity

	# @return [IPrice]
	attr_accessor :price

	# @return [IOffer]
	attr_accessor :offer

	# @return [IOrder]
	attr_accessor :order

	# @param semanticId [String]
	# @param description [String]
	# @param quantity [Real]
	# @param price [IPrice]
	# @param offer [IOffer]
	# @param order [IOrder]
	def initialize(semanticId, description: nil, quantity: nil, price: nil, offer: nil, order: nil)
		super(semanticId)
		@description = description
		@quantity = quantity
		@price = price
		@offer = offer
		@order = order
		self.semanticType = "dfc-b:OrderLine"
		registerSemanticProperty("dfc-b:description", &method("description")).valueSetter = method("description=")
		registerSemanticProperty("dfc-b:quantity", &method("quantity")).valueSetter = method("quantity=")
		registerSemanticProperty("dfc-b:hasPrice", &method("price")).valueSetter = method("price=")
		registerSemanticProperty("dfc-b:concerns", &method("offer")).valueSetter = method("offer=")
		registerSemanticProperty("dfc-b:partOf", &method("order")).valueSetter = method("order=")
	end
	


end
