// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewPublicUpdateUserV2Params creates a new PublicUpdateUserV2Params object
// with the default values initialized.
func NewPublicUpdateUserV2Params() *PublicUpdateUserV2Params {
	var ()
	return &PublicUpdateUserV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateUserV2ParamsWithTimeout creates a new PublicUpdateUserV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateUserV2ParamsWithTimeout(timeout time.Duration) *PublicUpdateUserV2Params {
	var ()
	return &PublicUpdateUserV2Params{

		timeout: timeout,
	}
}

// NewPublicUpdateUserV2ParamsWithContext creates a new PublicUpdateUserV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateUserV2ParamsWithContext(ctx context.Context) *PublicUpdateUserV2Params {
	var ()
	return &PublicUpdateUserV2Params{

		Context: ctx,
	}
}

// NewPublicUpdateUserV2ParamsWithHTTPClient creates a new PublicUpdateUserV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateUserV2ParamsWithHTTPClient(client *http.Client) *PublicUpdateUserV2Params {
	var ()
	return &PublicUpdateUserV2Params{
		HTTPClient: client,
	}
}

/*PublicUpdateUserV2Params contains all the parameters to send to the API endpoint
for the public update user v2 operation typically these are written to a http.Request
*/
type PublicUpdateUserV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserUpdateRequest
	/*Namespace
	  Namespace

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public update user v2 params
func (o *PublicUpdateUserV2Params) WithTimeout(timeout time.Duration) *PublicUpdateUserV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update user v2 params
func (o *PublicUpdateUserV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update user v2 params
func (o *PublicUpdateUserV2Params) WithContext(ctx context.Context) *PublicUpdateUserV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update user v2 params
func (o *PublicUpdateUserV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update user v2 params
func (o *PublicUpdateUserV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update user v2 params
func (o *PublicUpdateUserV2Params) WithHTTPClient(client *http.Client) *PublicUpdateUserV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update user v2 params
func (o *PublicUpdateUserV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update user v2 params
func (o *PublicUpdateUserV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUpdateUserV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public update user v2 params
func (o *PublicUpdateUserV2Params) WithBody(body *iamclientmodels.ModelUserUpdateRequest) *PublicUpdateUserV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update user v2 params
func (o *PublicUpdateUserV2Params) SetBody(body *iamclientmodels.ModelUserUpdateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update user v2 params
func (o *PublicUpdateUserV2Params) WithNamespace(namespace string) *PublicUpdateUserV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update user v2 params
func (o *PublicUpdateUserV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public update user v2 params
func (o *PublicUpdateUserV2Params) WithUserID(userID string) *PublicUpdateUserV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public update user v2 params
func (o *PublicUpdateUserV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateUserV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
