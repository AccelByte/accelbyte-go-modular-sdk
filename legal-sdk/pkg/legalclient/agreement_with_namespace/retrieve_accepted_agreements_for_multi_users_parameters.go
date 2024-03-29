// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreement_with_namespace

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

// NewRetrieveAcceptedAgreementsForMultiUsersParams creates a new RetrieveAcceptedAgreementsForMultiUsersParams object
// with the default values initialized.
func NewRetrieveAcceptedAgreementsForMultiUsersParams() *RetrieveAcceptedAgreementsForMultiUsersParams {
	var ()
	return &RetrieveAcceptedAgreementsForMultiUsersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAcceptedAgreementsForMultiUsersParamsWithTimeout creates a new RetrieveAcceptedAgreementsForMultiUsersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAcceptedAgreementsForMultiUsersParamsWithTimeout(timeout time.Duration) *RetrieveAcceptedAgreementsForMultiUsersParams {
	var ()
	return &RetrieveAcceptedAgreementsForMultiUsersParams{

		timeout: timeout,
	}
}

// NewRetrieveAcceptedAgreementsForMultiUsersParamsWithContext creates a new RetrieveAcceptedAgreementsForMultiUsersParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAcceptedAgreementsForMultiUsersParamsWithContext(ctx context.Context) *RetrieveAcceptedAgreementsForMultiUsersParams {
	var ()
	return &RetrieveAcceptedAgreementsForMultiUsersParams{

		Context: ctx,
	}
}

// NewRetrieveAcceptedAgreementsForMultiUsersParamsWithHTTPClient creates a new RetrieveAcceptedAgreementsForMultiUsersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAcceptedAgreementsForMultiUsersParamsWithHTTPClient(client *http.Client) *RetrieveAcceptedAgreementsForMultiUsersParams {
	var ()
	return &RetrieveAcceptedAgreementsForMultiUsersParams{
		HTTPClient: client,
	}
}

/*RetrieveAcceptedAgreementsForMultiUsersParams contains all the parameters to send to the API endpoint
for the retrieve accepted agreements for multi users operation typically these are written to a http.Request
*/
type RetrieveAcceptedAgreementsForMultiUsersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UsersAgreementsRequest
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve accepted agreements for multi users params
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) WithTimeout(timeout time.Duration) *RetrieveAcceptedAgreementsForMultiUsersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve accepted agreements for multi users params
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve accepted agreements for multi users params
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) WithContext(ctx context.Context) *RetrieveAcceptedAgreementsForMultiUsersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve accepted agreements for multi users params
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve accepted agreements for multi users params
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve accepted agreements for multi users params
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) WithHTTPClient(client *http.Client) *RetrieveAcceptedAgreementsForMultiUsersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve accepted agreements for multi users params
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve accepted agreements for multi users params
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the retrieve accepted agreements for multi users params
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) WithBody(body *legalclientmodels.UsersAgreementsRequest) *RetrieveAcceptedAgreementsForMultiUsersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the retrieve accepted agreements for multi users params
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) SetBody(body *legalclientmodels.UsersAgreementsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the retrieve accepted agreements for multi users params
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) WithNamespace(namespace string) *RetrieveAcceptedAgreementsForMultiUsersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve accepted agreements for multi users params
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAcceptedAgreementsForMultiUsersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
