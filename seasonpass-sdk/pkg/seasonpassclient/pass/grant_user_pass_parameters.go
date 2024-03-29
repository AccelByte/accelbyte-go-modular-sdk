// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pass

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// NewGrantUserPassParams creates a new GrantUserPassParams object
// with the default values initialized.
func NewGrantUserPassParams() *GrantUserPassParams {
	var ()
	return &GrantUserPassParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGrantUserPassParamsWithTimeout creates a new GrantUserPassParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGrantUserPassParamsWithTimeout(timeout time.Duration) *GrantUserPassParams {
	var ()
	return &GrantUserPassParams{

		timeout: timeout,
	}
}

// NewGrantUserPassParamsWithContext creates a new GrantUserPassParams object
// with the default values initialized, and the ability to set a context for a request
func NewGrantUserPassParamsWithContext(ctx context.Context) *GrantUserPassParams {
	var ()
	return &GrantUserPassParams{

		Context: ctx,
	}
}

// NewGrantUserPassParamsWithHTTPClient creates a new GrantUserPassParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGrantUserPassParamsWithHTTPClient(client *http.Client) *GrantUserPassParams {
	var ()
	return &GrantUserPassParams{
		HTTPClient: client,
	}
}

/*GrantUserPassParams contains all the parameters to send to the API endpoint
for the grant user pass operation typically these are written to a http.Request
*/
type GrantUserPassParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *seasonpassclientmodels.UserPassGrant
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the grant user pass params
func (o *GrantUserPassParams) WithTimeout(timeout time.Duration) *GrantUserPassParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the grant user pass params
func (o *GrantUserPassParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the grant user pass params
func (o *GrantUserPassParams) WithContext(ctx context.Context) *GrantUserPassParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the grant user pass params
func (o *GrantUserPassParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the grant user pass params
func (o *GrantUserPassParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the grant user pass params
func (o *GrantUserPassParams) WithHTTPClient(client *http.Client) *GrantUserPassParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the grant user pass params
func (o *GrantUserPassParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the grant user pass params
func (o *GrantUserPassParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GrantUserPassParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the grant user pass params
func (o *GrantUserPassParams) WithBody(body *seasonpassclientmodels.UserPassGrant) *GrantUserPassParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the grant user pass params
func (o *GrantUserPassParams) SetBody(body *seasonpassclientmodels.UserPassGrant) {
	o.Body = body
}

// WithNamespace adds the namespace to the grant user pass params
func (o *GrantUserPassParams) WithNamespace(namespace string) *GrantUserPassParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the grant user pass params
func (o *GrantUserPassParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the grant user pass params
func (o *GrantUserPassParams) WithUserID(userID string) *GrantUserPassParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the grant user pass params
func (o *GrantUserPassParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GrantUserPassParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
