// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_user_agreement

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewIndirectBulkAcceptVersionedPolicyParams creates a new IndirectBulkAcceptVersionedPolicyParams object
// with the default values initialized.
func NewIndirectBulkAcceptVersionedPolicyParams() *IndirectBulkAcceptVersionedPolicyParams {
	var ()
	return &IndirectBulkAcceptVersionedPolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewIndirectBulkAcceptVersionedPolicyParamsWithTimeout creates a new IndirectBulkAcceptVersionedPolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewIndirectBulkAcceptVersionedPolicyParamsWithTimeout(timeout time.Duration) *IndirectBulkAcceptVersionedPolicyParams {
	var ()
	return &IndirectBulkAcceptVersionedPolicyParams{

		timeout: timeout,
	}
}

// NewIndirectBulkAcceptVersionedPolicyParamsWithContext creates a new IndirectBulkAcceptVersionedPolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewIndirectBulkAcceptVersionedPolicyParamsWithContext(ctx context.Context) *IndirectBulkAcceptVersionedPolicyParams {
	var ()
	return &IndirectBulkAcceptVersionedPolicyParams{

		Context: ctx,
	}
}

// NewIndirectBulkAcceptVersionedPolicyParamsWithHTTPClient creates a new IndirectBulkAcceptVersionedPolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewIndirectBulkAcceptVersionedPolicyParamsWithHTTPClient(client *http.Client) *IndirectBulkAcceptVersionedPolicyParams {
	var ()
	return &IndirectBulkAcceptVersionedPolicyParams{
		HTTPClient: client,
	}
}

/*IndirectBulkAcceptVersionedPolicyParams contains all the parameters to send to the API endpoint
for the indirect bulk accept versioned policy operation typically these are written to a http.Request
*/
type IndirectBulkAcceptVersionedPolicyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*legalclientmodels.AcceptAgreementRequest
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
}

// WithTimeout adds the timeout to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) WithTimeout(timeout time.Duration) *IndirectBulkAcceptVersionedPolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) WithContext(ctx context.Context) *IndirectBulkAcceptVersionedPolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) WithHTTPClient(client *http.Client) *IndirectBulkAcceptVersionedPolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) WithBody(body []*legalclientmodels.AcceptAgreementRequest) *IndirectBulkAcceptVersionedPolicyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) SetBody(body []*legalclientmodels.AcceptAgreementRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) WithNamespace(namespace string) *IndirectBulkAcceptVersionedPolicyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) WithUserID(userID string) *IndirectBulkAcceptVersionedPolicyParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithPublisherUserID adds the publisherUserID to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) WithPublisherUserID(publisherUserID *string) *IndirectBulkAcceptVersionedPolicyParams {
	o.SetPublisherUserID(publisherUserID)
	return o
}

// SetPublisherUserID adds the publisherUserId to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) SetPublisherUserID(publisherUserID *string) {
	o.PublisherUserID = publisherUserID
}

// WithClientID adds the clientID to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) WithClientID(clientID string) *IndirectBulkAcceptVersionedPolicyParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithCountryCode adds the countryCode to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) WithCountryCode(countryCode string) *IndirectBulkAcceptVersionedPolicyParams {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the indirect bulk accept versioned policy params
func (o *IndirectBulkAcceptVersionedPolicyParams) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WriteToRequest writes these params to a swagger request
func (o *IndirectBulkAcceptVersionedPolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
