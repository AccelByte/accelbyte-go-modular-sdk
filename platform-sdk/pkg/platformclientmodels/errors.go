// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformclientmodels

import "fmt"

var (
	Error20002   = ApiError{Code: "20002", Message: "validation error"}
	Error20006   = ApiError{Code: "20006", Message: "optimistic lock"}
	Error20007   = ApiError{Code: "20007", Message: "too many requests"}
	Error20008   = ApiError{Code: "20008", Message: "user [{userId}] does not exist in namespace [{namespace}]"}
	Error20016   = ApiError{Code: "20016", Message: "action is banned"}
	Error20018   = ApiError{Code: "20018", Message: "ecommerce item type not supported"}
	Error20024   = ApiError{Code: "20024", Message: "insufficient inventory capacity (max. slots)"}
	Error20027   = ApiError{Code: "20027", Message: "Invalid time range"}
	Error30021   = ApiError{Code: "30021", Message: "Default language [{language}] required"}
	Error30022   = ApiError{Code: "30022", Message: "Default region [{region}] is required"}
	Error30023   = ApiError{Code: "30023", Message: "Catalog plugin grpc server address required"}
	Error30024   = ApiError{Code: "30024", Message: "Unable to parse CSV cell [{content}]"}
	Error30025   = ApiError{Code: "30025", Message: "[{header}] is required by CSV import/export for catalogType [{catalogType}]"}
	Error30041   = ApiError{Code: "30041", Message: "Changelog [{changelogId}] does not exist in namespace [{namespace}]"}
	Error30071   = ApiError{Code: "30071", Message: "Can't unselect item [{itemId}] when the item which is bound to is already selected in namespace [{namespace}]"}
	Error30072   = ApiError{Code: "30072", Message: "Can't unselect category [{categoryPath}] when item with this category is already selected in namespace [{namespace}]"}
	Error30073   = ApiError{Code: "30073", Message: "Can't unselect store change"}
	Error30074   = ApiError{Code: "30074", Message: "Can't unselect subscription's content [{itemId}] when subscription is already selected in namespace [{namespace}]"}
	Error30076   = ApiError{Code: "30076", Message: "CSV header [{headerName}] is not supported for CatalogType [{catalogType}]"}
	Error30121   = ApiError{Code: "30121", Message: "Store data is invalid"}
	Error30122   = ApiError{Code: "30122", Message: "Store's meta mismatch"}
	Error30141   = ApiError{Code: "30141", Message: "Store [{storeId}] does not exist in namespace [{namespace}]"}
	Error30142   = ApiError{Code: "30142", Message: "Published store does not exist in namespace [{namespace}]"}
	Error30143   = ApiError{Code: "30143", Message: "Published store [{storeId}] backup does not exist in namespace [{namespace}]"}
	Error30171   = ApiError{Code: "30171", Message: "Store [{store}] can't change default language to [{language}]"}
	Error30172   = ApiError{Code: "30172", Message: "Store [{store}] can't change default region to [{region}]"}
	Error30173   = ApiError{Code: "30173", Message: "Published store can't modify content"}
	Error30174   = ApiError{Code: "30174", Message: "Draft store already exists in namespace [{namespace}]"}
	Error30175   = ApiError{Code: "30175", Message: "Duplicated currencyCode [{currencyCode}] in Region [{region}]"}
	Error30241   = ApiError{Code: "30241", Message: "Category [{categoryPath}] does not exist in namespace [{namespace}]"}
	Error30271   = ApiError{Code: "30271", Message: "Category [{categoryPath}] already exists in namespace [{namespace}]"}
	Error30272   = ApiError{Code: "30272", Message: "Category [{categoryPath}] is not empty in namespace [{namespace}]"}
	Error30301   = ApiError{Code: "30301", Message: "Unsupported Item Type [{itemType}] for box item [{itemId}] with expiration"}
	Error30321   = ApiError{Code: "30321", Message: "Invalid item discount amount"}
	Error30322   = ApiError{Code: "30322", Message: "Bundle item [{itemId}] can't be bundled"}
	Error30323   = ApiError{Code: "30323", Message: "Target namespace is required"}
	Error30324   = ApiError{Code: "30324", Message: "Invalid namespace [{namespace}]"}
	Error30325   = ApiError{Code: "30325", Message: "Code item [{itemId}] can't be bundled"}
	Error30326   = ApiError{Code: "30326", Message: "Subscription item [{itemId}] can't be bundled"}
	Error30327   = ApiError{Code: "30327", Message: "Invalid item trial price"}
	Error30329   = ApiError{Code: "30329", Message: "Invalid bundled item [{itemId}] quantity"}
	Error30330   = ApiError{Code: "30330", Message: "Invalid item region price currency namespace [{namespace}]"}
	Error30331   = ApiError{Code: "30331", Message: "Invalid purchase condition"}
	Error30332   = ApiError{Code: "30332", Message: "Invalid option box item [{itemId}] quantity"}
	Error30333   = ApiError{Code: "30333", Message: "Item [{itemId}] item type [{itemType}] can't be bundled into option box"}
	Error30334   = ApiError{Code: "30334", Message: "Option box item [{itemId}] can't be bundled"}
	Error30335   = ApiError{Code: "30335", Message: "Item [{itemId}] can't be deleted in non-forced mode if item has been published"}
	Error30336   = ApiError{Code: "30336", Message: "Item type [{itemType}] does not support"}
	Error30337   = ApiError{Code: "30337", Message: "Invalid loot box item [{itemId}] quantity"}
	Error30338   = ApiError{Code: "30338", Message: "Item [{itemId}] item type [{itemType}] can't be bundled into loot box"}
	Error30339   = ApiError{Code: "30339", Message: "Loot box item [{itemId}] can't be bundled"}
	Error30341   = ApiError{Code: "30341", Message: "Item [{itemId}] does not exist in namespace [{namespace}]"}
	Error30342   = ApiError{Code: "30342", Message: "Item of appId [{appId}] does not exist"}
	Error30343   = ApiError{Code: "30343", Message: "Item of sku [{sku}] does not exist"}
	Error30371   = ApiError{Code: "30371", Message: "Item maxCount not allow reduce"}
	Error30372   = ApiError{Code: "30372", Message: "ItemType is not updatable"}
	Error30373   = ApiError{Code: "30373", Message: "ItemType [{itemType}] is not allowed in namespace [{namespace}]"}
	Error30374   = ApiError{Code: "30374", Message: "Item sku [{sku}] already exists in namespace [{namespace}]"}
	Error30375   = ApiError{Code: "30375", Message: "Item id [{itemId}] of sku [{sku}] is duplicate with un-published deleted item in namespace [{namespace}]"}
	Error30376   = ApiError{Code: "30376", Message: "Publisher namespace don’t allow sellback item"}
	Error30377   = ApiError{Code: "30377", Message: "This item type [{itemType}] don’t allow sellback"}
	Error30378   = ApiError{Code: "30378", Message: "Sale price don’t allow real currency [{currencyCode}]"}
	Error30379   = ApiError{Code: "30379", Message: "Item sku is not updatable"}
	Error30380   = ApiError{Code: "30380", Message: "Box item [{itemId}] duration and end date can’t be set at the same time"}
	Error30381   = ApiError{Code: "30381", Message: "Currency [{currency}] is not set for bundle Item [{itemId}] in region [{region}]"}
	Error30382   = ApiError{Code: "30382", Message: "Duplicated Item sku [{sku}]"}
	Error30383   = ApiError{Code: "30383", Message: "Item app id [{appId}] already exists in namespace [{namespace}] item [{itemId}]"}
	Error30386   = ApiError{Code: "30386", Message: "The item [{itemId}] is currently associated and cannot be deleted in namespace [{namespace}], Feature {featureName}, Module {moduleName}, and Reference ID {referenceId} are using this item ID"}
	Error30387   = ApiError{Code: "30387", Message: "The item [{itemId}] is currently associated and cannot be disabled in namespace [{namespace}], Feature {featureName}, Module {moduleName}, and Reference ID {referenceId} are using this item ID"}
	Error30541   = ApiError{Code: "30541", Message: "Item type config [{id}] doesn't exist"}
	Error30641   = ApiError{Code: "30641", Message: "View [{viewId}] does not exist in namespace [{namespace}]"}
	Error30741   = ApiError{Code: "30741", Message: "Section [{sectionId}] does not exist in namespace [{namespace}]"}
	Error30771   = ApiError{Code: "30771", Message: "Item [{itemId}] not found in User Section [{sectionId}], UserId [{userId}], Namespace [{namespace}]"}
	Error30772   = ApiError{Code: "30772", Message: "Section [{sectionId}] is not available or expired"}
	Error31121   = ApiError{Code: "31121", Message: "OptionBox entitlement [{entitlementId}] use count is not 1"}
	Error31122   = ApiError{Code: "31122", Message: "OptionBox entitlement [{entitlementId}] options size is not 1"}
	Error31123   = ApiError{Code: "31123", Message: "Unable to acquire box item, box item [{itemId}] expired"}
	Error31141   = ApiError{Code: "31141", Message: "Entitlement [{entitlementId}] does not exist in namespace [{namespace}]"}
	Error31142   = ApiError{Code: "31142", Message: "Entitlement with appId [{appId}] does not exist in namespace [{namespace}]"}
	Error31143   = ApiError{Code: "31143", Message: "Entitlement with sku [{sku}] does not exist in namespace [{namespace}]"}
	Error31144   = ApiError{Code: "31144", Message: "Entitlement with itemId [{itemId}] does not exist in namespace [{namespace}]"}
	Error31145   = ApiError{Code: "31145", Message: "Option [{option}] doesn't exist in OptionBox entitlement [{entitlementId}]"}
	Error31147   = ApiError{Code: "31147", Message: "Origin [Steam] and System need exist in allowPlatformOrigin"}
	Error31171   = ApiError{Code: "31171", Message: "Entitlement [{entitlementId}] already revoked"}
	Error31172   = ApiError{Code: "31172", Message: "Entitlement [{entitlementId}] not active"}
	Error31173   = ApiError{Code: "31173", Message: "Entitlement [{entitlementId}] is not consumable"}
	Error31174   = ApiError{Code: "31174", Message: "Entitlement [{entitlementId}] already consumed"}
	Error31176   = ApiError{Code: "31176", Message: "Entitlement [{entitlementId}] use count is insufficient"}
	Error31177   = ApiError{Code: "31177", Message: "Permanent item already owned"}
	Error31178   = ApiError{Code: "31178", Message: "Entitlement [{entitlementId}] out of time range"}
	Error31179   = ApiError{Code: "31179", Message: "Duplicate entitlement exists"}
	Error31180   = ApiError{Code: "31180", Message: "Duplicate request id: [{requestId}]"}
	Error31181   = ApiError{Code: "31181", Message: "Entitlement [{entitlementId}] is not sellable"}
	Error31182   = ApiError{Code: "31182", Message: "Entitlement [{entitlementId}] already sold"}
	Error31183   = ApiError{Code: "31183", Message: "Entitlement [{entitlementId}] origin [{origin}] not allowed be operated at [{platform}]"}
	Error31184   = ApiError{Code: "31184", Message: "Source entitlement [{sourceEntitlementId}] and target entitlement [{targetEntitlementId}] should have same collectionId, timeRange, origin and itemId"}
	Error31185   = ApiError{Code: "31185", Message: "Transferred source entitlement [{sourceEntitlementId}] and target entitlement [{targetEntitlementId}] can not be set to same"}
	Error32121   = ApiError{Code: "32121", Message: "Order price mismatch"}
	Error32122   = ApiError{Code: "32122", Message: "Item type [{itemType}] does not support"}
	Error32123   = ApiError{Code: "32123", Message: "Item is not purchasable"}
	Error32124   = ApiError{Code: "32124", Message: "Invalid currency namespace"}
	Error32125   = ApiError{Code: "32125", Message: "The user does not meet the purchase conditions"}
	Error32126   = ApiError{Code: "32126", Message: "Section ID is required for placing this order"}
	Error32127   = ApiError{Code: "32127", Message: "Discount code [{code}] can't be used on this item: {tips}"}
	Error32128   = ApiError{Code: "32128", Message: "Discount code [{code}] can not be used with other code together"}
	Error32129   = ApiError{Code: "32129", Message: "Can't use discount code on free order"}
	Error32130   = ApiError{Code: "32130", Message: "The total discount amount cannot exceed the order price"}
	Error32141   = ApiError{Code: "32141", Message: "Order [{orderNo}] does not exist"}
	Error32171   = ApiError{Code: "32171", Message: "Order [{orderNo}] is not refundable"}
	Error32172   = ApiError{Code: "32172", Message: "Invalid order status [{status}] for order [{orderNo}]"}
	Error32173   = ApiError{Code: "32173", Message: "Receipt of order [{orderNo}] is not downloadable"}
	Error32175   = ApiError{Code: "32175", Message: "Exceed item [{itemId}] max count [{maxCount}] per user"}
	Error32176   = ApiError{Code: "32176", Message: "Exceed item [{itemId}] max count [{maxCount}]"}
	Error32177   = ApiError{Code: "32177", Message: "Order [{orderNo}] is not cancelable"}
	Error32178   = ApiError{Code: "32178", Message: "User [{userId}] already owned all durable items in flexible bundle [{bundleId}], namespace: [{namespace}]"}
	Error33045   = ApiError{Code: "33045", Message: "errors.net.accelbyte.platform.payment.payment_merchant_config_not_found"}
	Error33121   = ApiError{Code: "33121", Message: "Recurring payment failed with code: [{errorCode}] and message: [{errorMessage}] by provider: [{provider}]"}
	Error33122   = ApiError{Code: "33122", Message: "Subscription not match when create payment order"}
	Error33123   = ApiError{Code: "33123", Message: "Invalid zipcode"}
	Error33141   = ApiError{Code: "33141", Message: "Payment Order [{paymentOrderNo}] does not exist"}
	Error33145   = ApiError{Code: "33145", Message: "Recurring token not found"}
	Error33171   = ApiError{Code: "33171", Message: "Invalid payment order status [{status}] for payment order [{paymentOrderNo}]"}
	Error33172   = ApiError{Code: "33172", Message: "Payment order [{paymentOrderNo}] is not refundable"}
	Error33173   = ApiError{Code: "33173", Message: "ExtOrderNo [{extOrderNo}] already exists in namespace [{namespace}]"}
	Error33221   = ApiError{Code: "33221", Message: "TaxJar api token required"}
	Error33241   = ApiError{Code: "33241", Message: "Payment provider config [{id}] does not exist"}
	Error33242   = ApiError{Code: "33242", Message: "Payment merchant config [{id}] does not exist"}
	Error33243   = ApiError{Code: "33243", Message: "Payment callback config for [{namespace}] does not exist"}
	Error33271   = ApiError{Code: "33271", Message: "Payment provider config for namespace [{namespace}] and region [{region}] already exists"}
	Error33321   = ApiError{Code: "33321", Message: "Payment provider [{paymentProvider}] not support currency [{currency}]"}
	Error33322   = ApiError{Code: "33322", Message: "Payment provider [{paymentProvider}] not supported"}
	Error33332   = ApiError{Code: "33332", Message: "Amount too small, please contact administrator"}
	Error33333   = ApiError{Code: "33333", Message: "Neon Pay checkout payment order [{paymentOrderNo}] failed with message [{errMsg}]"}
	Error34021   = ApiError{Code: "34021", Message: "Reward data for namespace [{namespace}] is invalid"}
	Error34023   = ApiError{Code: "34023", Message: "Reward Item [{itemId}] with item type [{itemType}] is not supported for duration or endDate"}
	Error34027   = ApiError{Code: "34027", Message: "Reward Item [{sku}] with item type [{itemType}] is not supported for duration or endDate"}
	Error34041   = ApiError{Code: "34041", Message: "Reward [{rewardId}] does not exist in namespace [{namespace}]"}
	Error34042   = ApiError{Code: "34042", Message: "Reward item [{itemId}] does not exist in namespace [{namespace}]"}
	Error34043   = ApiError{Code: "34043", Message: "Reward with code [{rewardCode}] does not exist in namespace [{namespace}]"}
	Error34044   = ApiError{Code: "34044", Message: "Reward item [{sku}] does not exist in namespace [{namespace}]"}
	Error34071   = ApiError{Code: "34071", Message: "Reward with code [{rewardCode}] already exists in namespace [{namespace}]"}
	Error34072   = ApiError{Code: "34072", Message: "Duplicate reward condition [{rewardConditionName}] found in reward [{rewardCode}]"}
	Error34074   = ApiError{Code: "34074", Message: "Reward Item [{itemId}] duration and end date can’t be set at the same time"}
	Error34076   = ApiError{Code: "34076", Message: "Reward Item [{sku}] duration and end date can’t be set at the same time"}
	Error35123   = ApiError{Code: "35123", Message: "Wallet [{walletId}] is inactive"}
	Error35124   = ApiError{Code: "35124", Message: "Wallet [{currencyCode}] has insufficient balance"}
	Error35141   = ApiError{Code: "35141", Message: "Wallet [{walletId}] does not exist"}
	Error36141   = ApiError{Code: "36141", Message: "Currency [{currencyCode}] does not exist in namespace [{namespace}]"}
	Error36171   = ApiError{Code: "36171", Message: "Currency [{currencyCode}] already exists in namespace [{namespace}]"}
	Error36172   = ApiError{Code: "36172", Message: "Real Currency [{currencyCode}] not allowed in game namespace [{namespace}]"}
	Error37041   = ApiError{Code: "37041", Message: "Ticket booth [{boothName}] does not exist in namespace [{namespace}]"}
	Error37071   = ApiError{Code: "37071", Message: "Insufficient ticket in booth [{boothName}] in namespace [{namespace}]"}
	Error37121   = ApiError{Code: "37121", Message: "Invalid currency namespace [{namespace}] in discount config: {tips}"}
	Error37141   = ApiError{Code: "37141", Message: "Campaign [{campaignId}] does not exist in namespace [{namespace}]"}
	Error37142   = ApiError{Code: "37142", Message: "Code [{code}] does not exist in namespace [{namespace}]"}
	Error37143   = ApiError{Code: "37143", Message: "Batch name [{batchName}] does not exist for campaign [{campaignId}] in namespace [{namespace}]."}
	Error37144   = ApiError{Code: "37144", Message: "Campaign batch name does not exist for batch number [{batchNo}] campaign [{campaignId}] in namespace [{namespace}]."}
	Error37171   = ApiError{Code: "37171", Message: "Campaign [{name}] already exists in namespace [{namespace}]"}
	Error37172   = ApiError{Code: "37172", Message: "Campaign [{campaignId}] is inactive in namespace [{namespace}]"}
	Error37173   = ApiError{Code: "37173", Message: "Code [{code}] is inactive in namespace [{namespace}]"}
	Error37174   = ApiError{Code: "37174", Message: "Exceeded max redeem count per code [{maxCount}]"}
	Error37175   = ApiError{Code: "37175", Message: "Exceeded max redeem count per code per user [{maxCount}]"}
	Error37176   = ApiError{Code: "37176", Message: "Code [{code}] has been redeemed in namespace [{namespace}]"}
	Error37177   = ApiError{Code: "37177", Message: "Code redemption not started"}
	Error37178   = ApiError{Code: "37178", Message: "Code redemption already ended"}
	Error37179   = ApiError{Code: "37179", Message: "Exceeded max redeem count per campaign per user [{maxCount}]"}
	Error37180   = ApiError{Code: "37180", Message: "Code [{code}] already exists in namespace [{namespace}]"}
	Error37221   = ApiError{Code: "37221", Message: "Invalid key file"}
	Error37241   = ApiError{Code: "37241", Message: "Key group [{keyGroupId}] does not exist in namespace [{namespace}]"}
	Error37271   = ApiError{Code: "37271", Message: "Key group [{name}] already exists in namespace [{namespace}]"}
	Error38121   = ApiError{Code: "38121", Message: "Duplicate permanent item exists"}
	Error38122   = ApiError{Code: "38122", Message: "Subscription endDate required"}
	Error38128   = ApiError{Code: "38128", Message: "Cannot retry fulfillment with different payload. Please check the items list."}
	Error38129   = ApiError{Code: "38129", Message: "Cannot combine same item [{itemId}] with different [{fieldName}] value"}
	Error38130   = ApiError{Code: "38130", Message: "Cannot fulfill item with type [{itemType}] in item [{itemIdentity}]"}
	Error38141   = ApiError{Code: "38141", Message: "Fulfillment script does not exist"}
	Error38145   = ApiError{Code: "38145", Message: "Fulfillment with transactionId [{transactionId}] does not exist"}
	Error38171   = ApiError{Code: "38171", Message: "Fulfillment script already exists"}
	Error39121   = ApiError{Code: "39121", Message: "Apple iap receipt verify failed with status code [{statusCode}]"}
	Error39122   = ApiError{Code: "39122", Message: "Google iap receipt is invalid with status code [{statusCode}] and error message [{message}]"}
	Error39123   = ApiError{Code: "39123", Message: "IAP request is not in valid application"}
	Error39124   = ApiError{Code: "39124", Message: "IAP request platform [{platformId}] user id is not linked with current user"}
	Error39125   = ApiError{Code: "39125", Message: "Invalid platform [{platformId}] user token"}
	Error39126   = ApiError{Code: "39126", Message: "User id [{}] in namespace [{}] doesn't link platform [{}]"}
	Error39127   = ApiError{Code: "39127", Message: "Invalid service label [{serviceLabel}]"}
	Error39128   = ApiError{Code: "39128", Message: "Steam publisher key is invalid"}
	Error39129   = ApiError{Code: "39129", Message: "Steam app id is invalid"}
	Error39130   = ApiError{Code: "39130", Message: "Invalid playstation config: [{message}]"}
	Error39131   = ApiError{Code: "39131", Message: "Invalid Apple IAP config under namespace [{namespace}]: [{message}]"}
	Error39132   = ApiError{Code: "39132", Message: "Bad request for playstation under namespace [{namespace}], reason: [{reason}]."}
	Error39133   = ApiError{Code: "39133", Message: "Bad request for Oculus: [{reason}]"}
	Error39134   = ApiError{Code: "39134", Message: "Invalid Oculus IAP config under namespace [{namespace}]: [{message}]"}
	Error39135   = ApiError{Code: "39135", Message: "Invalid Google IAP config under namespace [{namespace}]: [{message}]"}
	Error39136   = ApiError{Code: "39136", Message: "Request Apple API failed with status code [{statusCode}] and error message [{message}]"}
	Error39137   = ApiError{Code: "39137", Message: "Verify Apple transaction failed with status [{status}] and error message [{message}]"}
	Error39138   = ApiError{Code: "39138", Message: "Apple IAP version mismatch detected: The current configuration is set to  [{configVersion}], but the API version is [{apiVersion}]. Please ensure that both the configuration and API versions are aligned"}
	Error39141   = ApiError{Code: "39141", Message: "Apple iap receipt of transaction [{transactionId}] for productId [{}] does not exist"}
	Error39142   = ApiError{Code: "39142", Message: "Apple IAP config not found in namespace [{namespace}]"}
	Error39143   = ApiError{Code: "39143", Message: "PlayStation IAP config not found in namespace [{namespace}]"}
	Error39144   = ApiError{Code: "39144", Message: "Steam IAP config not found in namespace [{namespace}]."}
	Error39145   = ApiError{Code: "39145", Message: "XBox IAP config not found in namespace [{namespace}]."}
	Error39146   = ApiError{Code: "39146", Message: "Oculus IAP config not found in namespace [{namespace}]."}
	Error39147   = ApiError{Code: "39147", Message: "Epic IAP config not found in namespace [{namespace}]."}
	Error39148   = ApiError{Code: "39148", Message: "Google IAP config not found in namespace [{namespace}]."}
	Error39149   = ApiError{Code: "39149", Message: "Third Party Subscription Transaction [{id}] not found for user [{userId}] in the namespace [{namespace}]."}
	Error39150   = ApiError{Code: "39150", Message: "Third Party User Subscription [{id}] not found for user [{userId}] in the namespace [{namespace}].."}
	Error39151   = ApiError{Code: "39151", Message: "IAP order no [{iapOrderNo}] not found in namespace [{namespace}]."}
	Error39171   = ApiError{Code: "39171", Message: "The bundle id in namespace [{namespace}] expect [{expected}] but was [{actual}]"}
	Error39172   = ApiError{Code: "39172", Message: "The order id in namespace [{namespace}] expect [{expected}] but was [{actual}]"}
	Error39173   = ApiError{Code: "39173", Message: "The purchase status of google play order [{orderId}] in namespace [{namespace}] expect [{expected}] but was [{actual}]"}
	Error39174   = ApiError{Code: "39174", Message: "The google iap purchase time of order [{orderId}] in namespace [{namespace}] expect [{expected}] but was [{actual}]"}
	Error39175   = ApiError{Code: "39175", Message: "Duplicate IAP item mapping, IAPType: [{iapType}] and id: [{iapId}]"}
	Error39183   = ApiError{Code: "39183", Message: "Steam transaction [{orderId}] is still pending or failed, status [{status}], please try it later"}
	Error39184   = ApiError{Code: "39184", Message: "Steam api exception with error code [{errorCode}] and error message [{message}]"}
	Error39185   = ApiError{Code: "39185", Message: "This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}]"}
	Error39221   = ApiError{Code: "39221", Message: "Invalid Xbox Business Partner Certificate or password: [{message}]"}
	Error39244   = ApiError{Code: "39244", Message: "Steam config does not exist"}
	Error39245   = ApiError{Code: "39245", Message: "Steam app id does not exist"}
	Error39321   = ApiError{Code: "39321", Message: "Invalid IAP item config namespace [{namespace}]: [{message}]"}
	Error39341   = ApiError{Code: "39341", Message: "IAP item config cannot be found in namespace [{namespace}]"}
	Error39441   = ApiError{Code: "39441", Message: "Platform dlc config cannot be found in namespace [{namespace}]"}
	Error39442   = ApiError{Code: "39442", Message: "DLC item config cannot be found in namespace [{namespace}]"}
	Error39471   = ApiError{Code: "39471", Message: "Duplicated dlc reward id [{dlcRewardId}] in namespace [{namespace}] "}
	Error39621   = ApiError{Code: "39621", Message: "Steam api common exception with status code [statusCode] details: [details]"}
	Error40121   = ApiError{Code: "40121", Message: "Item type [{itemType}] does not support"}
	Error40122   = ApiError{Code: "40122", Message: "Subscription already been subscribed by user"}
	Error40123   = ApiError{Code: "40123", Message: "Currency [{currencyCode}] does not support"}
	Error40125   = ApiError{Code: "40125", Message: "Subscription [{subscriptionId}] has no real currency billing account"}
	Error40141   = ApiError{Code: "40141", Message: "Subscription [{subscriptionId}] does not exist"}
	Error40171   = ApiError{Code: "40171", Message: "Subscription [{subscriptionId}] is not active"}
	Error40172   = ApiError{Code: "40172", Message: "Subscription [{subscriptionId}] is charging, waiting for payment notification"}
	Error40173   = ApiError{Code: "40173", Message: "Subscription [{subscriptionId}] current currency [{currentCurrency}] not match request currency [{requestCurrency}]"}
	Error41171   = ApiError{Code: "41171", Message: "Request has different payload on previous call"}
	Error41172   = ApiError{Code: "41172", Message: "Request has different user id on previous call"}
	Error49147   = ApiError{Code: "49147", Message: "Published season does not exist"}
	Error49183   = ApiError{Code: "49183", Message: "Pass item does not match published season pass"}
	Error49184   = ApiError{Code: "49184", Message: "Tier item does not match published season tier"}
	Error49185   = ApiError{Code: "49185", Message: "Season has not started"}
	Error49186   = ApiError{Code: "49186", Message: "Pass already owned"}
	Error49187   = ApiError{Code: "49187", Message: "Exceed max tier count"}
	Error394721  = ApiError{Code: "394721", Message: "Invalid platform DLC config namespace [{namespace}]: [{message}]"}
	Error1100001 = ApiError{Code: "1100001", Message: "record not found: inventory"}
)

type ApiError struct {
	Code    string
	Message string
}

func (e *ApiError) IsAvailable() bool {
	return e.Code != ""
}

type ApiResponse struct {
	IsSuccess   bool
	StatusCode  int
	ContentType *string
	Error       *ApiError
}

func (e *ApiError) Error() string {
	return fmt.Sprintf("accelbyte: %s %s", e.Code, e.Message)
}
