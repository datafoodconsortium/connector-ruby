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

class DataFoodConsortium::Connector::Address
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:Address".freeze

	# @return [String]
	attr_accessor :street

	# @return [String]
	attr_accessor :postalCode

	# @return [String]
	attr_accessor :city

	# @return [String]
	attr_accessor :country

	# @return [Real]
	attr_accessor :latitude

	# @return [Real]
	attr_accessor :longitude

	# @return [String]
	attr_accessor :region

	# @param semanticId [String]
	# @param street [String]
	# @param postalCode [String]
	# @param city [String]
	# @param country [String]
	# @param latitude [Real]
	# @param longitude [Real]
	# @param region [String]
	def initialize(semanticId, street: "", postalCode: "", city: "", country: "", latitude: 0.0, longitude: 0.0, region: "")
		super(semanticId)
		@street = street
		@postalCode = postalCode
		@city = city
		@country = country
		@latitude = latitude
		@longitude = longitude
		@region = region
		self.semanticType = "dfc-b:Address"
		registerSemanticProperty("dfc-b:hasStreet", &method("street")).valueSetter = method("street=")
		registerSemanticProperty("dfc-b:hasPostalCode", &method("postalCode")).valueSetter = method("postalCode=")
		registerSemanticProperty("dfc-b:hasCity", &method("city")).valueSetter = method("city=")
		registerSemanticProperty("dfc-b:hasCountry", &method("country")).valueSetter = method("country=")
		registerSemanticProperty("dfc-b:latitude", &method("latitude")).valueSetter = method("latitude=")
		registerSemanticProperty("dfc-b:longitude", &method("longitude")).valueSetter = method("longitude=")
		registerSemanticProperty("dfc-b:region", &method("region")).valueSetter = method("region=")
	end
	


end
