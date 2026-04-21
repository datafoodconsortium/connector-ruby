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

class DataFoodConsortium::Connector::Certification
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "dfc-b:Certfication".freeze

	# @return [String]
	attr_accessor :certificationReferences

	# @return [String]
	attr_accessor :certificationScores

	# @return [String]
	attr_accessor :operatorIds

	# @return [IOrganization]
	attr_accessor :certifiedOrganizations

	# @return [String]
	attr_accessor :name

	# @return [String]
	attr_accessor :description

	# @param semanticId [String]
	# @param certificationReferences [String]
	# @param certificationScores [String]
	# @param operatorIds [String]
	# @param certifiedOrganizations [IOrganization]
	# @param name [String]
	# @param description [String]
	def initialize(semanticId, certificationReferences: [], certificationScores: [], operatorIds: [], certifiedOrganizations: [], name: nil, description: nil)
		super(semanticId)
		@certificationReferences = certificationReferences
		@certificationScores = certificationScores
		@operatorIds = operatorIds
		@certifiedOrganizations = certifiedOrganizations
		@name = name
		@description = description
		self.semanticType = "dfc-b:Certfication"
		registerSemanticProperty("dfc-b:certiferReference", &method("certificationReferences")).valueSetter = method("certificationReferences=")
		registerSemanticProperty("dfc-b:certificationScore", &method("certificationScores")).valueSetter = method("certificationScores=")
		registerSemanticProperty("dfc-b:operatorId", &method("operatorIds")).valueSetter = method("operatorIds=")
		registerSemanticProperty("dfc-b:certifies", &method("certifiedOrganizations")).valueSetter = method("certifiedOrganizations=")
		registerSemanticProperty("dfc-b:name", &method("name")).valueSetter = method("name=")
		registerSemanticProperty("dfc-b:hasDescription", &method("description")).valueSetter = method("description=")
	end
	


end
