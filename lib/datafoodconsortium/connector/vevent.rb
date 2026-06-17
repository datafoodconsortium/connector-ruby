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

class DataFoodConsortium::Connector::Vevent
    include VirtualAssembly::Semantizer::SemanticObject

    SEMANTIC_TYPE = "http://www.w3.org/2002/12/cal/icaltzd#Vevent".freeze

	# @return [DateTime]
	attr_accessor :dtstart

	# @return [DateTime]
	attr_accessor :dtend

	# @return [ValueRecur]
	attr_accessor :rrule

	

	

	

	

	

	

	# @param semanticId [String]
	# @param dtstart [DateTime]
	# @param dtend [DateTime]
	# @param rrule [ValueRecur]
	def initialize(semanticId, dtstart: nil, dtend: nil, rrule: nil)
		super(semanticId)
		@dtstart = dtstart
		@dtend = dtend
		@rrule = rrule
		self.semanticType = "http://www.w3.org/2002/12/cal/icaltzd#Vevent"
		registerSemanticProperty("http://www.w3.org/2002/12/cal/icaltzd#dtstart", &method("dtstart")).valueSetter = method("dtstart=")
		registerSemanticProperty("http://www.w3.org/2002/12/cal/icaltzd#dtend", &method("dtend")).valueSetter = method("dtend=")
		registerSemanticProperty("http://www.w3.org/2002/12/cal/icaltzd#rrule", &method("rrule")).valueSetter = method("rrule=")
	end
	


end
