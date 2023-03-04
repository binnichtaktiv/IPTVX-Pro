#import <UIKit/UIKit.h>

%hook MGAppReceipt
- (bool)subscribedToFullVersion {
	return 1;
}
%end

%hook MGAppReceipt
- (bool)subscribedToFullVersionForPROUsers {
	return 1;
}
%end

%hook APMMeasurement
- (bool)dedupeSubscriptionEvent:(id)arg1 {
	return 1;
}
%end

%hook RMStoreKeychainPersistence
- (bool)isPurchasedProductOfIdentifier:(id)arg1 {
	return 1;
}
%end

%hook MGAppReceipt
- (bool)didUserPurchasedProduct:(id)arg1 {
	return 1;
}
%end

%hook MGAppReceipt
- (bool)wasAppPurchased {
	return 1;
}
%end

%hook MGClusterInAppPurchaseViewController
- (bool)userHasYearlyFULLforPROVersion {
	return 1;
}
%end

%hook MGProductTableViewCell
- (bool)purchasedAndValid {
	return 1;
}
%end

%hook MGProductTableViewCell
- (void)setPurchasedAndValid:(bool)arg1 {
	arg1 = 1;
	%orig;
}
%end

%hook APMLifetimeValueRecorder
+ (bool)isEcommercePurchaseEvent:(id)arg1 {
	return 1;
}
%end

%hook APMLifetimeValueRecorder
+ (bool)isPurchaseEvent:(id)arg1 {
	return 1;
}
%end

// Add credits
%hook UILabel
- (void)layoutSubviews {
  %orig;
  if ([self.text isEqual:@"SUBSCRIBED"]) {
    self.text = @"HACKED BY BINNICHTAKTIV";
    [self sizeToFit];
  }
}
%end