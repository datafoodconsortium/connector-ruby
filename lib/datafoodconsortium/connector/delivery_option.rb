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




require "datafoodconsortium/connector/shipping_option"
require "virtual_assembly/semantizer"

class DataFoodConsortium::Connector::DeliveryOption < DataFoodConsortium::Connector::ShippingOption

    SEMANTIC_TYPE = "dfc-b:DeliveryOption".freeze

	# @return [IPhysicalPlace]
	attr_accessor :deliveredPlace

	# @return [String]
	attr_accessor :deliveryConstraint

	# @return [String]
	attr_accessor :accessibilityInformation

	# @param semanticId [String]
	# @param deliveredPlace [IPhysicalPlace]
	# @param deliveryConstraint [String]
	# @param accessibilityInformation [String]
	# @param name [String]
	# @param description [String]
	# @param fee [Real]
	# @param quantity [IQuantity]
	# @param order [IOrder]
	# @param saleSession [ISaleSession]
	# @param beginDate [DateTime]
	# @param endDate [DateTime]
	def initialize(semanticId, deliveredPlace: nil, deliveryConstraint: nil, accessibilityInformation: nil, name: nil, description: nil, fee: nil, quantity: nil, order: nil, saleSession: nil, beginDate: nil, endDate: nil)
		super(semanticId, name: name, description: description, fee: fee, quantity: quantity, order: order, saleSession: saleSession, beginDate: beginDate, endDate: endDate)
		@deliveredPlace = deliveredPlace
		@deliveryConstraint = deliveryConstraint
		@accessibilityInformation = accessibilityInformation
		self.semanticType = "dfc-b:DeliveryOption"
		registerSemanticProperty("dfc-b:deliveredAt", &method("deliveredPlace")).valueSetter = method("deliveredPlace=")
		registerSemanticProperty("dfc-b:deliveryConstraint", &method("deliveryConstraint")).valueSetter = method("deliveryConstraint=")
		registerSemanticProperty("dfc-b:accessibilityInfo", &method("accessibilityInformation")).valueSetter = method("accessibilityInformation=")
	end
	


end
