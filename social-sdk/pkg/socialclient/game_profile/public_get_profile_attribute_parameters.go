// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package game_profile

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

// NewPublicGetProfileAttributeParams creates a new PublicGetProfileAttributeParams object
// with the default values initialized.
func NewPublicGetProfileAttributeParams() *PublicGetProfileAttributeParams {
	var ()
	return &PublicGetProfileAttributeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetProfileAttributeParamsWithTimeout creates a new PublicGetProfileAttributeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetProfileAttributeParamsWithTimeout(timeout time.Duration) *PublicGetProfileAttributeParams {
	var ()
	return &PublicGetProfileAttributeParams{

		timeout: timeout,
	}
}

// NewPublicGetProfileAttributeParamsWithContext creates a new PublicGetProfileAttributeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetProfileAttributeParamsWithContext(ctx context.Context) *PublicGetProfileAttributeParams {
	var ()
	return &PublicGetProfileAttributeParams{

		Context: ctx,
	}
}

// NewPublicGetProfileAttributeParamsWithHTTPClient creates a new PublicGetProfileAttributeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetProfileAttributeParamsWithHTTPClient(client *http.Client) *PublicGetProfileAttributeParams {
	var ()
	return &PublicGetProfileAttributeParams{
		HTTPClient: client,
	}
}

/*PublicGetProfileAttributeParams contains all the parameters to send to the API endpoint
for the public get profile attribute operation typically these are written to a http.Request
*/
type PublicGetProfileAttributeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AttributeName
	  Attribute Name

	*/
	AttributeName string
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*ProfileID
	  Game profile ID

	*/
	ProfileID string
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

// WithTimeout adds the timeout to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) WithTimeout(timeout time.Duration) *PublicGetProfileAttributeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) WithContext(ctx context.Context) *PublicGetProfileAttributeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) WithHTTPClient(client *http.Client) *PublicGetProfileAttributeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetProfileAttributeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAttributeName adds the attributeName to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) WithAttributeName(attributeName string) *PublicGetProfileAttributeParams {
	o.SetAttributeName(attributeName)
	return o
}

// SetAttributeName adds the attributeName to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) SetAttributeName(attributeName string) {
	o.AttributeName = attributeName
}

// WithNamespace adds the namespace to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) WithNamespace(namespace string) *PublicGetProfileAttributeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithProfileID adds the profileID to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) WithProfileID(profileID string) *PublicGetProfileAttributeParams {
	o.SetProfileID(profileID)
	return o
}

// SetProfileID adds the profileId to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) SetProfileID(profileID string) {
	o.ProfileID = profileID
}

// WithUserID adds the userID to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) WithUserID(userID string) *PublicGetProfileAttributeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get profile attribute params
func (o *PublicGetProfileAttributeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetProfileAttributeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param attributeName
	if err := r.SetPathParam("attributeName", o.AttributeName); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param profileId
	if err := r.SetPathParam("profileId", o.ProfileID); err != nil {
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
