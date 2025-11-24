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

class DataFoodConsortium::Connector::PhysicalPlace
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:PhysicalPlace".freeze

	# @return [String]
	attr_accessor :name

	# @return [String]
	attr_accessor :description

	# @return [ISaleSession]
	attr_accessor :hostedSaleSessions

	# @return [IPhoneNumber]
	attr_accessor :phoneNumbers

	# @return [IOpeningHoursSpecification]
	attr_accessor :openingHours

	# @return [IAddress]
	attr_accessor :addresses

	# @return [IPerson]
	attr_accessor :mainContact

	# @return [ITheoreticalStock]
	attr_accessor :theoreticalStocks

	# @return [IRealStock]
	attr_accessor :realStocks

	# @param semanticId [String]
	# @param name [String]
	# @param description [String]
	# @param hostedSaleSessions [ISaleSession]
	# @param phoneNumbers [IPhoneNumber]
	# @param openingHours [IOpeningHoursSpecification]
	# @param addresses [IAddress]
	# @param mainContact [IPerson]
	# @param theoreticalStocks [ITheoreticalStock]
	# @param realStocks [IRealStock]
	def initialize(semanticId, name: nil, description: nil, hostedSaleSessions: [], phoneNumbers: [], openingHours: [], addresses: [], mainContact: nil, theoreticalStocks: [], realStocks: [])
		super(semanticId)
		@name = name
		@description = description
		@hostedSaleSessions = hostedSaleSessions
		@phoneNumbers = phoneNumbers
		@openingHours = openingHours
		@addresses = addresses
		@mainContact = mainContact
		@theoreticalStocks = theoreticalStocks
		@realStocks = realStocks
		self.semanticType = "dfc-b:PhysicalPlace"
		registerSemanticProperty("dfc-b:name", &method("name")).valueSetter = method("name=")
		registerSemanticProperty("dfc-b:description", &method("description")).valueSetter = method("description=")
		registerSemanticProperty("dfc-b:hosts", &method("hostedSaleSessions")).valueSetter = method("hostedSaleSessions=")
		registerSemanticProperty("dfc-b:hasPhoneNumber", &method("phoneNumbers")).valueSetter = method("phoneNumbers=")
		registerSemanticProperty("dfc-b:hasOpeningHours", &method("openingHours")).valueSetter = method("openingHours=")
		registerSemanticProperty("dfc-b:hasAddress", &method("addresses")).valueSetter = method("addresses=")
		registerSemanticProperty("dfc-b:hasMainContact", &method("mainContact")).valueSetter = method("mainContact=")
		registerSemanticProperty("dfc-b:localizes", &method("theoreticalStocks")).valueSetter = method("theoreticalStocks=")
		registerSemanticProperty("dfc-b:stores", &method("realStocks")).valueSetter = method("realStocks=")
	end
	


end
