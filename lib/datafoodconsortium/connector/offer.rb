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

class DataFoodConsortium::Connector::Offer

	include VirtualAssembly::Semantizer::SemanticObject

	# @return [IPrice]
	attr_accessor :price

	# @return [Real]
	attr_accessor :stockLimitation

	# @return [ICatalogItem]
	attr_accessor :offeredItem

	# @return [ICustomerCategory]
	attr_accessor :offeredTo

	# @param semanticId [String]
	# @param price [IPrice]
	# @param stockLimitation [Real]
	# @param offeredItem [ICatalogItem]
	# @param offeredTo [ICustomerCategory]
	def initialize(semanticId, price: nil, stockLimitation: 0.0, offeredItem: nil, offeredTo: nil)
		super(semanticId)
		@price = price
		@stockLimitation = stockLimitation
		@offeredItem = offeredItem
		@offeredTo = offeredTo
		self.semanticType = "http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#Offer"
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#price") { self.price }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#stockLimitation") { self.stockLimitation }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#offeredItem") { self.offeredItem }
		registerSemanticProperty("http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#offeredTo") { self.offeredTo }
	end
	

	

end
