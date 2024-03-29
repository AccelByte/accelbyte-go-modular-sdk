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

// NewDeleteTemplateLocalizationParams creates a new DeleteTemplateLocalizationParams object
// with the default values initialized.
func NewDeleteTemplateLocalizationParams() *DeleteTemplateLocalizationParams {
	var ()
	return &DeleteTemplateLocalizationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteTemplateLocalizationParamsWithTimeout creates a new DeleteTemplateLocalizationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteTemplateLocalizationParamsWithTimeout(timeout time.Duration) *DeleteTemplateLocalizationParams {
	var ()
	return &DeleteTemplateLocalizationParams{

		timeout: timeout,
	}
}

// NewDeleteTemplateLocalizationParamsWithContext creates a new DeleteTemplateLocalizationParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteTemplateLocalizationParamsWithContext(ctx context.Context) *DeleteTemplateLocalizationParams {
	var ()
	return &DeleteTemplateLocalizationParams{

		Context: ctx,
	}
}

// NewDeleteTemplateLocalizationParamsWithHTTPClient creates a new DeleteTemplateLocalizationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteTemplateLocalizationParamsWithHTTPClient(client *http.Client) *DeleteTemplateLocalizationParams {
	var ()
	return &DeleteTemplateLocalizationParams{
		HTTPClient: client,
	}
}

/*DeleteTemplateLocalizationParams contains all the parameters to send to the API endpoint
for the delete template localization operation typically these are written to a http.Request
*/
type DeleteTemplateLocalizationParams struct {

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

// WithTimeout adds the timeout to the delete template localization params
func (o *DeleteTemplateLocalizationParams) WithTimeout(timeout time.Duration) *DeleteTemplateLocalizationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete template localization params
func (o *DeleteTemplateLocalizationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete template localization params
func (o *DeleteTemplateLocalizationParams) WithContext(ctx context.Context) *DeleteTemplateLocalizationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete template localization params
func (o *DeleteTemplateLocalizationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete template localization params
func (o *DeleteTemplateLocalizationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete template localization params
func (o *DeleteTemplateLocalizationParams) WithHTTPClient(client *http.Client) *DeleteTemplateLocalizationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete template localization params
func (o *DeleteTemplateLocalizationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete template localization params
func (o *DeleteTemplateLocalizationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteTemplateLocalizationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete template localization params
func (o *DeleteTemplateLocalizationParams) WithNamespace(namespace string) *DeleteTemplateLocalizationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete template localization params
func (o *DeleteTemplateLocalizationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTemplateLanguage adds the templateLanguage to the delete template localization params
func (o *DeleteTemplateLocalizationParams) WithTemplateLanguage(templateLanguage string) *DeleteTemplateLocalizationParams {
	o.SetTemplateLanguage(templateLanguage)
	return o
}

// SetTemplateLanguage adds the templateLanguage to the delete template localization params
func (o *DeleteTemplateLocalizationParams) SetTemplateLanguage(templateLanguage string) {
	o.TemplateLanguage = templateLanguage
}

// WithTemplateSlug adds the templateSlug to the delete template localization params
func (o *DeleteTemplateLocalizationParams) WithTemplateSlug(templateSlug string) *DeleteTemplateLocalizationParams {
	o.SetTemplateSlug(templateSlug)
	return o
}

// SetTemplateSlug adds the templateSlug to the delete template localization params
func (o *DeleteTemplateLocalizationParams) SetTemplateSlug(templateSlug string) {
	o.TemplateSlug = templateSlug
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteTemplateLocalizationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
