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

class DataFoodConsortium::Connector::SaleSession
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:SaleSession".freeze

	# @return [String]
	attr_accessor :beginDate

	# @return [String]
	attr_accessor :endDate

	# @return [Real]
	attr_accessor :quantity

	# @return [IOffer]
	attr_accessor :offers

	# @param semanticId [String]
	# @param beginDate [String]
	# @param endDate [String]
	# @param quantity [Real]
	# @param offers [IOffer]
	def initialize(semanticId, beginDate: "", endDate: "", quantity: 0.0, offers: [])
		super(semanticId)
		@beginDate = beginDate
		@endDate = endDate
		@quantity = quantity
		@offers = offers
		self.semanticType = "dfc-b:SaleSession"
		registerSemanticProperty("dfc-b:beginDate", &method("beginDate")).valueSetter = method("beginDate=")
		registerSemanticProperty("dfc-b:endDate", &method("endDate")).valueSetter = method("endDate=")
		registerSemanticProperty("dfc-b:quantity", &method("quantity")).valueSetter = method("quantity=")
		registerSemanticProperty("dfc-b:lists", &method("offers")).valueSetter = method("offers=")
	end
	


end
