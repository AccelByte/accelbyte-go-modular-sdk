// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users_v4

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

// NewCreateUserFromInvitationV4Params creates a new CreateUserFromInvitationV4Params object
// with the default values initialized.
func NewCreateUserFromInvitationV4Params() *CreateUserFromInvitationV4Params {
	var ()
	return &CreateUserFromInvitationV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateUserFromInvitationV4ParamsWithTimeout creates a new CreateUserFromInvitationV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateUserFromInvitationV4ParamsWithTimeout(timeout time.Duration) *CreateUserFromInvitationV4Params {
	var ()
	return &CreateUserFromInvitationV4Params{

		timeout: timeout,
	}
}

// NewCreateUserFromInvitationV4ParamsWithContext creates a new CreateUserFromInvitationV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewCreateUserFromInvitationV4ParamsWithContext(ctx context.Context) *CreateUserFromInvitationV4Params {
	var ()
	return &CreateUserFromInvitationV4Params{

		Context: ctx,
	}
}

// NewCreateUserFromInvitationV4ParamsWithHTTPClient creates a new CreateUserFromInvitationV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateUserFromInvitationV4ParamsWithHTTPClient(client *http.Client) *CreateUserFromInvitationV4Params {
	var ()
	return &CreateUserFromInvitationV4Params{
		HTTPClient: client,
	}
}

/*CreateUserFromInvitationV4Params contains all the parameters to send to the API endpoint
for the create user from invitation v4 operation typically these are written to a http.Request
*/
type CreateUserFromInvitationV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserCreateFromInvitationRequestV4
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

// WithTimeout adds the timeout to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) WithTimeout(timeout time.Duration) *CreateUserFromInvitationV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) WithContext(ctx context.Context) *CreateUserFromInvitationV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) WithHTTPClient(client *http.Client) *CreateUserFromInvitationV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) WithBody(body *iamclientmodels.ModelUserCreateFromInvitationRequestV4) *CreateUserFromInvitationV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) SetBody(body *iamclientmodels.ModelUserCreateFromInvitationRequestV4) {
	o.Body = body
}

// WithInvitationID adds the invitationID to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) WithInvitationID(invitationID string) *CreateUserFromInvitationV4Params {
	o.SetInvitationID(invitationID)
	return o
}

// SetInvitationID adds the invitationId to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) SetInvitationID(invitationID string) {
	o.InvitationID = invitationID
}

// WithNamespace adds the namespace to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) WithNamespace(namespace string) *CreateUserFromInvitationV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create user from invitation v4 params
func (o *CreateUserFromInvitationV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateUserFromInvitationV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
