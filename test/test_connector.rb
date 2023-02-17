require "minitest/autorun"
require 'datafoodconsortium/connector'

class ConnectorTest < Minitest::Test
  def test_export
    tomato = DataFoodConsortium::Connector::SuppliedProduct.new(
      "Tomato", "Awesome tomato"
    )
    tomato.semanticId = "https://myplatform.com/tomato"
    tomato.addCertification(connector.FACETS.CERTIFICATION.BIODYNAMICLABEL.DEMETER)

    exported_tomato = connector.export(tomato)
    assert_equal tomato_json, exported_tomato
  end

  def connector
    @connector ||= DataFoodConsortium::Connector::Connector.instance.tap do |c|
      c.loadMeasures(parse_json_file("measures.json"))
      c.loadFacets(parse_json_file("facets.json"))
      c.loadProductTypes(parse_json_file("productTypes.json"))
    end
  end

  def parse_json_file(name)
    JSON.parse(
      File.read(
        File.join(File.dirname(__FILE__), name)
      )
    )
  end

  def tomato_json
    '{"@context":"http://static.datafoodconsortium.org/ontologies/context.json","@type":"dfc-b:SuppliedProduct","dfc-b:name":"Tomato","dfc-b:description":"Awesome tomato","dfc-b:hasCertification":"dfc-f:Demeter","@id":"https://myplatform.com/tomato"}'
  end
end
