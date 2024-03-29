// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_extension_categories_and_auto_moderation_actions

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

// NewAdminFindActionListParams creates a new AdminFindActionListParams object
// with the default values initialized.
func NewAdminFindActionListParams() *AdminFindActionListParams {
	var ()
	return &AdminFindActionListParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminFindActionListParamsWithTimeout creates a new AdminFindActionListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminFindActionListParamsWithTimeout(timeout time.Duration) *AdminFindActionListParams {
	var ()
	return &AdminFindActionListParams{

		timeout: timeout,
	}
}

// NewAdminFindActionListParamsWithContext creates a new AdminFindActionListParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminFindActionListParamsWithContext(ctx context.Context) *AdminFindActionListParams {
	var ()
	return &AdminFindActionListParams{

		Context: ctx,
	}
}

// NewAdminFindActionListParamsWithHTTPClient creates a new AdminFindActionListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminFindActionListParamsWithHTTPClient(client *http.Client) *AdminFindActionListParams {
	var ()
	return &AdminFindActionListParams{
		HTTPClient: client,
	}
}

/*AdminFindActionListParams contains all the parameters to send to the API endpoint
for the admin find action list operation typically these are written to a http.Request
*/
type AdminFindActionListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin find action list params
func (o *AdminFindActionListParams) WithTimeout(timeout time.Duration) *AdminFindActionListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin find action list params
func (o *AdminFindActionListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin find action list params
func (o *AdminFindActionListParams) WithContext(ctx context.Context) *AdminFindActionListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin find action list params
func (o *AdminFindActionListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin find action list params
func (o *AdminFindActionListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin find action list params
func (o *AdminFindActionListParams) WithHTTPClient(client *http.Client) *AdminFindActionListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin find action list params
func (o *AdminFindActionListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin find action list params
func (o *AdminFindActionListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminFindActionListParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AdminFindActionListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
