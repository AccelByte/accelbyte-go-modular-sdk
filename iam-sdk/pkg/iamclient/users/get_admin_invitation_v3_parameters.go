// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewGetAdminInvitationV3Params creates a new GetAdminInvitationV3Params object
// with the default values initialized.
func NewGetAdminInvitationV3Params() *GetAdminInvitationV3Params {
	var ()
	return &GetAdminInvitationV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAdminInvitationV3ParamsWithTimeout creates a new GetAdminInvitationV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAdminInvitationV3ParamsWithTimeout(timeout time.Duration) *GetAdminInvitationV3Params {
	var ()
	return &GetAdminInvitationV3Params{

		timeout: timeout,
	}
}

// NewGetAdminInvitationV3ParamsWithContext creates a new GetAdminInvitationV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetAdminInvitationV3ParamsWithContext(ctx context.Context) *GetAdminInvitationV3Params {
	var ()
	return &GetAdminInvitationV3Params{

		Context: ctx,
	}
}

// NewGetAdminInvitationV3ParamsWithHTTPClient creates a new GetAdminInvitationV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAdminInvitationV3ParamsWithHTTPClient(client *http.Client) *GetAdminInvitationV3Params {
	var ()
	return &GetAdminInvitationV3Params{
		HTTPClient: client,
	}
}

/*GetAdminInvitationV3Params contains all the parameters to send to the API endpoint
for the get admin invitation v3 operation typically these are written to a http.Request
*/
type GetAdminInvitationV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*InvitationID
	  Invitation ID, should follow UUID version 4 without hyphen

	*/
	InvitationID string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get admin invitation v3 params
func (o *GetAdminInvitationV3Params) WithTimeout(timeout time.Duration) *GetAdminInvitationV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get admin invitation v3 params
func (o *GetAdminInvitationV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get admin invitation v3 params
func (o *GetAdminInvitationV3Params) WithContext(ctx context.Context) *GetAdminInvitationV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get admin invitation v3 params
func (o *GetAdminInvitationV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get admin invitation v3 params
func (o *GetAdminInvitationV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get admin invitation v3 params
func (o *GetAdminInvitationV3Params) WithHTTPClient(client *http.Client) *GetAdminInvitationV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get admin invitation v3 params
func (o *GetAdminInvitationV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get admin invitation v3 params
func (o *GetAdminInvitationV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithInvitationID adds the invitationID to the get admin invitation v3 params
func (o *GetAdminInvitationV3Params) WithInvitationID(invitationID string) *GetAdminInvitationV3Params {
	o.SetInvitationID(invitationID)
	return o
}

// SetInvitationID adds the invitationId to the get admin invitation v3 params
func (o *GetAdminInvitationV3Params) SetInvitationID(invitationID string) {
	o.InvitationID = invitationID
}

// WithNamespace adds the namespace to the get admin invitation v3 params
func (o *GetAdminInvitationV3Params) WithNamespace(namespace string) *GetAdminInvitationV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get admin invitation v3 params
func (o *GetAdminInvitationV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetAdminInvitationV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param invitationId
	if err := r.SetPathParam("invitationId", o.InvitationID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
