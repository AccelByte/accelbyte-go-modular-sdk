// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package bans

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminUnbanUserBulkV3Params creates a new AdminUnbanUserBulkV3Params object
// with the default values initialized.
func NewAdminUnbanUserBulkV3Params() *AdminUnbanUserBulkV3Params {
	var ()
	return &AdminUnbanUserBulkV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUnbanUserBulkV3ParamsWithTimeout creates a new AdminUnbanUserBulkV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUnbanUserBulkV3ParamsWithTimeout(timeout time.Duration) *AdminUnbanUserBulkV3Params {
	var ()
	return &AdminUnbanUserBulkV3Params{

		timeout: timeout,
	}
}

// NewAdminUnbanUserBulkV3ParamsWithContext creates a new AdminUnbanUserBulkV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUnbanUserBulkV3ParamsWithContext(ctx context.Context) *AdminUnbanUserBulkV3Params {
	var ()
	return &AdminUnbanUserBulkV3Params{

		Context: ctx,
	}
}

// NewAdminUnbanUserBulkV3ParamsWithHTTPClient creates a new AdminUnbanUserBulkV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUnbanUserBulkV3ParamsWithHTTPClient(client *http.Client) *AdminUnbanUserBulkV3Params {
	var ()
	return &AdminUnbanUserBulkV3Params{
		HTTPClient: client,
	}
}

/*
AdminUnbanUserBulkV3Params contains all the parameters to send to the API endpoint
for the admin unban user bulk v3 operation typically these are written to a http.Request
*/
type AdminUnbanUserBulkV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelBulkUnbanCreateRequestV3
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin unban user bulk v3 params
func (o *AdminUnbanUserBulkV3Params) WithTimeout(timeout time.Duration) *AdminUnbanUserBulkV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin unban user bulk v3 params
func (o *AdminUnbanUserBulkV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin unban user bulk v3 params
func (o *AdminUnbanUserBulkV3Params) WithContext(ctx context.Context) *AdminUnbanUserBulkV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin unban user bulk v3 params
func (o *AdminUnbanUserBulkV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin unban user bulk v3 params
func (o *AdminUnbanUserBulkV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin unban user bulk v3 params
func (o *AdminUnbanUserBulkV3Params) WithHTTPClient(client *http.Client) *AdminUnbanUserBulkV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin unban user bulk v3 params
func (o *AdminUnbanUserBulkV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin unban user bulk v3 params
func (o *AdminUnbanUserBulkV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUnbanUserBulkV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin unban user bulk v3 params
func (o *AdminUnbanUserBulkV3Params) WithBody(body *iamclientmodels.ModelBulkUnbanCreateRequestV3) *AdminUnbanUserBulkV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin unban user bulk v3 params
func (o *AdminUnbanUserBulkV3Params) SetBody(body *iamclientmodels.ModelBulkUnbanCreateRequestV3) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin unban user bulk v3 params
func (o *AdminUnbanUserBulkV3Params) WithNamespace(namespace string) *AdminUnbanUserBulkV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin unban user bulk v3 params
func (o *AdminUnbanUserBulkV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUnbanUserBulkV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
