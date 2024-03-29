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

// NewAdminRemoveUserRoleV4Params creates a new AdminRemoveUserRoleV4Params object
// with the default values initialized.
func NewAdminRemoveUserRoleV4Params() *AdminRemoveUserRoleV4Params {
	var ()
	return &AdminRemoveUserRoleV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminRemoveUserRoleV4ParamsWithTimeout creates a new AdminRemoveUserRoleV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminRemoveUserRoleV4ParamsWithTimeout(timeout time.Duration) *AdminRemoveUserRoleV4Params {
	var ()
	return &AdminRemoveUserRoleV4Params{

		timeout: timeout,
	}
}

// NewAdminRemoveUserRoleV4ParamsWithContext creates a new AdminRemoveUserRoleV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminRemoveUserRoleV4ParamsWithContext(ctx context.Context) *AdminRemoveUserRoleV4Params {
	var ()
	return &AdminRemoveUserRoleV4Params{

		Context: ctx,
	}
}

// NewAdminRemoveUserRoleV4ParamsWithHTTPClient creates a new AdminRemoveUserRoleV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminRemoveUserRoleV4ParamsWithHTTPClient(client *http.Client) *AdminRemoveUserRoleV4Params {
	var ()
	return &AdminRemoveUserRoleV4Params{
		HTTPClient: client,
	}
}

/*AdminRemoveUserRoleV4Params contains all the parameters to send to the API endpoint
for the admin remove user role v4 operation typically these are written to a http.Request
*/
type AdminRemoveUserRoleV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelRemoveUserRoleV4Request
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

// WithTimeout adds the timeout to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) WithTimeout(timeout time.Duration) *AdminRemoveUserRoleV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) WithContext(ctx context.Context) *AdminRemoveUserRoleV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) WithHTTPClient(client *http.Client) *AdminRemoveUserRoleV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminRemoveUserRoleV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) WithBody(body *iamclientmodels.ModelRemoveUserRoleV4Request) *AdminRemoveUserRoleV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) SetBody(body *iamclientmodels.ModelRemoveUserRoleV4Request) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) WithNamespace(namespace string) *AdminRemoveUserRoleV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) WithUserID(userID string) *AdminRemoveUserRoleV4Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin remove user role v4 params
func (o *AdminRemoveUserRoleV4Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminRemoveUserRoleV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
