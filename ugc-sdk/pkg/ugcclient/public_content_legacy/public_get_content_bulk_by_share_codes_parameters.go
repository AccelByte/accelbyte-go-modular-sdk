// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_content_legacy

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewPublicGetContentBulkByShareCodesParams creates a new PublicGetContentBulkByShareCodesParams object
// with the default values initialized.
func NewPublicGetContentBulkByShareCodesParams() *PublicGetContentBulkByShareCodesParams {
	var ()
	return &PublicGetContentBulkByShareCodesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetContentBulkByShareCodesParamsWithTimeout creates a new PublicGetContentBulkByShareCodesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetContentBulkByShareCodesParamsWithTimeout(timeout time.Duration) *PublicGetContentBulkByShareCodesParams {
	var ()
	return &PublicGetContentBulkByShareCodesParams{

		timeout: timeout,
	}
}

// NewPublicGetContentBulkByShareCodesParamsWithContext creates a new PublicGetContentBulkByShareCodesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetContentBulkByShareCodesParamsWithContext(ctx context.Context) *PublicGetContentBulkByShareCodesParams {
	var ()
	return &PublicGetContentBulkByShareCodesParams{

		Context: ctx,
	}
}

// NewPublicGetContentBulkByShareCodesParamsWithHTTPClient creates a new PublicGetContentBulkByShareCodesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetContentBulkByShareCodesParamsWithHTTPClient(client *http.Client) *PublicGetContentBulkByShareCodesParams {
	var ()
	return &PublicGetContentBulkByShareCodesParams{
		HTTPClient: client,
	}
}

/*PublicGetContentBulkByShareCodesParams contains all the parameters to send to the API endpoint
for the public get content bulk by share codes operation typically these are written to a http.Request
*/
type PublicGetContentBulkByShareCodesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsGetContentBulkByShareCodesRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get content bulk by share codes params
func (o *PublicGetContentBulkByShareCodesParams) WithTimeout(timeout time.Duration) *PublicGetContentBulkByShareCodesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get content bulk by share codes params
func (o *PublicGetContentBulkByShareCodesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get content bulk by share codes params
func (o *PublicGetContentBulkByShareCodesParams) WithContext(ctx context.Context) *PublicGetContentBulkByShareCodesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get content bulk by share codes params
func (o *PublicGetContentBulkByShareCodesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get content bulk by share codes params
func (o *PublicGetContentBulkByShareCodesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get content bulk by share codes params
func (o *PublicGetContentBulkByShareCodesParams) WithHTTPClient(client *http.Client) *PublicGetContentBulkByShareCodesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get content bulk by share codes params
func (o *PublicGetContentBulkByShareCodesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get content bulk by share codes params
func (o *PublicGetContentBulkByShareCodesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetContentBulkByShareCodesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public get content bulk by share codes params
func (o *PublicGetContentBulkByShareCodesParams) WithBody(body *ugcclientmodels.ModelsGetContentBulkByShareCodesRequest) *PublicGetContentBulkByShareCodesParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public get content bulk by share codes params
func (o *PublicGetContentBulkByShareCodesParams) SetBody(body *ugcclientmodels.ModelsGetContentBulkByShareCodesRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public get content bulk by share codes params
func (o *PublicGetContentBulkByShareCodesParams) WithNamespace(namespace string) *PublicGetContentBulkByShareCodesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get content bulk by share codes params
func (o *PublicGetContentBulkByShareCodesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetContentBulkByShareCodesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
