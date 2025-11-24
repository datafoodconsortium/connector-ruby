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

class DataFoodConsortium::Connector::RealizedTransformation
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:AsRealizedTransformation".freeze

	# @return [ISKOSConcept]
	attr_accessor :transformationType

	# @return [DateTime]
	attr_accessor :startDate

	# @return [DateTime]
	attr_accessor :endDate

	# @return [IRealizedConsumptionFlow]
	attr_accessor :consumptionFlow

	# @return [IRealizedProductionFlow]
	attr_accessor :productionFlow

	# @param semanticId [String]
	# @param transformationType [ISKOSConcept]
	# @param startDate [DateTime]
	# @param endDate [DateTime]
	# @param consumptionFlow [IRealizedConsumptionFlow]
	# @param productionFlow [IRealizedProductionFlow]
	def initialize(semanticId, transformationType: nil, startDate: nil, endDate: nil, consumptionFlow: nil, productionFlow: nil)
		super(semanticId)
		@transformationType = transformationType
		@startDate = startDate
		@endDate = endDate
		@consumptionFlow = consumptionFlow
		@productionFlow = productionFlow
		self.semanticType = "dfc-b:AsRealizedTransformation"
		registerSemanticProperty("dfc-b:hasTransformationType", &method("transformationType")).valueSetter = method("transformationType=")
		registerSemanticProperty("dfc-b:startDate", &method("startDate")).valueSetter = method("startDate=")
		registerSemanticProperty("dfc-b:endDate", &method("endDate")).valueSetter = method("endDate=")
		registerSemanticProperty("dfc-b:hasIncome", &method("consumptionFlow")).valueSetter = method("consumptionFlow=")
		registerSemanticProperty("dfc-b:hasOutcome", &method("productionFlow")).valueSetter = method("productionFlow=")
	end
	


end
