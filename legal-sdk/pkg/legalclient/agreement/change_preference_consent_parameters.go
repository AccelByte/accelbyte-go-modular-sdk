// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement

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

// NewChangePreferenceConsentParams creates a new ChangePreferenceConsentParams object
// with the default values initialized.
func NewChangePreferenceConsentParams() *ChangePreferenceConsentParams {
	var ()
	return &ChangePreferenceConsentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewChangePreferenceConsentParamsWithTimeout creates a new ChangePreferenceConsentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewChangePreferenceConsentParamsWithTimeout(timeout time.Duration) *ChangePreferenceConsentParams {
	var ()
	return &ChangePreferenceConsentParams{

		timeout: timeout,
	}
}

// NewChangePreferenceConsentParamsWithContext creates a new ChangePreferenceConsentParams object
// with the default values initialized, and the ability to set a context for a request
func NewChangePreferenceConsentParamsWithContext(ctx context.Context) *ChangePreferenceConsentParams {
	var ()
	return &ChangePreferenceConsentParams{

		Context: ctx,
	}
}

// NewChangePreferenceConsentParamsWithHTTPClient creates a new ChangePreferenceConsentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewChangePreferenceConsentParamsWithHTTPClient(client *http.Client) *ChangePreferenceConsentParams {
	var ()
	return &ChangePreferenceConsentParams{
		HTTPClient: client,
	}
}

/*ChangePreferenceConsentParams contains all the parameters to send to the API endpoint
for the change preference consent operation typically these are written to a http.Request
*/
type ChangePreferenceConsentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*legalclientmodels.AcceptAgreementRequest
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  User Id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the change preference consent params
func (o *ChangePreferenceConsentParams) WithTimeout(timeout time.Duration) *ChangePreferenceConsentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the change preference consent params
func (o *ChangePreferenceConsentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the change preference consent params
func (o *ChangePreferenceConsentParams) WithContext(ctx context.Context) *ChangePreferenceConsentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the change preference consent params
func (o *ChangePreferenceConsentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the change preference consent params
func (o *ChangePreferenceConsentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the change preference consent params
func (o *ChangePreferenceConsentParams) WithHTTPClient(client *http.Client) *ChangePreferenceConsentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the change preference consent params
func (o *ChangePreferenceConsentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the change preference consent params
func (o *ChangePreferenceConsentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the change preference consent params
func (o *ChangePreferenceConsentParams) WithBody(body []*legalclientmodels.AcceptAgreementRequest) *ChangePreferenceConsentParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the change preference consent params
func (o *ChangePreferenceConsentParams) SetBody(body []*legalclientmodels.AcceptAgreementRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the change preference consent params
func (o *ChangePreferenceConsentParams) WithNamespace(namespace string) *ChangePreferenceConsentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the change preference consent params
func (o *ChangePreferenceConsentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the change preference consent params
func (o *ChangePreferenceConsentParams) WithUserID(userID string) *ChangePreferenceConsentParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the change preference consent params
func (o *ChangePreferenceConsentParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *ChangePreferenceConsentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
