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

class DataFoodConsortium::Connector::VirtualPlace
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:VirtualPlace".freeze

	# @return [String]
	attr_accessor :name

	# @return [String]
	attr_accessor :description

	# @return [ISaleSession]
	attr_accessor :hostedSaleSessions

	# @return [String]
	attr_accessor :urls

	# @param semanticId [String]
	# @param name [String]
	# @param description [String]
	# @param hostedSaleSessions [ISaleSession]
	# @param urls [String]
	def initialize(semanticId, name: nil, description: nil, hostedSaleSessions: [], urls: [])
		super(semanticId)
		@name = name
		@description = description
		@hostedSaleSessions = hostedSaleSessions
		@urls = urls
		self.semanticType = "dfc-b:VirtualPlace"
		registerSemanticProperty("dfc-b:name", &method("name")).valueSetter = method("name=")
		registerSemanticProperty("dfc-b:description", &method("description")).valueSetter = method("description=")
		registerSemanticProperty("dfc-b:hosts", &method("hostedSaleSessions")).valueSetter = method("hostedSaleSessions=")
		registerSemanticProperty("dfc-b:URL", &method("urls")).valueSetter = method("urls=")
	end
	


end
