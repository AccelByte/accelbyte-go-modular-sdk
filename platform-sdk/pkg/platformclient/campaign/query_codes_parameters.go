// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package campaign

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

// NewQueryCodesParams creates a new QueryCodesParams object
// with the default values initialized.
func NewQueryCodesParams() *QueryCodesParams {
	var (
		activeOnlyDefault    = bool(true)
		limitDefault         = int32(20)
		offsetDefault        = int32(0)
		withBatchNameDefault = bool(false)
	)
	return &QueryCodesParams{
		ActiveOnly:    &activeOnlyDefault,
		Limit:         &limitDefault,
		Offset:        &offsetDefault,
		WithBatchName: &withBatchNameDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryCodesParamsWithTimeout creates a new QueryCodesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryCodesParamsWithTimeout(timeout time.Duration) *QueryCodesParams {
	var (
		activeOnlyDefault    = bool(true)
		limitDefault         = int32(20)
		offsetDefault        = int32(0)
		withBatchNameDefault = bool(false)
	)
	return &QueryCodesParams{
		ActiveOnly:    &activeOnlyDefault,
		Limit:         &limitDefault,
		Offset:        &offsetDefault,
		WithBatchName: &withBatchNameDefault,

		timeout: timeout,
	}
}

// NewQueryCodesParamsWithContext creates a new QueryCodesParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryCodesParamsWithContext(ctx context.Context) *QueryCodesParams {
	var (
		activeOnlyDefault    = bool(true)
		limitDefault         = int32(20)
		offsetDefault        = int32(0)
		withBatchNameDefault = bool(false)
	)
	return &QueryCodesParams{
		ActiveOnly:    &activeOnlyDefault,
		Limit:         &limitDefault,
		Offset:        &offsetDefault,
		WithBatchName: &withBatchNameDefault,

		Context: ctx,
	}
}

// NewQueryCodesParamsWithHTTPClient creates a new QueryCodesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryCodesParamsWithHTTPClient(client *http.Client) *QueryCodesParams {
	var (
		activeOnlyDefault    = bool(true)
		limitDefault         = int32(20)
		offsetDefault        = int32(0)
		withBatchNameDefault = bool(false)
	)
	return &QueryCodesParams{
		ActiveOnly:    &activeOnlyDefault,
		Limit:         &limitDefault,
		Offset:        &offsetDefault,
		WithBatchName: &withBatchNameDefault,
		HTTPClient:    client,
	}
}

/*QueryCodesParams contains all the parameters to send to the API endpoint
for the query codes operation typically these are written to a http.Request
*/
type QueryCodesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CampaignID*/
	CampaignID string
	/*Namespace*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*BatchName*/
	BatchName *string
	/*BatchNo*/
	BatchNo []int32
	/*Code*/
	Code *string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*WithBatchName*/
	WithBatchName *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query codes params
func (o *QueryCodesParams) WithTimeout(timeout time.Duration) *QueryCodesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query codes params
func (o *QueryCodesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query codes params
func (o *QueryCodesParams) WithContext(ctx context.Context) *QueryCodesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query codes params
func (o *QueryCodesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query codes params
func (o *QueryCodesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query codes params
func (o *QueryCodesParams) WithHTTPClient(client *http.Client) *QueryCodesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query codes params
func (o *QueryCodesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query codes params
func (o *QueryCodesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryCodesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCampaignID adds the campaignID to the query codes params
func (o *QueryCodesParams) WithCampaignID(campaignID string) *QueryCodesParams {
	o.SetCampaignID(campaignID)
	return o
}

// SetCampaignID adds the campaignId to the query codes params
func (o *QueryCodesParams) SetCampaignID(campaignID string) {
	o.CampaignID = campaignID
}

// WithNamespace adds the namespace to the query codes params
func (o *QueryCodesParams) WithNamespace(namespace string) *QueryCodesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query codes params
func (o *QueryCodesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the query codes params
func (o *QueryCodesParams) WithActiveOnly(activeOnly *bool) *QueryCodesParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the query codes params
func (o *QueryCodesParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithBatchName_ adds the batchName to the query codes params
func (o *QueryCodesParams) WithBatchName_(batchName *string) *QueryCodesParams {
	o.SetBatchName(batchName)
	return o
}

// SetBatchName adds the batchName to the query codes params
func (o *QueryCodesParams) SetBatchName(batchName *string) {
	o.BatchName = batchName
}

// WithBatchNo adds the batchNo to the query codes params
func (o *QueryCodesParams) WithBatchNo(batchNo []int32) *QueryCodesParams {
	o.SetBatchNo(batchNo)
	return o
}

// SetBatchNo adds the batchNo to the query codes params
func (o *QueryCodesParams) SetBatchNo(batchNo []int32) {
	o.BatchNo = batchNo
}

// WithCode adds the code to the query codes params
func (o *QueryCodesParams) WithCode(code *string) *QueryCodesParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the query codes params
func (o *QueryCodesParams) SetCode(code *string) {
	o.Code = code
}

// WithLimit adds the limit to the query codes params
func (o *QueryCodesParams) WithLimit(limit *int32) *QueryCodesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query codes params
func (o *QueryCodesParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query codes params
func (o *QueryCodesParams) WithOffset(offset *int32) *QueryCodesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query codes params
func (o *QueryCodesParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithWithBatchName_ adds the withBatchName to the query codes params
func (o *QueryCodesParams) WithWithBatchName_(withBatchName *bool) *QueryCodesParams {
	o.SetWithBatchName(withBatchName)
	return o
}

// SetWithBatchName adds the withBatchName to the query codes params
func (o *QueryCodesParams) SetWithBatchName(withBatchName *bool) {
	o.WithBatchName = withBatchName
}

// WriteToRequest writes these params to a swagger request
func (o *QueryCodesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param campaignId
	if err := r.SetPathParam("campaignId", o.CampaignID); err != nil {
		return err
	}

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

	if o.BatchName != nil {

		// query param batchName
		var qrBatchName string
		if o.BatchName != nil {
			qrBatchName = *o.BatchName
		}
		qBatchName := qrBatchName
		if qBatchName != "" {
			if err := r.SetQueryParam("batchName", qBatchName); err != nil {
				return err
			}
		}

	}

	var valuesBatchNo []string
	for _, v := range o.BatchNo {
		valuesBatchNo = append(valuesBatchNo, swag.FormatInt32(v))
	}

	joinedBatchNo := swag.JoinByFormat(valuesBatchNo, "multi")
	// query array param batchNo
	if err := r.SetQueryParam("batchNo", joinedBatchNo...); err != nil {
		return err
	}

	if o.Code != nil {

		// query param code
		var qrCode string
		if o.Code != nil {
			qrCode = *o.Code
		}
		qCode := qrCode
		if qCode != "" {
			if err := r.SetQueryParam("code", qCode); err != nil {
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

	if o.WithBatchName != nil {

		// query param withBatchName
		var qrWithBatchName bool
		if o.WithBatchName != nil {
			qrWithBatchName = *o.WithBatchName
		}
		qWithBatchName := swag.FormatBool(qrWithBatchName)
		if qWithBatchName != "" {
			if err := r.SetQueryParam("withBatchName", qWithBatchName); err != nil {
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
