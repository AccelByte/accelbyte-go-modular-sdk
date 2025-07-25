// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package key_group

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

// Deprecated: 2025-07-16 - Use ListKeysStatus<EnumValue>Constant instead.
// Get the enum in ListKeysParams
const (
	ListKeysACQUIREDConstant = "ACQUIRED"
	ListKeysACTIVEConstant   = "ACTIVE"
)

// Get the enum in ListKeysParams
const (
	ListKeysStatusACQUIREDConstant = "ACQUIRED"
	ListKeysStatusACTIVEConstant   = "ACTIVE"
)

// NewListKeysParams creates a new ListKeysParams object
// with the default values initialized.
func NewListKeysParams() *ListKeysParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &ListKeysParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListKeysParamsWithTimeout creates a new ListKeysParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListKeysParamsWithTimeout(timeout time.Duration) *ListKeysParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &ListKeysParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewListKeysParamsWithContext creates a new ListKeysParams object
// with the default values initialized, and the ability to set a context for a request
func NewListKeysParamsWithContext(ctx context.Context) *ListKeysParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &ListKeysParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewListKeysParamsWithHTTPClient creates a new ListKeysParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListKeysParamsWithHTTPClient(client *http.Client) *ListKeysParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &ListKeysParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*ListKeysParams contains all the parameters to send to the API endpoint
for the list keys operation typically these are written to a http.Request
*/
type ListKeysParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*KeyGroupID*/
	KeyGroupID string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*Status*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list keys params
func (o *ListKeysParams) WithTimeout(timeout time.Duration) *ListKeysParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list keys params
func (o *ListKeysParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list keys params
func (o *ListKeysParams) WithContext(ctx context.Context) *ListKeysParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list keys params
func (o *ListKeysParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list keys params
func (o *ListKeysParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list keys params
func (o *ListKeysParams) WithHTTPClient(client *http.Client) *ListKeysParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list keys params
func (o *ListKeysParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list keys params
func (o *ListKeysParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListKeysParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithKeyGroupID adds the keyGroupID to the list keys params
func (o *ListKeysParams) WithKeyGroupID(keyGroupID string) *ListKeysParams {
	o.SetKeyGroupID(keyGroupID)
	return o
}

// SetKeyGroupID adds the keyGroupId to the list keys params
func (o *ListKeysParams) SetKeyGroupID(keyGroupID string) {
	o.KeyGroupID = keyGroupID
}

// WithNamespace adds the namespace to the list keys params
func (o *ListKeysParams) WithNamespace(namespace string) *ListKeysParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list keys params
func (o *ListKeysParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the list keys params
func (o *ListKeysParams) WithLimit(limit *int32) *ListKeysParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list keys params
func (o *ListKeysParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the list keys params
func (o *ListKeysParams) WithOffset(offset *int32) *ListKeysParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list keys params
func (o *ListKeysParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStatus adds the status to the list keys params
func (o *ListKeysParams) WithStatus(status *string) *ListKeysParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the list keys params
func (o *ListKeysParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *ListKeysParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param keyGroupId
	if err := r.SetPathParam("keyGroupId", o.KeyGroupID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
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
