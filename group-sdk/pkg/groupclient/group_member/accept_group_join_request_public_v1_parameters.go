// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_member

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

// NewAcceptGroupJoinRequestPublicV1Params creates a new AcceptGroupJoinRequestPublicV1Params object
// with the default values initialized.
func NewAcceptGroupJoinRequestPublicV1Params() *AcceptGroupJoinRequestPublicV1Params {
	var ()
	return &AcceptGroupJoinRequestPublicV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAcceptGroupJoinRequestPublicV1ParamsWithTimeout creates a new AcceptGroupJoinRequestPublicV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAcceptGroupJoinRequestPublicV1ParamsWithTimeout(timeout time.Duration) *AcceptGroupJoinRequestPublicV1Params {
	var ()
	return &AcceptGroupJoinRequestPublicV1Params{

		timeout: timeout,
	}
}

// NewAcceptGroupJoinRequestPublicV1ParamsWithContext creates a new AcceptGroupJoinRequestPublicV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAcceptGroupJoinRequestPublicV1ParamsWithContext(ctx context.Context) *AcceptGroupJoinRequestPublicV1Params {
	var ()
	return &AcceptGroupJoinRequestPublicV1Params{

		Context: ctx,
	}
}

// NewAcceptGroupJoinRequestPublicV1ParamsWithHTTPClient creates a new AcceptGroupJoinRequestPublicV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAcceptGroupJoinRequestPublicV1ParamsWithHTTPClient(client *http.Client) *AcceptGroupJoinRequestPublicV1Params {
	var ()
	return &AcceptGroupJoinRequestPublicV1Params{
		HTTPClient: client,
	}
}

/*AcceptGroupJoinRequestPublicV1Params contains all the parameters to send to the API endpoint
for the accept group join request public v1 operation typically these are written to a http.Request
*/
type AcceptGroupJoinRequestPublicV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the accept group join request public v1 params
func (o *AcceptGroupJoinRequestPublicV1Params) WithTimeout(timeout time.Duration) *AcceptGroupJoinRequestPublicV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the accept group join request public v1 params
func (o *AcceptGroupJoinRequestPublicV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the accept group join request public v1 params
func (o *AcceptGroupJoinRequestPublicV1Params) WithContext(ctx context.Context) *AcceptGroupJoinRequestPublicV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the accept group join request public v1 params
func (o *AcceptGroupJoinRequestPublicV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the accept group join request public v1 params
func (o *AcceptGroupJoinRequestPublicV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the accept group join request public v1 params
func (o *AcceptGroupJoinRequestPublicV1Params) WithHTTPClient(client *http.Client) *AcceptGroupJoinRequestPublicV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the accept group join request public v1 params
func (o *AcceptGroupJoinRequestPublicV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the accept group join request public v1 params
func (o *AcceptGroupJoinRequestPublicV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the accept group join request public v1 params
func (o *AcceptGroupJoinRequestPublicV1Params) WithNamespace(namespace string) *AcceptGroupJoinRequestPublicV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the accept group join request public v1 params
func (o *AcceptGroupJoinRequestPublicV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the accept group join request public v1 params
func (o *AcceptGroupJoinRequestPublicV1Params) WithUserID(userID string) *AcceptGroupJoinRequestPublicV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the accept group join request public v1 params
func (o *AcceptGroupJoinRequestPublicV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AcceptGroupJoinRequestPublicV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
