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

class DataFoodConsortium::Connector::ProductOption
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:ProductOption".freeze

	# @return [String]
	attr_accessor :name

	# @return [String]
	attr_accessor :description

	# @return [DateTime]
	attr_accessor :date

	# @return [IProductOptionValue]
	attr_accessor :referenceProductionOptionValue

	# @param semanticId [String]
	# @param name [String]
	# @param description [String]
	# @param date [DateTime]
	# @param referenceProductionOptionValue [IProductOptionValue]
	def initialize(semanticId, name: nil, description: nil, date: nil, referenceProductionOptionValue: [])
		super(semanticId)
		@name = name
		@description = description
		@date = date
		@referenceProductionOptionValue = referenceProductionOptionValue
		self.semanticType = "dfc-b:ProductOption"
		registerSemanticProperty("dfc-b:name", &method("name")).valueSetter = method("name=")
		registerSemanticProperty("dfc-b:description", &method("description")).valueSetter = method("description=")
		registerSemanticProperty("dfc-b:date", &method("date")).valueSetter = method("date=")
		registerSemanticProperty("dfc-b:hasReferenceProductOptionValue", &method("referenceProductionOptionValue")).valueSetter = method("referenceProductionOptionValue=")
	end
	


end
