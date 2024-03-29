// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewUserUnfriendRequestParams creates a new UserUnfriendRequestParams object
// with the default values initialized.
func NewUserUnfriendRequestParams() *UserUnfriendRequestParams {
	var ()
	return &UserUnfriendRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUserUnfriendRequestParamsWithTimeout creates a new UserUnfriendRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUserUnfriendRequestParamsWithTimeout(timeout time.Duration) *UserUnfriendRequestParams {
	var ()
	return &UserUnfriendRequestParams{

		timeout: timeout,
	}
}

// NewUserUnfriendRequestParamsWithContext creates a new UserUnfriendRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewUserUnfriendRequestParamsWithContext(ctx context.Context) *UserUnfriendRequestParams {
	var ()
	return &UserUnfriendRequestParams{

		Context: ctx,
	}
}

// NewUserUnfriendRequestParamsWithHTTPClient creates a new UserUnfriendRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUserUnfriendRequestParamsWithHTTPClient(client *http.Client) *UserUnfriendRequestParams {
	var ()
	return &UserUnfriendRequestParams{
		HTTPClient: client,
	}
}

/*UserUnfriendRequestParams contains all the parameters to send to the API endpoint
for the user unfriend request operation typically these are written to a http.Request
*/
type UserUnfriendRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelUserUnfriendRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the user unfriend request params
func (o *UserUnfriendRequestParams) WithTimeout(timeout time.Duration) *UserUnfriendRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the user unfriend request params
func (o *UserUnfriendRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the user unfriend request params
func (o *UserUnfriendRequestParams) WithContext(ctx context.Context) *UserUnfriendRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the user unfriend request params
func (o *UserUnfriendRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the user unfriend request params
func (o *UserUnfriendRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the user unfriend request params
func (o *UserUnfriendRequestParams) WithHTTPClient(client *http.Client) *UserUnfriendRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the user unfriend request params
func (o *UserUnfriendRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the user unfriend request params
func (o *UserUnfriendRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UserUnfriendRequestParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the user unfriend request params
func (o *UserUnfriendRequestParams) WithBody(body *lobbyclientmodels.ModelUserUnfriendRequest) *UserUnfriendRequestParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the user unfriend request params
func (o *UserUnfriendRequestParams) SetBody(body *lobbyclientmodels.ModelUserUnfriendRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the user unfriend request params
func (o *UserUnfriendRequestParams) WithNamespace(namespace string) *UserUnfriendRequestParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the user unfriend request params
func (o *UserUnfriendRequestParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UserUnfriendRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
