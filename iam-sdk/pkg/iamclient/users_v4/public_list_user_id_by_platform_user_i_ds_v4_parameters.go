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
	"github.com/go-openapi/swag"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewPublicListUserIDByPlatformUserIDsV4Params creates a new PublicListUserIDByPlatformUserIDsV4Params object
// with the default values initialized.
func NewPublicListUserIDByPlatformUserIDsV4Params() *PublicListUserIDByPlatformUserIDsV4Params {
	var (
		rawPUidDefault = bool(false)
	)
	return &PublicListUserIDByPlatformUserIDsV4Params{
		RawPUID: &rawPUidDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListUserIDByPlatformUserIDsV4ParamsWithTimeout creates a new PublicListUserIDByPlatformUserIDsV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListUserIDByPlatformUserIDsV4ParamsWithTimeout(timeout time.Duration) *PublicListUserIDByPlatformUserIDsV4Params {
	var (
		rawPUidDefault = bool(false)
	)
	return &PublicListUserIDByPlatformUserIDsV4Params{
		RawPUID: &rawPUidDefault,

		timeout: timeout,
	}
}

// NewPublicListUserIDByPlatformUserIDsV4ParamsWithContext creates a new PublicListUserIDByPlatformUserIDsV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListUserIDByPlatformUserIDsV4ParamsWithContext(ctx context.Context) *PublicListUserIDByPlatformUserIDsV4Params {
	var (
		rawPUidDefault = bool(false)
	)
	return &PublicListUserIDByPlatformUserIDsV4Params{
		RawPUID: &rawPUidDefault,

		Context: ctx,
	}
}

// NewPublicListUserIDByPlatformUserIDsV4ParamsWithHTTPClient creates a new PublicListUserIDByPlatformUserIDsV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListUserIDByPlatformUserIDsV4ParamsWithHTTPClient(client *http.Client) *PublicListUserIDByPlatformUserIDsV4Params {
	var (
		rawPUidDefault = bool(false)
	)
	return &PublicListUserIDByPlatformUserIDsV4Params{
		RawPUID:    &rawPUidDefault,
		HTTPClient: client,
	}
}

/*PublicListUserIDByPlatformUserIDsV4Params contains all the parameters to send to the API endpoint
for the public list user id by platform user i ds v4 operation typically these are written to a http.Request
*/
type PublicListUserIDByPlatformUserIDsV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelPlatformUserIDRequestV4
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*RawPUID
	  if this is true, the platform user id in response will be raw id, if it is false, some platform user id will be encrypted, eg: xbox

	*/
	RawPUID *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) WithTimeout(timeout time.Duration) *PublicListUserIDByPlatformUserIDsV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) WithContext(ctx context.Context) *PublicListUserIDByPlatformUserIDsV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) WithHTTPClient(client *http.Client) *PublicListUserIDByPlatformUserIDsV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListUserIDByPlatformUserIDsV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) WithBody(body *iamclientmodels.ModelPlatformUserIDRequestV4) *PublicListUserIDByPlatformUserIDsV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) SetBody(body *iamclientmodels.ModelPlatformUserIDRequestV4) {
	o.Body = body
}

// WithNamespace adds the namespace to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) WithNamespace(namespace string) *PublicListUserIDByPlatformUserIDsV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) WithPlatformID(platformID string) *PublicListUserIDByPlatformUserIDsV4Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithRawPUID adds the rawPUID to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) WithRawPUID(rawPUID *bool) *PublicListUserIDByPlatformUserIDsV4Params {
	o.SetRawPUID(rawPUID)
	return o
}

// SetRawPUID adds the rawPUid to the public list user id by platform user i ds v4 params
func (o *PublicListUserIDByPlatformUserIDsV4Params) SetRawPUID(rawPUID *bool) {
	o.RawPUID = rawPUID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListUserIDByPlatformUserIDsV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	if o.RawPUID != nil {

		// query param rawPUID
		var qrRawPUID bool
		if o.RawPUID != nil {
			qrRawPUID = *o.RawPUID
		}
		qRawPUID := swag.FormatBool(qrRawPUID)
		if qRawPUID != "" {
			if err := r.SetQueryParam("rawPUID", qRawPUID); err != nil {
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
