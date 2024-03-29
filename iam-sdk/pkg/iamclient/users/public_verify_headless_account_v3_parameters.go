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
	"github.com/go-openapi/swag"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewPublicVerifyHeadlessAccountV3Params creates a new PublicVerifyHeadlessAccountV3Params object
// with the default values initialized.
func NewPublicVerifyHeadlessAccountV3Params() *PublicVerifyHeadlessAccountV3Params {
	var (
		needVerificationCodeDefault = bool(false)
	)
	return &PublicVerifyHeadlessAccountV3Params{
		NeedVerificationCode: &needVerificationCodeDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicVerifyHeadlessAccountV3ParamsWithTimeout creates a new PublicVerifyHeadlessAccountV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicVerifyHeadlessAccountV3ParamsWithTimeout(timeout time.Duration) *PublicVerifyHeadlessAccountV3Params {
	var (
		needVerificationCodeDefault = bool(false)
	)
	return &PublicVerifyHeadlessAccountV3Params{
		NeedVerificationCode: &needVerificationCodeDefault,

		timeout: timeout,
	}
}

// NewPublicVerifyHeadlessAccountV3ParamsWithContext creates a new PublicVerifyHeadlessAccountV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicVerifyHeadlessAccountV3ParamsWithContext(ctx context.Context) *PublicVerifyHeadlessAccountV3Params {
	var (
		needVerificationCodeDefault = bool(false)
	)
	return &PublicVerifyHeadlessAccountV3Params{
		NeedVerificationCode: &needVerificationCodeDefault,

		Context: ctx,
	}
}

// NewPublicVerifyHeadlessAccountV3ParamsWithHTTPClient creates a new PublicVerifyHeadlessAccountV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicVerifyHeadlessAccountV3ParamsWithHTTPClient(client *http.Client) *PublicVerifyHeadlessAccountV3Params {
	var (
		needVerificationCodeDefault = bool(false)
	)
	return &PublicVerifyHeadlessAccountV3Params{
		NeedVerificationCode: &needVerificationCodeDefault,
		HTTPClient:           client,
	}
}

/*PublicVerifyHeadlessAccountV3Params contains all the parameters to send to the API endpoint
for the public verify headless account v3 operation typically these are written to a http.Request
*/
type PublicVerifyHeadlessAccountV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUpgradeHeadlessAccountV3Request
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*NeedVerificationCode
	  default false, will send verification code to email if true

	*/
	NeedVerificationCode *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) WithTimeout(timeout time.Duration) *PublicVerifyHeadlessAccountV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) WithContext(ctx context.Context) *PublicVerifyHeadlessAccountV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) WithHTTPClient(client *http.Client) *PublicVerifyHeadlessAccountV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicVerifyHeadlessAccountV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) WithBody(body *iamclientmodels.ModelUpgradeHeadlessAccountV3Request) *PublicVerifyHeadlessAccountV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) SetBody(body *iamclientmodels.ModelUpgradeHeadlessAccountV3Request) {
	o.Body = body
}

// WithNamespace adds the namespace to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) WithNamespace(namespace string) *PublicVerifyHeadlessAccountV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithNeedVerificationCode adds the needVerificationCode to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) WithNeedVerificationCode(needVerificationCode *bool) *PublicVerifyHeadlessAccountV3Params {
	o.SetNeedVerificationCode(needVerificationCode)
	return o
}

// SetNeedVerificationCode adds the needVerificationCode to the public verify headless account v3 params
func (o *PublicVerifyHeadlessAccountV3Params) SetNeedVerificationCode(needVerificationCode *bool) {
	o.NeedVerificationCode = needVerificationCode
}

// WriteToRequest writes these params to a swagger request
func (o *PublicVerifyHeadlessAccountV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.NeedVerificationCode != nil {

		// query param needVerificationCode
		var qrNeedVerificationCode bool
		if o.NeedVerificationCode != nil {
			qrNeedVerificationCode = *o.NeedVerificationCode
		}
		qNeedVerificationCode := swag.FormatBool(qrNeedVerificationCode)
		if qNeedVerificationCode != "" {
			if err := r.SetQueryParam("needVerificationCode", qNeedVerificationCode); err != nil {
				return err
			}
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
