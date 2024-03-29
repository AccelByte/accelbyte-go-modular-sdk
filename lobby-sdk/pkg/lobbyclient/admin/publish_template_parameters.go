// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

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

// NewPublishTemplateParams creates a new PublishTemplateParams object
// with the default values initialized.
func NewPublishTemplateParams() *PublishTemplateParams {
	var ()
	return &PublishTemplateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublishTemplateParamsWithTimeout creates a new PublishTemplateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublishTemplateParamsWithTimeout(timeout time.Duration) *PublishTemplateParams {
	var ()
	return &PublishTemplateParams{

		timeout: timeout,
	}
}

// NewPublishTemplateParamsWithContext creates a new PublishTemplateParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublishTemplateParamsWithContext(ctx context.Context) *PublishTemplateParams {
	var ()
	return &PublishTemplateParams{

		Context: ctx,
	}
}

// NewPublishTemplateParamsWithHTTPClient creates a new PublishTemplateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublishTemplateParamsWithHTTPClient(client *http.Client) *PublishTemplateParams {
	var ()
	return &PublishTemplateParams{
		HTTPClient: client,
	}
}

/*PublishTemplateParams contains all the parameters to send to the API endpoint
for the publish template operation typically these are written to a http.Request
*/
type PublishTemplateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*TemplateLanguage
	  template language

	*/
	TemplateLanguage string
	/*TemplateSlug
	  template slug

	*/
	TemplateSlug string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the publish template params
func (o *PublishTemplateParams) WithTimeout(timeout time.Duration) *PublishTemplateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the publish template params
func (o *PublishTemplateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the publish template params
func (o *PublishTemplateParams) WithContext(ctx context.Context) *PublishTemplateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the publish template params
func (o *PublishTemplateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the publish template params
func (o *PublishTemplateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the publish template params
func (o *PublishTemplateParams) WithHTTPClient(client *http.Client) *PublishTemplateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the publish template params
func (o *PublishTemplateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the publish template params
func (o *PublishTemplateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublishTemplateParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the publish template params
func (o *PublishTemplateParams) WithNamespace(namespace string) *PublishTemplateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the publish template params
func (o *PublishTemplateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTemplateLanguage adds the templateLanguage to the publish template params
func (o *PublishTemplateParams) WithTemplateLanguage(templateLanguage string) *PublishTemplateParams {
	o.SetTemplateLanguage(templateLanguage)
	return o
}

// SetTemplateLanguage adds the templateLanguage to the publish template params
func (o *PublishTemplateParams) SetTemplateLanguage(templateLanguage string) {
	o.TemplateLanguage = templateLanguage
}

// WithTemplateSlug adds the templateSlug to the publish template params
func (o *PublishTemplateParams) WithTemplateSlug(templateSlug string) *PublishTemplateParams {
	o.SetTemplateSlug(templateSlug)
	return o
}

// SetTemplateSlug adds the templateSlug to the publish template params
func (o *PublishTemplateParams) SetTemplateSlug(templateSlug string) {
	o.TemplateSlug = templateSlug
}

// WriteToRequest writes these params to a swagger request
func (o *PublishTemplateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param templateLanguage
	if err := r.SetPathParam("templateLanguage", o.TemplateLanguage); err != nil {
		return err
	}

	// path param templateSlug
	if err := r.SetPathParam("templateSlug", o.TemplateSlug); err != nil {
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
