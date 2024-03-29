// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sso_credential

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

// NewDeleteSSOLoginPlatformCredentialV3Params creates a new DeleteSSOLoginPlatformCredentialV3Params object
// with the default values initialized.
func NewDeleteSSOLoginPlatformCredentialV3Params() *DeleteSSOLoginPlatformCredentialV3Params {
	var ()
	return &DeleteSSOLoginPlatformCredentialV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteSSOLoginPlatformCredentialV3ParamsWithTimeout creates a new DeleteSSOLoginPlatformCredentialV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteSSOLoginPlatformCredentialV3ParamsWithTimeout(timeout time.Duration) *DeleteSSOLoginPlatformCredentialV3Params {
	var ()
	return &DeleteSSOLoginPlatformCredentialV3Params{

		timeout: timeout,
	}
}

// NewDeleteSSOLoginPlatformCredentialV3ParamsWithContext creates a new DeleteSSOLoginPlatformCredentialV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteSSOLoginPlatformCredentialV3ParamsWithContext(ctx context.Context) *DeleteSSOLoginPlatformCredentialV3Params {
	var ()
	return &DeleteSSOLoginPlatformCredentialV3Params{

		Context: ctx,
	}
}

// NewDeleteSSOLoginPlatformCredentialV3ParamsWithHTTPClient creates a new DeleteSSOLoginPlatformCredentialV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteSSOLoginPlatformCredentialV3ParamsWithHTTPClient(client *http.Client) *DeleteSSOLoginPlatformCredentialV3Params {
	var ()
	return &DeleteSSOLoginPlatformCredentialV3Params{
		HTTPClient: client,
	}
}

/*DeleteSSOLoginPlatformCredentialV3Params contains all the parameters to send to the API endpoint
for the delete sso login platform credential v3 operation typically these are written to a http.Request
*/
type DeleteSSOLoginPlatformCredentialV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete sso login platform credential v3 params
func (o *DeleteSSOLoginPlatformCredentialV3Params) WithTimeout(timeout time.Duration) *DeleteSSOLoginPlatformCredentialV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete sso login platform credential v3 params
func (o *DeleteSSOLoginPlatformCredentialV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete sso login platform credential v3 params
func (o *DeleteSSOLoginPlatformCredentialV3Params) WithContext(ctx context.Context) *DeleteSSOLoginPlatformCredentialV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete sso login platform credential v3 params
func (o *DeleteSSOLoginPlatformCredentialV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete sso login platform credential v3 params
func (o *DeleteSSOLoginPlatformCredentialV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete sso login platform credential v3 params
func (o *DeleteSSOLoginPlatformCredentialV3Params) WithHTTPClient(client *http.Client) *DeleteSSOLoginPlatformCredentialV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete sso login platform credential v3 params
func (o *DeleteSSOLoginPlatformCredentialV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete sso login platform credential v3 params
func (o *DeleteSSOLoginPlatformCredentialV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteSSOLoginPlatformCredentialV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete sso login platform credential v3 params
func (o *DeleteSSOLoginPlatformCredentialV3Params) WithNamespace(namespace string) *DeleteSSOLoginPlatformCredentialV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete sso login platform credential v3 params
func (o *DeleteSSOLoginPlatformCredentialV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the delete sso login platform credential v3 params
func (o *DeleteSSOLoginPlatformCredentialV3Params) WithPlatformID(platformID string) *DeleteSSOLoginPlatformCredentialV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the delete sso login platform credential v3 params
func (o *DeleteSSOLoginPlatformCredentialV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteSSOLoginPlatformCredentialV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
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
