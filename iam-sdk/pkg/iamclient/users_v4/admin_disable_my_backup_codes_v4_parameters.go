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

// NewAdminDisableMyBackupCodesV4Params creates a new AdminDisableMyBackupCodesV4Params object
// with the default values initialized.
func NewAdminDisableMyBackupCodesV4Params() *AdminDisableMyBackupCodesV4Params {
	var ()
	return &AdminDisableMyBackupCodesV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDisableMyBackupCodesV4ParamsWithTimeout creates a new AdminDisableMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDisableMyBackupCodesV4ParamsWithTimeout(timeout time.Duration) *AdminDisableMyBackupCodesV4Params {
	var ()
	return &AdminDisableMyBackupCodesV4Params{

		timeout: timeout,
	}
}

// NewAdminDisableMyBackupCodesV4ParamsWithContext creates a new AdminDisableMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDisableMyBackupCodesV4ParamsWithContext(ctx context.Context) *AdminDisableMyBackupCodesV4Params {
	var ()
	return &AdminDisableMyBackupCodesV4Params{

		Context: ctx,
	}
}

// NewAdminDisableMyBackupCodesV4ParamsWithHTTPClient creates a new AdminDisableMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDisableMyBackupCodesV4ParamsWithHTTPClient(client *http.Client) *AdminDisableMyBackupCodesV4Params {
	var ()
	return &AdminDisableMyBackupCodesV4Params{
		HTTPClient: client,
	}
}

/*AdminDisableMyBackupCodesV4Params contains all the parameters to send to the API endpoint
for the admin disable my backup codes v4 operation typically these are written to a http.Request
*/
type AdminDisableMyBackupCodesV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelDisableMFARequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin disable my backup codes v4 params
func (o *AdminDisableMyBackupCodesV4Params) WithTimeout(timeout time.Duration) *AdminDisableMyBackupCodesV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin disable my backup codes v4 params
func (o *AdminDisableMyBackupCodesV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin disable my backup codes v4 params
func (o *AdminDisableMyBackupCodesV4Params) WithContext(ctx context.Context) *AdminDisableMyBackupCodesV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin disable my backup codes v4 params
func (o *AdminDisableMyBackupCodesV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin disable my backup codes v4 params
func (o *AdminDisableMyBackupCodesV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin disable my backup codes v4 params
func (o *AdminDisableMyBackupCodesV4Params) WithHTTPClient(client *http.Client) *AdminDisableMyBackupCodesV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin disable my backup codes v4 params
func (o *AdminDisableMyBackupCodesV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin disable my backup codes v4 params
func (o *AdminDisableMyBackupCodesV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDisableMyBackupCodesV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin disable my backup codes v4 params
func (o *AdminDisableMyBackupCodesV4Params) WithBody(body *iamclientmodels.ModelDisableMFARequest) *AdminDisableMyBackupCodesV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin disable my backup codes v4 params
func (o *AdminDisableMyBackupCodesV4Params) SetBody(body *iamclientmodels.ModelDisableMFARequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDisableMyBackupCodesV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
