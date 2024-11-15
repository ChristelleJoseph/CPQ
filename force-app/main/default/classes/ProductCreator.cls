public without sharing class ProductCreator {
  public static void createProducts() {
      List<Product2> products = new List<Product2>();

     products.add(new Product2(
          Name = 'GitHub Pro',
          SBQQ__SubscriptionPricing__c = 'Per User',
          SBQQ__SubscriptionTerm__c = 12,
          IsActive = true,
          ProductCode = 'GH_PRO'
      ));

      products.add(new Product2(
          Name = 'GitHub Team',
          SBQQ__SubscriptionPricing__c = 'Per User',
          SBQQ__SubscriptionTerm__c = 12,
          IsActive = true,
          ProductCode = 'GH_TEAM'
      ));

      products.add(new Product2(
          Name = 'GitHub Enterprise',
          SBQQ__SubscriptionPricing__c = 'Flat Fee',
          SBQQ__SubscriptionTerm__c = 12,
          IsActive = true,
          ProductCode = 'GH_ENT'
      ));

      // Add-Ons
      products.add(new Product2(
          Name = 'GitHub Codespaces',
          SBQQ__SubscriptionPricing__c = 'Per Unit',
          SBQQ__SubscriptionTerm__c = 12,
          IsActive = true,
          ProductCode = 'GH_CODESPACES'
      ));

      products.add(new Product2(
          Name = 'GitHub Copilot',
          SBQQ__SubscriptionPricing__c = 'Per User',
          SBQQ__SubscriptionTerm__c = 12,
          IsActive = true,
          ProductCode = 'GH_COPILOT'
      ));

      products.add(new Product2(
          Name = 'GitHub Advanced Security',
          SBQQ__SubscriptionPricing__c = 'Per User',
          SBQQ__SubscriptionTerm__c = 12,
          IsActive = true,
          ProductCode = 'GH_ADVSEC'
      ));

      products.add(new Product2(
          Name = 'GitHub Premium Support',
          SBQQ__SubscriptionPricing__c = 'Flat Fee',
          SBQQ__SubscriptionTerm__c = 12,
          IsActive = true,
          ProductCode = 'GH_SUPPORT'
      ));

        insert products;


      for (Product2 product : products) {
          System.debug('Created Product: ' + product.Name + ' (ID: ' + product.Id + ')');
      }
  }
}
