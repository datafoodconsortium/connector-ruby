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

require "datafoodconsortium/connector/flow"





require "virtual_assembly/semantizer"

class DataFoodConsortium::Connector::PlannedProductionFlow < DataFoodConsortium::Connector::Flow

    SEMANTIC_TYPE = "dfc-b:AsPlannedProductionFlow".freeze

	# @return [IPlannedTransformation]
	attr_accessor :transformation

	# @return [ISuppliedProduct]
	attr_accessor :product

	# @param semanticId [String]
	# @param transformation [IPlannedTransformation]
	# @param product [ISuppliedProduct]
	# @param quantity [IQuantity]
	def initialize(semanticId, transformation: nil, product: nil, quantity: nil)
		super(semanticId, quantity: quantity)
		@transformation = transformation
		@product = product
		self.semanticType = "dfc-b:AsPlannedProductionFlow"
		registerSemanticProperty("dfc-b:outcomeOf", &method("transformation")).valueSetter = method("transformation=")
		registerSemanticProperty("dfc-b:produces", &method("product")).valueSetter = method("product=")
	end
	


end
