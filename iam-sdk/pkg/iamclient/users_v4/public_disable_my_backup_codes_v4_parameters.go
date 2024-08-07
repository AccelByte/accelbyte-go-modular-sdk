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

// NewPublicDisableMyBackupCodesV4Params creates a new PublicDisableMyBackupCodesV4Params object
// with the default values initialized.
func NewPublicDisableMyBackupCodesV4Params() *PublicDisableMyBackupCodesV4Params {
	var ()
	return &PublicDisableMyBackupCodesV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDisableMyBackupCodesV4ParamsWithTimeout creates a new PublicDisableMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDisableMyBackupCodesV4ParamsWithTimeout(timeout time.Duration) *PublicDisableMyBackupCodesV4Params {
	var ()
	return &PublicDisableMyBackupCodesV4Params{

		timeout: timeout,
	}
}

// NewPublicDisableMyBackupCodesV4ParamsWithContext creates a new PublicDisableMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDisableMyBackupCodesV4ParamsWithContext(ctx context.Context) *PublicDisableMyBackupCodesV4Params {
	var ()
	return &PublicDisableMyBackupCodesV4Params{

		Context: ctx,
	}
}

// NewPublicDisableMyBackupCodesV4ParamsWithHTTPClient creates a new PublicDisableMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDisableMyBackupCodesV4ParamsWithHTTPClient(client *http.Client) *PublicDisableMyBackupCodesV4Params {
	var ()
	return &PublicDisableMyBackupCodesV4Params{
		HTTPClient: client,
	}
}

/*PublicDisableMyBackupCodesV4Params contains all the parameters to send to the API endpoint
for the public disable my backup codes v4 operation typically these are written to a http.Request
*/
type PublicDisableMyBackupCodesV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelDisableMFARequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public disable my backup codes v4 params
func (o *PublicDisableMyBackupCodesV4Params) WithTimeout(timeout time.Duration) *PublicDisableMyBackupCodesV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public disable my backup codes v4 params
func (o *PublicDisableMyBackupCodesV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public disable my backup codes v4 params
func (o *PublicDisableMyBackupCodesV4Params) WithContext(ctx context.Context) *PublicDisableMyBackupCodesV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public disable my backup codes v4 params
func (o *PublicDisableMyBackupCodesV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public disable my backup codes v4 params
func (o *PublicDisableMyBackupCodesV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public disable my backup codes v4 params
func (o *PublicDisableMyBackupCodesV4Params) WithHTTPClient(client *http.Client) *PublicDisableMyBackupCodesV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public disable my backup codes v4 params
func (o *PublicDisableMyBackupCodesV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public disable my backup codes v4 params
func (o *PublicDisableMyBackupCodesV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicDisableMyBackupCodesV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public disable my backup codes v4 params
func (o *PublicDisableMyBackupCodesV4Params) WithBody(body *iamclientmodels.ModelDisableMFARequest) *PublicDisableMyBackupCodesV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public disable my backup codes v4 params
func (o *PublicDisableMyBackupCodesV4Params) SetBody(body *iamclientmodels.ModelDisableMFARequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public disable my backup codes v4 params
func (o *PublicDisableMyBackupCodesV4Params) WithNamespace(namespace string) *PublicDisableMyBackupCodesV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public disable my backup codes v4 params
func (o *PublicDisableMyBackupCodesV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDisableMyBackupCodesV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
