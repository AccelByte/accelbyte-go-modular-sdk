// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_content_v2

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

// NewPublicGetContentByShareCodeV2Params creates a new PublicGetContentByShareCodeV2Params object
// with the default values initialized.
func NewPublicGetContentByShareCodeV2Params() *PublicGetContentByShareCodeV2Params {
	var ()
	return &PublicGetContentByShareCodeV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetContentByShareCodeV2ParamsWithTimeout creates a new PublicGetContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetContentByShareCodeV2ParamsWithTimeout(timeout time.Duration) *PublicGetContentByShareCodeV2Params {
	var ()
	return &PublicGetContentByShareCodeV2Params{

		timeout: timeout,
	}
}

// NewPublicGetContentByShareCodeV2ParamsWithContext creates a new PublicGetContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetContentByShareCodeV2ParamsWithContext(ctx context.Context) *PublicGetContentByShareCodeV2Params {
	var ()
	return &PublicGetContentByShareCodeV2Params{

		Context: ctx,
	}
}

// NewPublicGetContentByShareCodeV2ParamsWithHTTPClient creates a new PublicGetContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetContentByShareCodeV2ParamsWithHTTPClient(client *http.Client) *PublicGetContentByShareCodeV2Params {
	var ()
	return &PublicGetContentByShareCodeV2Params{
		HTTPClient: client,
	}
}

/*PublicGetContentByShareCodeV2Params contains all the parameters to send to the API endpoint
for the public get content by share code v2 operation typically these are written to a http.Request
*/
type PublicGetContentByShareCodeV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ShareCode
	  content sharecode

	*/
	ShareCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get content by share code v2 params
func (o *PublicGetContentByShareCodeV2Params) WithTimeout(timeout time.Duration) *PublicGetContentByShareCodeV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get content by share code v2 params
func (o *PublicGetContentByShareCodeV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get content by share code v2 params
func (o *PublicGetContentByShareCodeV2Params) WithContext(ctx context.Context) *PublicGetContentByShareCodeV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get content by share code v2 params
func (o *PublicGetContentByShareCodeV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get content by share code v2 params
func (o *PublicGetContentByShareCodeV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get content by share code v2 params
func (o *PublicGetContentByShareCodeV2Params) WithHTTPClient(client *http.Client) *PublicGetContentByShareCodeV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get content by share code v2 params
func (o *PublicGetContentByShareCodeV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get content by share code v2 params
func (o *PublicGetContentByShareCodeV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetContentByShareCodeV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get content by share code v2 params
func (o *PublicGetContentByShareCodeV2Params) WithNamespace(namespace string) *PublicGetContentByShareCodeV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get content by share code v2 params
func (o *PublicGetContentByShareCodeV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithShareCode adds the shareCode to the public get content by share code v2 params
func (o *PublicGetContentByShareCodeV2Params) WithShareCode(shareCode string) *PublicGetContentByShareCodeV2Params {
	o.SetShareCode(shareCode)
	return o
}

// SetShareCode adds the shareCode to the public get content by share code v2 params
func (o *PublicGetContentByShareCodeV2Params) SetShareCode(shareCode string) {
	o.ShareCode = shareCode
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetContentByShareCodeV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param shareCode
	if err := r.SetPathParam("shareCode", o.ShareCode); err != nil {
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
