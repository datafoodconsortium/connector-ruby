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

	attr_accessor :broaders
	attr_accessor :schemes
	attr_accessor :narrowers
	attr_accessor :prefLabels

	def initialize()
		super()
		self.semanticType = "http://www.w3.org/2004/02/skos/core#Concept"
		
		self.broaders = []
		self.schemes = []
		self.narrowers = []
		self.prefLabels = []
		registerSemanticProperty("http://www.w3.org/2004/02/skos/core#broader") { self.broaders }
		registerSemanticProperty("http://www.w3.org/2004/02/skos/core#inScheme") { self.schemes }
		registerSemanticProperty("http://www.w3.org/2004/02/skos/core#narrower") { self.narrowers }
		registerSemanticProperty("http://www.w3.org/2004/02/skos/core#prefLabel") { self.prefLabels }
	end
	

	def addBroader(broader)
		self.broaders.push(broader)
	end
	
	def addScheme(scheme)
		self.schemes.push(scheme)
	end
	
	def addNarrower(narrower)
		self.narrowers.push(narrower)
	end
	
	def addPrefLabel(prefLabel)
		self.prefLabels.push(prefLabel)
	end
	
	def removeBroader(broader)
		raise "Not implemented"
	end
	
	def removeScheme(scheme)
		raise "Not implemented"
	end
	
	def removeNarrower(narrower)
		raise "Not implemented"
	end
	
	def removePrefLabel(prefLabel)
		raise "Not implemented"
	end
	

end
