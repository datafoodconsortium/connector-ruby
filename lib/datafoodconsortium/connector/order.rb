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

class DataFoodConsortium::Connector::Order
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:Order".freeze

	# @return [String]
	attr_accessor :number

	# @return [String]
	attr_accessor :date

	# @return [ISaleSession]
	attr_accessor :saleSession

	# @return [IOrderLine]
	attr_accessor :lines

	# @return [IAgent]
	attr_accessor :client

	# @return [ISKOSConcept]
	attr_accessor :fulfilmentStatus

	# @return [ISKOSConcept]
	attr_accessor :orderStatus

	# @return [ISKOSConcept]
	attr_accessor :paymentStatus

	# @param semanticId [String]
	# @param number [String]
	# @param date [String]
	# @param saleSession [ISaleSession]
	# @param lines [IOrderLine]
	# @param client [IAgent]
	# @param fulfilmentStatus [ISKOSConcept]
	# @param orderStatus [ISKOSConcept]
	# @param paymentStatus [ISKOSConcept]
	def initialize(semanticId, number: nil, date: nil, saleSession: nil, lines: [], client: nil, fulfilmentStatus: nil, orderStatus: nil, paymentStatus: nil)
		super(semanticId)
		@number = number
		@date = date
		@saleSession = saleSession
		@lines = lines
		@client = client
		@fulfilmentStatus = fulfilmentStatus
		@orderStatus = orderStatus
		@paymentStatus = paymentStatus
		self.semanticType = "dfc-b:Order"
		registerSemanticProperty("dfc-b:orderNumber", &method("number")).valueSetter = method("number=")
		registerSemanticProperty("dfc-b:date", &method("date")).valueSetter = method("date=")
		registerSemanticProperty("dfc-b:belongsTo", &method("saleSession")).valueSetter = method("saleSession=")
		registerSemanticProperty("dfc-b:hasPart", &method("lines")).valueSetter = method("lines=")
		registerSemanticProperty("dfc-b:orderedBy", &method("client")).valueSetter = method("client=")
		registerSemanticProperty("dfc-b:hasFulfilmentStatus", &method("fulfilmentStatus")).valueSetter = method("fulfilmentStatus=")
		registerSemanticProperty("dfc-b:hasOrderStatus", &method("orderStatus")).valueSetter = method("orderStatus=")
		registerSemanticProperty("dfc-b:hasPaymentStatus", &method("paymentStatus")).valueSetter = method("paymentStatus=")
	end
	


end
