// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

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

// NewGetRolesParams creates a new GetRolesParams object
// with the default values initialized.
func NewGetRolesParams() *GetRolesParams {
	var ()
	return &GetRolesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetRolesParamsWithTimeout creates a new GetRolesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetRolesParamsWithTimeout(timeout time.Duration) *GetRolesParams {
	var ()
	return &GetRolesParams{

		timeout: timeout,
	}
}

// NewGetRolesParamsWithContext creates a new GetRolesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetRolesParamsWithContext(ctx context.Context) *GetRolesParams {
	var ()
	return &GetRolesParams{

		Context: ctx,
	}
}

// NewGetRolesParamsWithHTTPClient creates a new GetRolesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetRolesParamsWithHTTPClient(client *http.Client) *GetRolesParams {
	var ()
	return &GetRolesParams{
		HTTPClient: client,
	}
}

/*GetRolesParams contains all the parameters to send to the API endpoint
for the get roles operation typically these are written to a http.Request
*/
type GetRolesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*IsWildcard
	    - true if the expected result should only returns records with wildcard = true
	- false if the expected result should only returns records with wildcard = false
	- empty (omitted) if the expected result should returns records with no wildcard filter at all


	*/
	IsWildcard *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get roles params
func (o *GetRolesParams) WithTimeout(timeout time.Duration) *GetRolesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get roles params
func (o *GetRolesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get roles params
func (o *GetRolesParams) WithContext(ctx context.Context) *GetRolesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get roles params
func (o *GetRolesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get roles params
func (o *GetRolesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get roles params
func (o *GetRolesParams) WithHTTPClient(client *http.Client) *GetRolesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get roles params
func (o *GetRolesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get roles params
func (o *GetRolesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetRolesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithIsWildcard adds the isWildcard to the get roles params
func (o *GetRolesParams) WithIsWildcard(isWildcard *string) *GetRolesParams {
	o.SetIsWildcard(isWildcard)
	return o
}

// SetIsWildcard adds the isWildcard to the get roles params
func (o *GetRolesParams) SetIsWildcard(isWildcard *string) {
	o.IsWildcard = isWildcard
}

// WriteToRequest writes these params to a swagger request
func (o *GetRolesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.IsWildcard != nil {

		// query param isWildcard
		var qrIsWildcard string
		if o.IsWildcard != nil {
			qrIsWildcard = *o.IsWildcard
		}
		qIsWildcard := qrIsWildcard
		if qIsWildcard != "" {
			if err := r.SetQueryParam("isWildcard", qIsWildcard); err != nil {
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
