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

class DataFoodConsortium::Connector::Step
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:Step".freeze

	# @return [String]
	attr_accessor :name

	# @return [String]
	attr_accessor :description

	# @return [IRoute]
	attr_accessor :routes

	# @return [IShipment]
	attr_accessor :deliveredShipments

	# @return [IShipment]
	attr_accessor :pickedUpShipments

	# @return [String]
	attr_accessor :duration

	# @return [DateTime]
	attr_accessor :arrivalDate

	# @param semanticId [String]
	# @param name [String]
	# @param description [String]
	# @param routes [IRoute]
	# @param deliveredShipments [IShipment]
	# @param pickedUpShipments [IShipment]
	# @param duration [String]
	# @param arrivalDate [DateTime]
	def initialize(semanticId, name: nil, description: nil, routes: [], deliveredShipments: [], pickedUpShipments: [], duration: nil, arrivalDate: nil)
		super(semanticId)
		@name = name
		@description = description
		@routes = routes
		@deliveredShipments = deliveredShipments
		@pickedUpShipments = pickedUpShipments
		@duration = duration
		@arrivalDate = arrivalDate
		self.semanticType = "dfc-b:Step"
		registerSemanticProperty("dfc-b:name", &method("name")).valueSetter = method("name=")
		registerSemanticProperty("dfc-b:description", &method("description")).valueSetter = method("description=")
		registerSemanticProperty("dfc-b:isStepOf", &method("routes")).valueSetter = method("routes=")
		registerSemanticProperty("dfc-b:delivery", &method("deliveredShipments")).valueSetter = method("deliveredShipments=")
		registerSemanticProperty("dfc-b:pickUp", &method("pickedUpShipments")).valueSetter = method("pickedUpShipments=")
		registerSemanticProperty("dfc-b:duration", &method("duration")).valueSetter = method("duration=")
		registerSemanticProperty("dfc-b:arrivalDate", &method("arrivalDate")).valueSetter = method("arrivalDate=")
	end
	


end
