// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// Deprecated: 2025-07-16 - Use QueryItemsAppType<EnumValue>Constant instead.
// Get the enum in QueryItemsParams
const (
	QueryItemsDEMOConstant     = "DEMO"
	QueryItemsDLCConstant      = "DLC"
	QueryItemsGAMEConstant     = "GAME"
	QueryItemsSOFTWAREConstant = "SOFTWARE"
)

// Deprecated: 2025-07-16 - Use QueryItemsItemType<EnumValue>Constant instead.
// Get the enum in QueryItemsParams
const (
	QueryItemsAPPConstant          = "APP"
	QueryItemsBUNDLEConstant       = "BUNDLE"
	QueryItemsCODEConstant         = "CODE"
	QueryItemsCOINSConstant        = "COINS"
	QueryItemsEXTENSIONConstant    = "EXTENSION"
	QueryItemsINGAMEITEMConstant   = "INGAMEITEM"
	QueryItemsLOOTBOXConstant      = "LOOTBOX"
	QueryItemsMEDIAConstant        = "MEDIA"
	QueryItemsOPTIONBOXConstant    = "OPTIONBOX"
	QueryItemsSEASONConstant       = "SEASON"
	QueryItemsSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Deprecated: 2025-07-16 - Use QueryItemsSortBy<EnumValue>Constant instead.
// Get the enum in QueryItemsParams
const (
	QueryItemsNameConstant             = "name"
	QueryItemsNameAscConstant          = "name:asc"
	QueryItemsNameDescConstant         = "name:desc"
	QueryItemsCreatedAtConstant        = "createdAt"
	QueryItemsCreatedAtAscConstant     = "createdAt:asc"
	QueryItemsCreatedAtDescConstant    = "createdAt:desc"
	QueryItemsUpdatedAtConstant        = "updatedAt"
	QueryItemsUpdatedAtAscConstant     = "updatedAt:asc"
	QueryItemsUpdatedAtDescConstant    = "updatedAt:desc"
	QueryItemsDisplayOrderConstant     = "displayOrder"
	QueryItemsDisplayOrderAscConstant  = "displayOrder:asc"
	QueryItemsDisplayOrderDescConstant = "displayOrder:desc"
)

// Get the enum in QueryItemsParams
const (
	QueryItemsAppTypeDEMOConstant     = "DEMO"
	QueryItemsAppTypeDLCConstant      = "DLC"
	QueryItemsAppTypeGAMEConstant     = "GAME"
	QueryItemsAppTypeSOFTWAREConstant = "SOFTWARE"
)

// Get the enum in QueryItemsParams
const (
	QueryItemsItemTypeAPPConstant          = "APP"
	QueryItemsItemTypeBUNDLEConstant       = "BUNDLE"
	QueryItemsItemTypeCODEConstant         = "CODE"
	QueryItemsItemTypeCOINSConstant        = "COINS"
	QueryItemsItemTypeEXTENSIONConstant    = "EXTENSION"
	QueryItemsItemTypeINGAMEITEMConstant   = "INGAMEITEM"
	QueryItemsItemTypeLOOTBOXConstant      = "LOOTBOX"
	QueryItemsItemTypeMEDIAConstant        = "MEDIA"
	QueryItemsItemTypeOPTIONBOXConstant    = "OPTIONBOX"
	QueryItemsItemTypeSEASONConstant       = "SEASON"
	QueryItemsItemTypeSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in QueryItemsParams
const (
	QueryItemsSortByNameConstant             = "name"
	QueryItemsSortByNameAscConstant          = "name:asc"
	QueryItemsSortByNameDescConstant         = "name:desc"
	QueryItemsSortByCreatedAtConstant        = "createdAt"
	QueryItemsSortByCreatedAtAscConstant     = "createdAt:asc"
	QueryItemsSortByCreatedAtDescConstant    = "createdAt:desc"
	QueryItemsSortByUpdatedAtConstant        = "updatedAt"
	QueryItemsSortByUpdatedAtAscConstant     = "updatedAt:asc"
	QueryItemsSortByUpdatedAtDescConstant    = "updatedAt:desc"
	QueryItemsSortByDisplayOrderConstant     = "displayOrder"
	QueryItemsSortByDisplayOrderAscConstant  = "displayOrder:asc"
	QueryItemsSortByDisplayOrderDescConstant = "displayOrder:desc"
)

// NewQueryItemsParams creates a new QueryItemsParams object
// with the default values initialized.
func NewQueryItemsParams() *QueryItemsParams {
	var (
		activeOnlyDefault             = bool(true)
		includeSubCategoryItemDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
		sortByDefault                 = []string{"nameAsc", "displayOrderAsc"}
	)
	return &QueryItemsParams{
		ActiveOnly:             &activeOnlyDefault,
		IncludeSubCategoryItem: &includeSubCategoryItemDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		SortBy:                 sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryItemsParamsWithTimeout creates a new QueryItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryItemsParamsWithTimeout(timeout time.Duration) *QueryItemsParams {
	var (
		activeOnlyDefault             = bool(true)
		includeSubCategoryItemDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
		sortByDefault                 = []string{"nameAsc", "displayOrderAsc"}
	)
	return &QueryItemsParams{
		ActiveOnly:             &activeOnlyDefault,
		IncludeSubCategoryItem: &includeSubCategoryItemDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		SortBy:                 sortByDefault,

		timeout: timeout,
	}
}

// NewQueryItemsParamsWithContext creates a new QueryItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryItemsParamsWithContext(ctx context.Context) *QueryItemsParams {
	var (
		activeOnlyDefault             = bool(true)
		includeSubCategoryItemDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
		sortByDefault                 = []string{"nameAsc", "displayOrderAsc"}
	)
	return &QueryItemsParams{
		ActiveOnly:             &activeOnlyDefault,
		IncludeSubCategoryItem: &includeSubCategoryItemDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		SortBy:                 sortByDefault,

		Context: ctx,
	}
}

// NewQueryItemsParamsWithHTTPClient creates a new QueryItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryItemsParamsWithHTTPClient(client *http.Client) *QueryItemsParams {
	var (
		activeOnlyDefault             = bool(true)
		includeSubCategoryItemDefault = bool(false)
		limitDefault                  = int32(20)
		offsetDefault                 = int32(0)
		sortByDefault                 = []string{"nameAsc", "displayOrderAsc"}
	)
	return &QueryItemsParams{
		ActiveOnly:             &activeOnlyDefault,
		IncludeSubCategoryItem: &includeSubCategoryItemDefault,
		Limit:                  &limitDefault,
		Offset:                 &offsetDefault,
		SortBy:                 sortByDefault,
		HTTPClient:             client,
	}
}

/*QueryItemsParams contains all the parameters to send to the API endpoint
for the query items operation typically these are written to a http.Request
*/
type QueryItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*AppType*/
	AppType *string
	/*AvailableDate
	  allowed format: \d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z , filter date include(purchaseAt, expireAt)

	*/
	AvailableDate *string
	/*BaseAppID*/
	BaseAppID *string
	/*CategoryPath
	  category path

	*/
	CategoryPath *string
	/*Features
	  features, separate multiple value by commas parameter

	*/
	Features *string
	/*IncludeSubCategoryItem
	  default is false, only available when search by category path, it will return all of the items(includes sub category path) under this category path

	*/
	IncludeSubCategoryItem *bool
	/*ItemType*/
	ItemType *string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset
	  offset

	*/
	Offset *int32
	/*Region
	  exist in region

	*/
	Region *string
	/*SortBy
	  default is name:asc,displayOrder:asc, allow values: [name, name:asc, name:desc, createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc, displayOrder, displayOrder:asc, displayOrder:desc],and support sort group, eg: sortBy=name:asc,createdAt:desc. Make sure to always use more than one sort if the first sort is not an unique valuefor example, if you wish to sort by displayOrder, make sure to include other sort such as name or createdAt after the first sort, eg: displayOrder:asc,name:asc

	*/
	SortBy []string
	/*StoreID
	  default is published store id

	*/
	StoreID *string
	/*Tags
	  tags, separate multiple value by commas parameter

	*/
	Tags *string
	/*TargetNamespace
	  targetNamespace

	*/
	TargetNamespace *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query items params
func (o *QueryItemsParams) WithTimeout(timeout time.Duration) *QueryItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query items params
func (o *QueryItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query items params
func (o *QueryItemsParams) WithContext(ctx context.Context) *QueryItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query items params
func (o *QueryItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query items params
func (o *QueryItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query items params
func (o *QueryItemsParams) WithHTTPClient(client *http.Client) *QueryItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query items params
func (o *QueryItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query items params
func (o *QueryItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query items params
func (o *QueryItemsParams) WithNamespace(namespace string) *QueryItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query items params
func (o *QueryItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the query items params
func (o *QueryItemsParams) WithActiveOnly(activeOnly *bool) *QueryItemsParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the query items params
func (o *QueryItemsParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithAppType adds the appType to the query items params
func (o *QueryItemsParams) WithAppType(appType *string) *QueryItemsParams {
	o.SetAppType(appType)
	return o
}

// SetAppType adds the appType to the query items params
func (o *QueryItemsParams) SetAppType(appType *string) {
	o.AppType = appType
}

// WithAvailableDate adds the availableDate to the query items params
func (o *QueryItemsParams) WithAvailableDate(availableDate *string) *QueryItemsParams {
	o.SetAvailableDate(availableDate)
	return o
}

// SetAvailableDate adds the availableDate to the query items params
func (o *QueryItemsParams) SetAvailableDate(availableDate *string) {
	o.AvailableDate = availableDate
}

// WithBaseAppID adds the baseAppID to the query items params
func (o *QueryItemsParams) WithBaseAppID(baseAppID *string) *QueryItemsParams {
	o.SetBaseAppID(baseAppID)
	return o
}

// SetBaseAppID adds the baseAppId to the query items params
func (o *QueryItemsParams) SetBaseAppID(baseAppID *string) {
	o.BaseAppID = baseAppID
}

// WithCategoryPath adds the categoryPath to the query items params
func (o *QueryItemsParams) WithCategoryPath(categoryPath *string) *QueryItemsParams {
	o.SetCategoryPath(categoryPath)
	return o
}

// SetCategoryPath adds the categoryPath to the query items params
func (o *QueryItemsParams) SetCategoryPath(categoryPath *string) {
	o.CategoryPath = categoryPath
}

// WithFeatures adds the features to the query items params
func (o *QueryItemsParams) WithFeatures(features *string) *QueryItemsParams {
	o.SetFeatures(features)
	return o
}

// SetFeatures adds the features to the query items params
func (o *QueryItemsParams) SetFeatures(features *string) {
	o.Features = features
}

// WithIncludeSubCategoryItem adds the includeSubCategoryItem to the query items params
func (o *QueryItemsParams) WithIncludeSubCategoryItem(includeSubCategoryItem *bool) *QueryItemsParams {
	o.SetIncludeSubCategoryItem(includeSubCategoryItem)
	return o
}

// SetIncludeSubCategoryItem adds the includeSubCategoryItem to the query items params
func (o *QueryItemsParams) SetIncludeSubCategoryItem(includeSubCategoryItem *bool) {
	o.IncludeSubCategoryItem = includeSubCategoryItem
}

// WithItemType adds the itemType to the query items params
func (o *QueryItemsParams) WithItemType(itemType *string) *QueryItemsParams {
	o.SetItemType(itemType)
	return o
}

// SetItemType adds the itemType to the query items params
func (o *QueryItemsParams) SetItemType(itemType *string) {
	o.ItemType = itemType
}

// WithLimit adds the limit to the query items params
func (o *QueryItemsParams) WithLimit(limit *int32) *QueryItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query items params
func (o *QueryItemsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query items params
func (o *QueryItemsParams) WithOffset(offset *int32) *QueryItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query items params
func (o *QueryItemsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithRegion adds the region to the query items params
func (o *QueryItemsParams) WithRegion(region *string) *QueryItemsParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the query items params
func (o *QueryItemsParams) SetRegion(region *string) {
	o.Region = region
}

// WithSortBy adds the sortBy to the query items params
func (o *QueryItemsParams) WithSortBy(sortBy []string) *QueryItemsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the query items params
func (o *QueryItemsParams) SetSortBy(sortBy []string) {
	o.SortBy = sortBy
}

// WithStoreID adds the storeID to the query items params
func (o *QueryItemsParams) WithStoreID(storeID *string) *QueryItemsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the query items params
func (o *QueryItemsParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithTags adds the tags to the query items params
func (o *QueryItemsParams) WithTags(tags *string) *QueryItemsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the query items params
func (o *QueryItemsParams) SetTags(tags *string) {
	o.Tags = tags
}

// WithTargetNamespace adds the targetNamespace to the query items params
func (o *QueryItemsParams) WithTargetNamespace(targetNamespace *string) *QueryItemsParams {
	o.SetTargetNamespace(targetNamespace)
	return o
}

// SetTargetNamespace adds the targetNamespace to the query items params
func (o *QueryItemsParams) SetTargetNamespace(targetNamespace *string) {
	o.TargetNamespace = targetNamespace
}

// WriteToRequest writes these params to a swagger request
func (o *QueryItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

	}

	if o.AppType != nil {

		// query param appType
		var qrAppType string
		if o.AppType != nil {
			qrAppType = *o.AppType
		}
		qAppType := qrAppType
		if qAppType != "" {
			if err := r.SetQueryParam("appType", qAppType); err != nil {
				return err
			}
		}

	}

	if o.AvailableDate != nil {

		// query param availableDate
		var qrAvailableDate string
		if o.AvailableDate != nil {
			qrAvailableDate = *o.AvailableDate
		}
		qAvailableDate := qrAvailableDate
		if qAvailableDate != "" {
			if err := r.SetQueryParam("availableDate", qAvailableDate); err != nil {
				return err
			}
		}

	}

	if o.BaseAppID != nil {

		// query param baseAppId
		var qrBaseAppID string
		if o.BaseAppID != nil {
			qrBaseAppID = *o.BaseAppID
		}
		qBaseAppID := qrBaseAppID
		if qBaseAppID != "" {
			if err := r.SetQueryParam("baseAppId", qBaseAppID); err != nil {
				return err
			}
		}

	}

	if o.CategoryPath != nil {

		// query param categoryPath
		var qrCategoryPath string
		if o.CategoryPath != nil {
			qrCategoryPath = *o.CategoryPath
		}
		qCategoryPath := qrCategoryPath
		if qCategoryPath != "" {
			if err := r.SetQueryParam("categoryPath", qCategoryPath); err != nil {
				return err
			}
		}

	}

	if o.Features != nil {

		// query param features
		var qrFeatures string
		if o.Features != nil {
			qrFeatures = *o.Features
		}
		qFeatures := qrFeatures
		if qFeatures != "" {
			if err := r.SetQueryParam("features", qFeatures); err != nil {
				return err
			}
		}

	}

	if o.IncludeSubCategoryItem != nil {

		// query param includeSubCategoryItem
		var qrIncludeSubCategoryItem bool
		if o.IncludeSubCategoryItem != nil {
			qrIncludeSubCategoryItem = *o.IncludeSubCategoryItem
		}
		qIncludeSubCategoryItem := swag.FormatBool(qrIncludeSubCategoryItem)
		if qIncludeSubCategoryItem != "" {
			if err := r.SetQueryParam("includeSubCategoryItem", qIncludeSubCategoryItem); err != nil {
				return err
			}
		}

	}

	if o.ItemType != nil {

		// query param itemType
		var qrItemType string
		if o.ItemType != nil {
			qrItemType = *o.ItemType
		}
		qItemType := qrItemType
		if qItemType != "" {
			if err := r.SetQueryParam("itemType", qItemType); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

	}

	valuesSortBy := o.SortBy

	joinedSortBy := swag.JoinByFormat(valuesSortBy, "csv")
	// query array param sortBy
	if err := r.SetQueryParam("sortBy", joinedSortBy...); err != nil {
		return err
	}

	if o.StoreID != nil {

		// query param storeId
		var qrStoreID string
		if o.StoreID != nil {
			qrStoreID = *o.StoreID
		}
		qStoreID := qrStoreID
		if qStoreID != "" {
			if err := r.SetQueryParam("storeId", qStoreID); err != nil {
				return err
			}
		}

	}

	if o.Tags != nil {

		// query param tags
		var qrTags string
		if o.Tags != nil {
			qrTags = *o.Tags
		}
		qTags := qrTags
		if qTags != "" {
			if err := r.SetQueryParam("tags", qTags); err != nil {
				return err
			}
		}

	}

	if o.TargetNamespace != nil {

		// query param targetNamespace
		var qrTargetNamespace string
		if o.TargetNamespace != nil {
			qrTargetNamespace = *o.TargetNamespace
		}
		qTargetNamespace := qrTargetNamespace
		if qTargetNamespace != "" {
			if err := r.SetQueryParam("targetNamespace", qTargetNamespace); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
