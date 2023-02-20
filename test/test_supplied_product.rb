require 'connector'
require "minitest/autorun"
require 'datafoodconsortium/connector'

class SuppliedProductTest < Minitest::Test

  def test_export_empty
    sp = DataFoodConsortium::Connector::SuppliedProduct.new("https://myplatform.com/sp")
    actual = connector.export(sp)
    expected = '{"@context":"http://static.datafoodconsortium.org/ontologies/context.json","@id":"https://myplatform.com/sp","@type":"dfc-b:SuppliedProduct","dfc-b:name":"","dfc-b:description":"","dfc-b:alcoholPercentage":0.0,"dfc-b:lifetime":"","dfc-b:usageOrStorageCondition":"","dfc-b:totalTheoreticalStock":0.0}'
    assert_equal expected, actual
  end

  def test_export_complete
    quantity = DataFoodConsortium::Connector::QuantitativeValue.new(
      unit: connector.MEASURES.UNIT.QUANTITYUNIT.KILOGRAM,
      value: 1.2
    )

    sp = DataFoodConsortium::Connector::SuppliedProduct.new(
      "https://myplatform.com/sp", 
      name: "name", 
      description: "description", 
      productType: connector.PRODUCT_TYPES.VEGETABLE.ARTICHOKE,
      quantity: quantity,
      totalTheoreticalStock: 123,
      alcoholPercentage: 2.6,
      lifetime: "lifetime",
      usageOrStorageConditions: "usageOrStorageConditions",
      certifications: [connector.FACETS.CERTIFICATION.BIODYNAMICLABEL.DEMETER],
      claims: [
        connector.FACETS.CLAIM.NUTRITIONALCLAIM.ENERGYFREE,
        connector.FACETS.CLAIM.NUTRITIONALCLAIM.FATFREE,
        connector.FACETS.CLAIM.NUTRITIONALCLAIM.HIGHFIBRE
      ],
      allergenCharacteristics: [
        
      ], 
      nutrientCharacteristics: [
        DataFoodConsortium::Connector::NutrientCharacteristic.new(
          nutrientDimension: connector.MEASURES.DIMENSION.NUTRIENTDIMENSION.CALCIUM,
          unit: connector.MEASURES.UNIT.QUANTITYUNIT.GRAM,
          value: 8.47
        )
      ], 
      physicalCharacteristics: [
        DataFoodConsortium::Connector::PhysicalCharacteristic.new(
          physicalDimension: connector.MEASURES.DIMENSION.PHYSICALDIMENSION.WEIGHT,
          unit: connector.MEASURES.UNIT.QUANTITYUNIT.KILOGRAM,
          value: 3.25
        )
      ],
      geographicalOrigin: connector.FACETS.TERRITORIALORIGIN.EUROPE.FRANCE.NORMANDY,
      natureOrigin: connector.FACETS.NATUREORIGIN.PLANTORIGIN,
      partOrigin: connector.FACETS.NATUREORIGIN.PLANTORIGIN
    )

    actual = connector.export(sp)
    expected = '{"@context":"http://static.datafoodconsortium.org/ontologies/context.json","@id":"https://myplatform.com/sp","@type":"dfc-b:SuppliedProduct","dfc-b:name":"name","dfc-b:description":"description","http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasType":"http://static.datafoodconsortium.org/data/productTypes.rdf#artichoke","dfc-b:hasQuantity":{"@type":"dfc-b:QuantitativeValue","http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasUnit":"dfc-m:Kilogram","dfc-b:value":1.2},"dfc-b:alcoholPercentage":2.6,"dfc-b:lifetime":"lifetime","http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasClaim":["dfc-f:EnergyFree","dfc-f:FatFree","dfc-f:HighFibre"],"dfc-b:usageOrStorageCondition":"usageOrStorageConditions","dfc-b:hasNutrientCharacteristic":{"@type":"dfc-b:NutrientCharacteristic","http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasUnit":"dfc-m:Gram","dfc-b:value":8.47,"dfc-b:hasNutrientDimension":"dfc-m:Calcium"},"dfc-b:hasPhysicalCharacteristic":{"@type":"dfc-b:PhysicalCharacteristic","http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasUnit":"dfc-m:Kilogram","dfc-b:value":3.25,"http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasPhysicalDimension":"dfc-m:Weight"},"http://static.datafoodconsortium.org/ontologies/DFC_BusinessOntology.owl#hasGeographicalOrigin":"dfc-f:Normandy","dfc-b:hasCertification":"dfc-f:Demeter","dfc-b:hasNatureOrigin":"dfc-f:PlantOrigin","dfc-b:hasPartOrigin":"dfc-f:PlantOrigin","dfc-b:totalTheoreticalStock":123}'
    assert_equal expected, actual
  end

end
