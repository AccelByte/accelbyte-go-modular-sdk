// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval

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
)

// NewDeleteAdminEmailConfigurationParams creates a new DeleteAdminEmailConfigurationParams object
// with the default values initialized.
func NewDeleteAdminEmailConfigurationParams() *DeleteAdminEmailConfigurationParams {
	var ()
	return &DeleteAdminEmailConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAdminEmailConfigurationParamsWithTimeout creates a new DeleteAdminEmailConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAdminEmailConfigurationParamsWithTimeout(timeout time.Duration) *DeleteAdminEmailConfigurationParams {
	var ()
	return &DeleteAdminEmailConfigurationParams{

		timeout: timeout,
	}
}

// NewDeleteAdminEmailConfigurationParamsWithContext creates a new DeleteAdminEmailConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAdminEmailConfigurationParamsWithContext(ctx context.Context) *DeleteAdminEmailConfigurationParams {
	var ()
	return &DeleteAdminEmailConfigurationParams{

		Context: ctx,
	}
}

// NewDeleteAdminEmailConfigurationParamsWithHTTPClient creates a new DeleteAdminEmailConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAdminEmailConfigurationParamsWithHTTPClient(client *http.Client) *DeleteAdminEmailConfigurationParams {
	var ()
	return &DeleteAdminEmailConfigurationParams{
		HTTPClient: client,
	}
}

/*DeleteAdminEmailConfigurationParams contains all the parameters to send to the API endpoint
for the delete admin email configuration operation typically these are written to a http.Request
*/
type DeleteAdminEmailConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the user

	*/
	Namespace string
	/*Emails
	  list of admin email to delete

	*/
	Emails []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete admin email configuration params
func (o *DeleteAdminEmailConfigurationParams) WithTimeout(timeout time.Duration) *DeleteAdminEmailConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete admin email configuration params
func (o *DeleteAdminEmailConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete admin email configuration params
func (o *DeleteAdminEmailConfigurationParams) WithContext(ctx context.Context) *DeleteAdminEmailConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete admin email configuration params
func (o *DeleteAdminEmailConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete admin email configuration params
func (o *DeleteAdminEmailConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete admin email configuration params
func (o *DeleteAdminEmailConfigurationParams) WithHTTPClient(client *http.Client) *DeleteAdminEmailConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete admin email configuration params
func (o *DeleteAdminEmailConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete admin email configuration params
func (o *DeleteAdminEmailConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete admin email configuration params
func (o *DeleteAdminEmailConfigurationParams) WithNamespace(namespace string) *DeleteAdminEmailConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete admin email configuration params
func (o *DeleteAdminEmailConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEmails adds the emails to the delete admin email configuration params
func (o *DeleteAdminEmailConfigurationParams) WithEmails(emails []string) *DeleteAdminEmailConfigurationParams {
	o.SetEmails(emails)
	return o
}

// SetEmails adds the emails to the delete admin email configuration params
func (o *DeleteAdminEmailConfigurationParams) SetEmails(emails []string) {
	o.Emails = emails
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAdminEmailConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	valuesEmails := o.Emails

	joinedEmails := swag.JoinByFormat(valuesEmails, "csv")
	// query array param emails
	if err := r.SetQueryParam("emails", joinedEmails...); err != nil {
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
