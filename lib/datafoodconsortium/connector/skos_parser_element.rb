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

class DataFoodConsortium::Connector::SKOSParserElement

    attr_reader :id
    attr_reader :type
    attr_reader :broader

    def initialize(element)
        @broader = []

        if (element)
            @id = element["@id"]

            if (element["http://www.w3.org/1999/02/22-rdf-syntax-ns#type"])
                @type = extractId(element["http://www.w3.org/1999/02/22-rdf-syntax-ns#type"])
            elsif (element["@type"])
                @type = extractId(element["@type"])
            else 
                @type = "undefined"
            end

            if (element["http://www.w3.org/2004/02/skos/core#broader"])
                element["http://www.w3.org/2004/02/skos/core#broader"].each do |broader|
                    @broader.push(broader["@id"])
                end
            end
        else
            @id = ""
            @type = ""
        end
    end
    
    def hasBroader()
        return @broader.count > 0
    end
    
    def isConcept?()
        return @type == "http://www.w3.org/2004/02/skos/core#Concept" || @type == "skos:Concept"
    end
    
    def isCollection?()
        return @type == "http://www.w3.org/2004/02/skos/core#Collection" || @type == "skos:Collection"
    end
    
    private
    
    def extractId(data)
        id = data[0]
        
        if (id["@id"])
            return id["@id"]
        end

        return id
    end

end