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

// Deprecated: 2025-07-16 - Use SearchItemsItemType<EnumValue>Constant instead.
// Get the enum in SearchItemsParams
const (
	SearchItemsAPPConstant          = "APP"
	SearchItemsBUNDLEConstant       = "BUNDLE"
	SearchItemsCODEConstant         = "CODE"
	SearchItemsCOINSConstant        = "COINS"
	SearchItemsEXTENSIONConstant    = "EXTENSION"
	SearchItemsINGAMEITEMConstant   = "INGAMEITEM"
	SearchItemsLOOTBOXConstant      = "LOOTBOX"
	SearchItemsMEDIAConstant        = "MEDIA"
	SearchItemsOPTIONBOXConstant    = "OPTIONBOX"
	SearchItemsSEASONConstant       = "SEASON"
	SearchItemsSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in SearchItemsParams
const (
	SearchItemsItemTypeAPPConstant          = "APP"
	SearchItemsItemTypeBUNDLEConstant       = "BUNDLE"
	SearchItemsItemTypeCODEConstant         = "CODE"
	SearchItemsItemTypeCOINSConstant        = "COINS"
	SearchItemsItemTypeEXTENSIONConstant    = "EXTENSION"
	SearchItemsItemTypeINGAMEITEMConstant   = "INGAMEITEM"
	SearchItemsItemTypeLOOTBOXConstant      = "LOOTBOX"
	SearchItemsItemTypeMEDIAConstant        = "MEDIA"
	SearchItemsItemTypeOPTIONBOXConstant    = "OPTIONBOX"
	SearchItemsItemTypeSEASONConstant       = "SEASON"
	SearchItemsItemTypeSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewSearchItemsParams creates a new SearchItemsParams object
// with the default values initialized.
func NewSearchItemsParams() *SearchItemsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
		sortByDefault     = string("name:asc,createdAt:asc")
	)
	return &SearchItemsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewSearchItemsParamsWithTimeout creates a new SearchItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSearchItemsParamsWithTimeout(timeout time.Duration) *SearchItemsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
		sortByDefault     = string("name:asc,createdAt:asc")
	)
	return &SearchItemsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,

		timeout: timeout,
	}
}

// NewSearchItemsParamsWithContext creates a new SearchItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewSearchItemsParamsWithContext(ctx context.Context) *SearchItemsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
		sortByDefault     = string("name:asc,createdAt:asc")
	)
	return &SearchItemsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,

		Context: ctx,
	}
}

// NewSearchItemsParamsWithHTTPClient creates a new SearchItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSearchItemsParamsWithHTTPClient(client *http.Client) *SearchItemsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
		sortByDefault     = string("name:asc,createdAt:asc")
	)
	return &SearchItemsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*SearchItemsParams contains all the parameters to send to the API endpoint
for the search items operation typically these are written to a http.Request
*/
type SearchItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
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
	/*SortBy
	  default is name:asc,createdAt:asc, allow values: [name, name:asc, name:desc, createdAt, createdAt:asc, createdAt:desc, updatedAt, updatedAt:asc, updatedAt:desc, displayOrder, displayOrder:asc, displayOrder:desc],and support sort group, eg: sortBy=name:asc,createdAt:desc. Make sure to always use more than one sort if the first sort is not an unique valuefor example, if you wish to sort by displayOrder, make sure to include other sort such as name or createdAt after the first sort, eg: displayOrder:asc,name:asc

	*/
	SortBy *string
	/*StoreID
	  default is published store id

	*/
	StoreID *string
	/*Keyword*/
	Keyword string
	/*Language*/
	Language string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the search items params
func (o *SearchItemsParams) WithTimeout(timeout time.Duration) *SearchItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the search items params
func (o *SearchItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the search items params
func (o *SearchItemsParams) WithContext(ctx context.Context) *SearchItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the search items params
func (o *SearchItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the search items params
func (o *SearchItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the search items params
func (o *SearchItemsParams) WithHTTPClient(client *http.Client) *SearchItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the search items params
func (o *SearchItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the search items params
func (o *SearchItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SearchItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the search items params
func (o *SearchItemsParams) WithNamespace(namespace string) *SearchItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the search items params
func (o *SearchItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the search items params
func (o *SearchItemsParams) WithActiveOnly(activeOnly *bool) *SearchItemsParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the search items params
func (o *SearchItemsParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithItemType adds the itemType to the search items params
func (o *SearchItemsParams) WithItemType(itemType *string) *SearchItemsParams {
	o.SetItemType(itemType)
	return o
}

// SetItemType adds the itemType to the search items params
func (o *SearchItemsParams) SetItemType(itemType *string) {
	o.ItemType = itemType
}

// WithLimit adds the limit to the search items params
func (o *SearchItemsParams) WithLimit(limit *int32) *SearchItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the search items params
func (o *SearchItemsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the search items params
func (o *SearchItemsParams) WithOffset(offset *int32) *SearchItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the search items params
func (o *SearchItemsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the search items params
func (o *SearchItemsParams) WithSortBy(sortBy *string) *SearchItemsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the search items params
func (o *SearchItemsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStoreID adds the storeID to the search items params
func (o *SearchItemsParams) WithStoreID(storeID *string) *SearchItemsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the search items params
func (o *SearchItemsParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithKeyword adds the keyword to the search items params
func (o *SearchItemsParams) WithKeyword(keyword string) *SearchItemsParams {
	o.SetKeyword(keyword)
	return o
}

// SetKeyword adds the keyword to the search items params
func (o *SearchItemsParams) SetKeyword(keyword string) {
	o.Keyword = keyword
}

// WithLanguage adds the language to the search items params
func (o *SearchItemsParams) WithLanguage(language string) *SearchItemsParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the search items params
func (o *SearchItemsParams) SetLanguage(language string) {
	o.Language = language
}

// WriteToRequest writes these params to a swagger request
func (o *SearchItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.SortBy != nil {

		// query param sortBy
		var qrSortBy string
		if o.SortBy != nil {
			qrSortBy = *o.SortBy
		}
		qSortBy := qrSortBy
		if qSortBy != "" {
			if err := r.SetQueryParam("sortBy", qSortBy); err != nil {
				return err
			}
		}

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

	// query param keyword
	qrKeyword := o.Keyword
	qKeyword := qrKeyword
	if qKeyword != "" {
		if err := r.SetQueryParam("keyword", qKeyword); err != nil {
			return err
		}
	}

	// query param language
	qrLanguage := o.Language
	qLanguage := qrLanguage
	if qLanguage != "" {
		if err := r.SetQueryParam("language", qLanguage); err != nil {
			return err
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
