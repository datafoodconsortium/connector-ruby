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

class DataFoodConsortium::Connector::TemplateSaleSession
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:TemplateSaleSession".freeze

	# @return [IPlace]
	attr_accessor :hostingPlaces

	# @return [IOrganization]
	attr_accessor :organizations

	# @return [DateTime]
	attr_accessor :date

	# @param semanticId [String]
	# @param hostingPlaces [IPlace]
	# @param organizations [IOrganization]
	# @param date [DateTime]
	def initialize(semanticId, hostingPlaces: [], organizations: [], date: nil)
		super(semanticId)
		@hostingPlaces = hostingPlaces
		@organizations = organizations
		@date = date
		self.semanticType = "dfc-b:TemplateSaleSession"
		registerSemanticProperty("dfc-b:hostedAt", &method("hostingPlaces")).valueSetter = method("hostingPlaces=")
		registerSemanticProperty("dfc-b:isTemplateSaleSessionOf", &method("organizations")).valueSetter = method("organizations=")
		registerSemanticProperty("dfc-b:date", &method("date")).valueSetter = method("date=")
	end
	


end
