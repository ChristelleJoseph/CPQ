public with sharing class CreatePricebook {
  public CreatePricebook() {

  Pricebook2 standardPricebook = [SELECT Id FROM Pricebook2 WHERE IsStandard = true LIMIT 1];
  Pricebook2 customPricebook = new Pricebook2(
      Name = 'GitHub CPQ Pricebook',
      IsActive = true
  );
  insert customPricebook;

// Fetch Pricebook IDs
Pricebook2 standardPricebook = [SELECT Id FROM Pricebook2 WHERE IsStandard = true LIMIT 1];
Pricebook2 customPricebook = [SELECT Id FROM Pricebook2 WHERE Name = 'GitHub CPQ Pricebook' LIMIT 1];

// Fetch Product IDs
List<Product2> products = [SELECT Id, Name FROM Product2 WHERE IsActive = true];

// Create Pricebook Entries for Standard Pricebook
List<PricebookEntry> standardEntries = new List<PricebookEntry>();
for (Product2 product : products) {
    standardEntries.add(new PricebookEntry(
        Pricebook2Id = standardPricebook.Id,
        Product2Id = product.Id,
        UnitPrice = product.SBQQ__UnitPrice__c,
        IsActive = true
    ));
}
insert standardEntries;

// Create Pricebook Entries for Custom Pricebook
List<PricebookEntry> customEntries = new List<PricebookEntry>();
for (Product2 product : products) {
    customEntries.add(new PricebookEntry(
        Pricebook2Id = customPricebook.Id,
        Product2Id = product.Id,
        UnitPrice = product.SBQQ__UnitPrice__c,
        IsActive = true
    ));
}
insert customEntries;

    }
}