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
)

// NewPublicCreateJusticeUserParams creates a new PublicCreateJusticeUserParams object
// with the default values initialized.
func NewPublicCreateJusticeUserParams() *PublicCreateJusticeUserParams {
	var ()
	return &PublicCreateJusticeUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCreateJusticeUserParamsWithTimeout creates a new PublicCreateJusticeUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCreateJusticeUserParamsWithTimeout(timeout time.Duration) *PublicCreateJusticeUserParams {
	var ()
	return &PublicCreateJusticeUserParams{

		timeout: timeout,
	}
}

// NewPublicCreateJusticeUserParamsWithContext creates a new PublicCreateJusticeUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCreateJusticeUserParamsWithContext(ctx context.Context) *PublicCreateJusticeUserParams {
	var ()
	return &PublicCreateJusticeUserParams{

		Context: ctx,
	}
}

// NewPublicCreateJusticeUserParamsWithHTTPClient creates a new PublicCreateJusticeUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCreateJusticeUserParamsWithHTTPClient(client *http.Client) *PublicCreateJusticeUserParams {
	var ()
	return &PublicCreateJusticeUserParams{
		HTTPClient: client,
	}
}

/*
PublicCreateJusticeUserParams contains all the parameters to send to the API endpoint
for the public create justice user operation typically these are written to a http.Request
*/
type PublicCreateJusticeUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*TargetNamespace
	  Target namespace

	*/
	TargetNamespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public create justice user params
func (o *PublicCreateJusticeUserParams) WithTimeout(timeout time.Duration) *PublicCreateJusticeUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public create justice user params
func (o *PublicCreateJusticeUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public create justice user params
func (o *PublicCreateJusticeUserParams) WithContext(ctx context.Context) *PublicCreateJusticeUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public create justice user params
func (o *PublicCreateJusticeUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public create justice user params
func (o *PublicCreateJusticeUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public create justice user params
func (o *PublicCreateJusticeUserParams) WithHTTPClient(client *http.Client) *PublicCreateJusticeUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public create justice user params
func (o *PublicCreateJusticeUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public create justice user params
func (o *PublicCreateJusticeUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicCreateJusticeUserParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public create justice user params
func (o *PublicCreateJusticeUserParams) WithNamespace(namespace string) *PublicCreateJusticeUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public create justice user params
func (o *PublicCreateJusticeUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTargetNamespace adds the targetNamespace to the public create justice user params
func (o *PublicCreateJusticeUserParams) WithTargetNamespace(targetNamespace string) *PublicCreateJusticeUserParams {
	o.SetTargetNamespace(targetNamespace)
	return o
}

// SetTargetNamespace adds the targetNamespace to the public create justice user params
func (o *PublicCreateJusticeUserParams) SetTargetNamespace(targetNamespace string) {
	o.TargetNamespace = targetNamespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCreateJusticeUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param targetNamespace
	if err := r.SetPathParam("targetNamespace", o.TargetNamespace); err != nil {
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
