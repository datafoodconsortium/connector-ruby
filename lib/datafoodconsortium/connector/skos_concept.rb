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

class DataFoodConsortium::Connector::SKOSConcept

	include VirtualAssembly::Semantizer::SemanticObject

	# @return [ISKOSConcept]
	attr_accessor :broaders

	# @return [ISKOSConceptScheme]
	attr_accessor :schemes

	# @return [ISKOSConcept]
	attr_accessor :narrowers

	# @return [ISKOSLabel]
	attr_accessor :prefLabels

	# @param broaders [ISKOSConcept]
	# @param schemes [ISKOSConceptScheme]
	# @param narrowers [ISKOSConcept]
	# @param prefLabels [ISKOSLabel]
	def initialize(broaders: [], schemes: [], narrowers: [], prefLabels: [])
		super()
		@broaders = broaders
		@schemes = schemes
		@narrowers = narrowers
		@prefLabels = prefLabels
		self.semanticType = "http://www.w3.org/2004/02/skos/core#Concept"
		registerSemanticProperty("http://www.w3.org/2004/02/skos/core#broader") { self.broaders }
		registerSemanticProperty("http://www.w3.org/2004/02/skos/core#inScheme") { self.schemes }
		registerSemanticProperty("http://www.w3.org/2004/02/skos/core#narrower") { self.narrowers }
		registerSemanticProperty("http://www.w3.org/2004/02/skos/core#prefLabel") { self.prefLabels }
	end
	

	
	
	
	
	
	def removeBroader(broader)
		raise "Not yet implemented."
	end
	
	
	def removeScheme(scheme)
		raise "Not yet implemented."
	end
	
	
	def removeNarrower(narrower)
		raise "Not yet implemented."
	end
	
	
	def removePrefLabel(prefLabel)
		raise "Not yet implemented."
	end
	

end
