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

// NewAdminDisableUserMFAV4Params creates a new AdminDisableUserMFAV4Params object
// with the default values initialized.
func NewAdminDisableUserMFAV4Params() *AdminDisableUserMFAV4Params {
	var ()
	return &AdminDisableUserMFAV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDisableUserMFAV4ParamsWithTimeout creates a new AdminDisableUserMFAV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDisableUserMFAV4ParamsWithTimeout(timeout time.Duration) *AdminDisableUserMFAV4Params {
	var ()
	return &AdminDisableUserMFAV4Params{

		timeout: timeout,
	}
}

// NewAdminDisableUserMFAV4ParamsWithContext creates a new AdminDisableUserMFAV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDisableUserMFAV4ParamsWithContext(ctx context.Context) *AdminDisableUserMFAV4Params {
	var ()
	return &AdminDisableUserMFAV4Params{

		Context: ctx,
	}
}

// NewAdminDisableUserMFAV4ParamsWithHTTPClient creates a new AdminDisableUserMFAV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDisableUserMFAV4ParamsWithHTTPClient(client *http.Client) *AdminDisableUserMFAV4Params {
	var ()
	return &AdminDisableUserMFAV4Params{
		HTTPClient: client,
	}
}

/*AdminDisableUserMFAV4Params contains all the parameters to send to the API endpoint
for the admin disable user mfav4 operation typically these are written to a http.Request
*/
type AdminDisableUserMFAV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelDisableMFARequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) WithTimeout(timeout time.Duration) *AdminDisableUserMFAV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) WithContext(ctx context.Context) *AdminDisableUserMFAV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) WithHTTPClient(client *http.Client) *AdminDisableUserMFAV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDisableUserMFAV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) WithBody(body *iamclientmodels.ModelDisableMFARequest) *AdminDisableUserMFAV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) SetBody(body *iamclientmodels.ModelDisableMFARequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) WithNamespace(namespace string) *AdminDisableUserMFAV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) WithUserID(userID string) *AdminDisableUserMFAV4Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin disable user mfav4 params
func (o *AdminDisableUserMFAV4Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDisableUserMFAV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
