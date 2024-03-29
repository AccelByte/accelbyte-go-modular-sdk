// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

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

// NewAdminGetPlayerSessionAttributeParams creates a new AdminGetPlayerSessionAttributeParams object
// with the default values initialized.
func NewAdminGetPlayerSessionAttributeParams() *AdminGetPlayerSessionAttributeParams {
	var ()
	return &AdminGetPlayerSessionAttributeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetPlayerSessionAttributeParamsWithTimeout creates a new AdminGetPlayerSessionAttributeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetPlayerSessionAttributeParamsWithTimeout(timeout time.Duration) *AdminGetPlayerSessionAttributeParams {
	var ()
	return &AdminGetPlayerSessionAttributeParams{

		timeout: timeout,
	}
}

// NewAdminGetPlayerSessionAttributeParamsWithContext creates a new AdminGetPlayerSessionAttributeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetPlayerSessionAttributeParamsWithContext(ctx context.Context) *AdminGetPlayerSessionAttributeParams {
	var ()
	return &AdminGetPlayerSessionAttributeParams{

		Context: ctx,
	}
}

// NewAdminGetPlayerSessionAttributeParamsWithHTTPClient creates a new AdminGetPlayerSessionAttributeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetPlayerSessionAttributeParamsWithHTTPClient(client *http.Client) *AdminGetPlayerSessionAttributeParams {
	var ()
	return &AdminGetPlayerSessionAttributeParams{
		HTTPClient: client,
	}
}

/*AdminGetPlayerSessionAttributeParams contains all the parameters to send to the API endpoint
for the admin get player session attribute operation typically these are written to a http.Request
*/
type AdminGetPlayerSessionAttributeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Attribute
	  attribute key

	*/
	Attribute string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) WithTimeout(timeout time.Duration) *AdminGetPlayerSessionAttributeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) WithContext(ctx context.Context) *AdminGetPlayerSessionAttributeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) WithHTTPClient(client *http.Client) *AdminGetPlayerSessionAttributeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetPlayerSessionAttributeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAttribute adds the attribute to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) WithAttribute(attribute string) *AdminGetPlayerSessionAttributeParams {
	o.SetAttribute(attribute)
	return o
}

// SetAttribute adds the attribute to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) SetAttribute(attribute string) {
	o.Attribute = attribute
}

// WithNamespace adds the namespace to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) WithNamespace(namespace string) *AdminGetPlayerSessionAttributeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) WithUserID(userID string) *AdminGetPlayerSessionAttributeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get player session attribute params
func (o *AdminGetPlayerSessionAttributeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetPlayerSessionAttributeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param attribute
	if err := r.SetPathParam("attribute", o.Attribute); err != nil {
		return err
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
