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

	# @return [String]
	attr_accessor :street

	# @return [String]
	attr_accessor :postalCode

	# @return [String]
	attr_accessor :city

	# @return [String]
	attr_accessor :country

	# @param semanticId [String]
	# @param street [String]
	# @param postalCode [String]
	# @param city [String]
	# @param country [String]
	def initialize(semanticId, street: "", postalCode: "", city: "", country: "")
		super(semanticId)
		@street = street
		@postalCode = postalCode
		@city = city
		@country = country
		self.semanticType = "dfc-b:Address"
		registerSemanticProperty("dfc-b:hasStreet") { self.street }
		registerSemanticProperty("dfc-b:hasPostalCode") { self.postalCode }
		registerSemanticProperty("dfc-b:hasCity") { self.city }
		registerSemanticProperty("dfc-b:hasCountry") { self.country }
	end
	


end
