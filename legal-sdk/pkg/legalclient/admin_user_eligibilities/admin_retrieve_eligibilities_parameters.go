// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_user_eligibilities

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

// NewAdminRetrieveEligibilitiesParams creates a new AdminRetrieveEligibilitiesParams object
// with the default values initialized.
func NewAdminRetrieveEligibilitiesParams() *AdminRetrieveEligibilitiesParams {
	var ()
	return &AdminRetrieveEligibilitiesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminRetrieveEligibilitiesParamsWithTimeout creates a new AdminRetrieveEligibilitiesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminRetrieveEligibilitiesParamsWithTimeout(timeout time.Duration) *AdminRetrieveEligibilitiesParams {
	var ()
	return &AdminRetrieveEligibilitiesParams{

		timeout: timeout,
	}
}

// NewAdminRetrieveEligibilitiesParamsWithContext creates a new AdminRetrieveEligibilitiesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminRetrieveEligibilitiesParamsWithContext(ctx context.Context) *AdminRetrieveEligibilitiesParams {
	var ()
	return &AdminRetrieveEligibilitiesParams{

		Context: ctx,
	}
}

// NewAdminRetrieveEligibilitiesParamsWithHTTPClient creates a new AdminRetrieveEligibilitiesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminRetrieveEligibilitiesParamsWithHTTPClient(client *http.Client) *AdminRetrieveEligibilitiesParams {
	var ()
	return &AdminRetrieveEligibilitiesParams{
		HTTPClient: client,
	}
}

/*AdminRetrieveEligibilitiesParams contains all the parameters to send to the API endpoint
for the admin retrieve eligibilities operation typically these are written to a http.Request
*/
type AdminRetrieveEligibilitiesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User Id

	*/
	UserID string
	/*PublisherUserID
	  Publisher user Id

	*/
	PublisherUserID *string
	/*ClientID
	  Client Id

	*/
	ClientID string
	/*CountryCode
	  Country Code

	*/
	CountryCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) WithTimeout(timeout time.Duration) *AdminRetrieveEligibilitiesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) WithContext(ctx context.Context) *AdminRetrieveEligibilitiesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) WithHTTPClient(client *http.Client) *AdminRetrieveEligibilitiesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminRetrieveEligibilitiesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) WithNamespace(namespace string) *AdminRetrieveEligibilitiesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) WithUserID(userID string) *AdminRetrieveEligibilitiesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithPublisherUserID adds the publisherUserID to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) WithPublisherUserID(publisherUserID *string) *AdminRetrieveEligibilitiesParams {
	o.SetPublisherUserID(publisherUserID)
	return o
}

// SetPublisherUserID adds the publisherUserId to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) SetPublisherUserID(publisherUserID *string) {
	o.PublisherUserID = publisherUserID
}

// WithClientID adds the clientID to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) WithClientID(clientID string) *AdminRetrieveEligibilitiesParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithCountryCode adds the countryCode to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) WithCountryCode(countryCode string) *AdminRetrieveEligibilitiesParams {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the admin retrieve eligibilities params
func (o *AdminRetrieveEligibilitiesParams) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WriteToRequest writes these params to a swagger request
func (o *AdminRetrieveEligibilitiesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.PublisherUserID != nil {

		// query param publisherUserId
		var qrPublisherUserID string
		if o.PublisherUserID != nil {
			qrPublisherUserID = *o.PublisherUserID
		}
		qPublisherUserID := qrPublisherUserID
		if qPublisherUserID != "" {
			if err := r.SetQueryParam("publisherUserId", qPublisherUserID); err != nil {
				return err
			}
		}

	}

	// query param clientId
	qrClientID := o.ClientID
	qClientID := qrClientID
	if qClientID != "" {
		if err := r.SetQueryParam("clientId", qClientID); err != nil {
			return err
		}
	}

	// query param countryCode
	qrCountryCode := o.CountryCode
	qCountryCode := qrCountryCode
	if qCountryCode != "" {
		if err := r.SetQueryParam("countryCode", qCountryCode); err != nil {
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
