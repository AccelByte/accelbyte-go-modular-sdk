// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

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

// NewAdminDeleteProfanityListParams creates a new AdminDeleteProfanityListParams object
// with the default values initialized.
func NewAdminDeleteProfanityListParams() *AdminDeleteProfanityListParams {
	var ()
	return &AdminDeleteProfanityListParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteProfanityListParamsWithTimeout creates a new AdminDeleteProfanityListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteProfanityListParamsWithTimeout(timeout time.Duration) *AdminDeleteProfanityListParams {
	var ()
	return &AdminDeleteProfanityListParams{

		timeout: timeout,
	}
}

// NewAdminDeleteProfanityListParamsWithContext creates a new AdminDeleteProfanityListParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteProfanityListParamsWithContext(ctx context.Context) *AdminDeleteProfanityListParams {
	var ()
	return &AdminDeleteProfanityListParams{

		Context: ctx,
	}
}

// NewAdminDeleteProfanityListParamsWithHTTPClient creates a new AdminDeleteProfanityListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteProfanityListParamsWithHTTPClient(client *http.Client) *AdminDeleteProfanityListParams {
	var ()
	return &AdminDeleteProfanityListParams{
		HTTPClient: client,
	}
}

/*AdminDeleteProfanityListParams contains all the parameters to send to the API endpoint
for the admin delete profanity list operation typically these are written to a http.Request
*/
type AdminDeleteProfanityListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*List
	  list

	*/
	List string
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

// WithTimeout adds the timeout to the admin delete profanity list params
func (o *AdminDeleteProfanityListParams) WithTimeout(timeout time.Duration) *AdminDeleteProfanityListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete profanity list params
func (o *AdminDeleteProfanityListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete profanity list params
func (o *AdminDeleteProfanityListParams) WithContext(ctx context.Context) *AdminDeleteProfanityListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete profanity list params
func (o *AdminDeleteProfanityListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete profanity list params
func (o *AdminDeleteProfanityListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete profanity list params
func (o *AdminDeleteProfanityListParams) WithHTTPClient(client *http.Client) *AdminDeleteProfanityListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete profanity list params
func (o *AdminDeleteProfanityListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete profanity list params
func (o *AdminDeleteProfanityListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteProfanityListParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithList adds the listVar to the admin delete profanity list params
func (o *AdminDeleteProfanityListParams) WithList(listVar string) *AdminDeleteProfanityListParams {
	o.SetList(listVar)
	return o
}

// SetList adds the list to the admin delete profanity list params
func (o *AdminDeleteProfanityListParams) SetList(listVar string) {
	o.List = listVar
}

// WithNamespace adds the namespace to the admin delete profanity list params
func (o *AdminDeleteProfanityListParams) WithNamespace(namespace string) *AdminDeleteProfanityListParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete profanity list params
func (o *AdminDeleteProfanityListParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteProfanityListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param list
	if err := r.SetPathParam("list", o.List); err != nil {
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
