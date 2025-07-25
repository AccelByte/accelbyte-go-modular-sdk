// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package invoice

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// Deprecated: 2025-07-16 - Use DownloadInvoiceDetailsItemType<EnumValue>Constant instead.
// Get the enum in DownloadInvoiceDetailsParams
const (
	DownloadInvoiceDetailsAPPConstant          = "APP"
	DownloadInvoiceDetailsBUNDLEConstant       = "BUNDLE"
	DownloadInvoiceDetailsCODEConstant         = "CODE"
	DownloadInvoiceDetailsCOINSConstant        = "COINS"
	DownloadInvoiceDetailsEXTENSIONConstant    = "EXTENSION"
	DownloadInvoiceDetailsINGAMEITEMConstant   = "INGAMEITEM"
	DownloadInvoiceDetailsLOOTBOXConstant      = "LOOTBOX"
	DownloadInvoiceDetailsMEDIAConstant        = "MEDIA"
	DownloadInvoiceDetailsOPTIONBOXConstant    = "OPTIONBOX"
	DownloadInvoiceDetailsSEASONConstant       = "SEASON"
	DownloadInvoiceDetailsSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in DownloadInvoiceDetailsParams
const (
	DownloadInvoiceDetailsItemTypeAPPConstant          = "APP"
	DownloadInvoiceDetailsItemTypeBUNDLEConstant       = "BUNDLE"
	DownloadInvoiceDetailsItemTypeCODEConstant         = "CODE"
	DownloadInvoiceDetailsItemTypeCOINSConstant        = "COINS"
	DownloadInvoiceDetailsItemTypeEXTENSIONConstant    = "EXTENSION"
	DownloadInvoiceDetailsItemTypeINGAMEITEMConstant   = "INGAMEITEM"
	DownloadInvoiceDetailsItemTypeLOOTBOXConstant      = "LOOTBOX"
	DownloadInvoiceDetailsItemTypeMEDIAConstant        = "MEDIA"
	DownloadInvoiceDetailsItemTypeOPTIONBOXConstant    = "OPTIONBOX"
	DownloadInvoiceDetailsItemTypeSEASONConstant       = "SEASON"
	DownloadInvoiceDetailsItemTypeSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewDownloadInvoiceDetailsParams creates a new DownloadInvoiceDetailsParams object
// with the default values initialized.
func NewDownloadInvoiceDetailsParams() *DownloadInvoiceDetailsParams {
	var ()
	return &DownloadInvoiceDetailsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDownloadInvoiceDetailsParamsWithTimeout creates a new DownloadInvoiceDetailsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDownloadInvoiceDetailsParamsWithTimeout(timeout time.Duration) *DownloadInvoiceDetailsParams {
	var ()
	return &DownloadInvoiceDetailsParams{

		timeout: timeout,
	}
}

// NewDownloadInvoiceDetailsParamsWithContext creates a new DownloadInvoiceDetailsParams object
// with the default values initialized, and the ability to set a context for a request
func NewDownloadInvoiceDetailsParamsWithContext(ctx context.Context) *DownloadInvoiceDetailsParams {
	var ()
	return &DownloadInvoiceDetailsParams{

		Context: ctx,
	}
}

// NewDownloadInvoiceDetailsParamsWithHTTPClient creates a new DownloadInvoiceDetailsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDownloadInvoiceDetailsParamsWithHTTPClient(client *http.Client) *DownloadInvoiceDetailsParams {
	var ()
	return &DownloadInvoiceDetailsParams{
		HTTPClient: client,
	}
}

/*DownloadInvoiceDetailsParams contains all the parameters to send to the API endpoint
for the download invoice details operation typically these are written to a http.Request
*/
type DownloadInvoiceDetailsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*EndTime
	  end time is exclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	EndTime string
	/*Feature*/
	Feature string
	/*ItemID*/
	ItemID string
	/*ItemType*/
	ItemType string
	/*StartTime
	  start time is inclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	StartTime string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the download invoice details params
func (o *DownloadInvoiceDetailsParams) WithTimeout(timeout time.Duration) *DownloadInvoiceDetailsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the download invoice details params
func (o *DownloadInvoiceDetailsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the download invoice details params
func (o *DownloadInvoiceDetailsParams) WithContext(ctx context.Context) *DownloadInvoiceDetailsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the download invoice details params
func (o *DownloadInvoiceDetailsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the download invoice details params
func (o *DownloadInvoiceDetailsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the download invoice details params
func (o *DownloadInvoiceDetailsParams) WithHTTPClient(client *http.Client) *DownloadInvoiceDetailsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the download invoice details params
func (o *DownloadInvoiceDetailsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the download invoice details params
func (o *DownloadInvoiceDetailsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DownloadInvoiceDetailsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the download invoice details params
func (o *DownloadInvoiceDetailsParams) WithNamespace(namespace string) *DownloadInvoiceDetailsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the download invoice details params
func (o *DownloadInvoiceDetailsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEndTime adds the endTime to the download invoice details params
func (o *DownloadInvoiceDetailsParams) WithEndTime(endTime string) *DownloadInvoiceDetailsParams {
	o.SetEndTime(endTime)
	return o
}

// SetEndTime adds the endTime to the download invoice details params
func (o *DownloadInvoiceDetailsParams) SetEndTime(endTime string) {
	o.EndTime = endTime
}

// WithFeature adds the feature to the download invoice details params
func (o *DownloadInvoiceDetailsParams) WithFeature(feature string) *DownloadInvoiceDetailsParams {
	o.SetFeature(feature)
	return o
}

// SetFeature adds the feature to the download invoice details params
func (o *DownloadInvoiceDetailsParams) SetFeature(feature string) {
	o.Feature = feature
}

// WithItemID adds the itemID to the download invoice details params
func (o *DownloadInvoiceDetailsParams) WithItemID(itemID string) *DownloadInvoiceDetailsParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the download invoice details params
func (o *DownloadInvoiceDetailsParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithItemType adds the itemType to the download invoice details params
func (o *DownloadInvoiceDetailsParams) WithItemType(itemType string) *DownloadInvoiceDetailsParams {
	o.SetItemType(itemType)
	return o
}

// SetItemType adds the itemType to the download invoice details params
func (o *DownloadInvoiceDetailsParams) SetItemType(itemType string) {
	o.ItemType = itemType
}

// WithStartTime adds the startTime to the download invoice details params
func (o *DownloadInvoiceDetailsParams) WithStartTime(startTime string) *DownloadInvoiceDetailsParams {
	o.SetStartTime(startTime)
	return o
}

// SetStartTime adds the startTime to the download invoice details params
func (o *DownloadInvoiceDetailsParams) SetStartTime(startTime string) {
	o.StartTime = startTime
}

// WriteToRequest writes these params to a swagger request
func (o *DownloadInvoiceDetailsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param endTime
	qrEndTime := o.EndTime
	qEndTime := qrEndTime
	if qEndTime != "" {
		if err := r.SetQueryParam("endTime", qEndTime); err != nil {
			return err
		}
	}

	// query param feature
	qrFeature := o.Feature
	qFeature := qrFeature
	if qFeature != "" {
		if err := r.SetQueryParam("feature", qFeature); err != nil {
			return err
		}
	}

	// query param itemId
	qrItemID := o.ItemID
	qItemID := qrItemID
	if qItemID != "" {
		if err := r.SetQueryParam("itemId", qItemID); err != nil {
			return err
		}
	}

	// query param itemType
	qrItemType := o.ItemType
	qItemType := qrItemType
	if qItemType != "" {
		if err := r.SetQueryParam("itemType", qItemType); err != nil {
			return err
		}
	}

	// query param startTime
	qrStartTime := o.StartTime
	qStartTime := qrStartTime
	if qStartTime != "" {
		if err := r.SetQueryParam("startTime", qStartTime); err != nil {
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
