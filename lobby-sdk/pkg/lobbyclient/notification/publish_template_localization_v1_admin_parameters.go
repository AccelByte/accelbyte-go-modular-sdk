// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

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

// NewPublishTemplateLocalizationV1AdminParams creates a new PublishTemplateLocalizationV1AdminParams object
// with the default values initialized.
func NewPublishTemplateLocalizationV1AdminParams() *PublishTemplateLocalizationV1AdminParams {
	var ()
	return &PublishTemplateLocalizationV1AdminParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublishTemplateLocalizationV1AdminParamsWithTimeout creates a new PublishTemplateLocalizationV1AdminParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublishTemplateLocalizationV1AdminParamsWithTimeout(timeout time.Duration) *PublishTemplateLocalizationV1AdminParams {
	var ()
	return &PublishTemplateLocalizationV1AdminParams{

		timeout: timeout,
	}
}

// NewPublishTemplateLocalizationV1AdminParamsWithContext creates a new PublishTemplateLocalizationV1AdminParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublishTemplateLocalizationV1AdminParamsWithContext(ctx context.Context) *PublishTemplateLocalizationV1AdminParams {
	var ()
	return &PublishTemplateLocalizationV1AdminParams{

		Context: ctx,
	}
}

// NewPublishTemplateLocalizationV1AdminParamsWithHTTPClient creates a new PublishTemplateLocalizationV1AdminParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublishTemplateLocalizationV1AdminParamsWithHTTPClient(client *http.Client) *PublishTemplateLocalizationV1AdminParams {
	var ()
	return &PublishTemplateLocalizationV1AdminParams{
		HTTPClient: client,
	}
}

/*PublishTemplateLocalizationV1AdminParams contains all the parameters to send to the API endpoint
for the publish template localization v1 admin operation typically these are written to a http.Request
*/
type PublishTemplateLocalizationV1AdminParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*TemplateLanguage
	  template language, follows IETF BCP 47 standard

	*/
	TemplateLanguage string
	/*TemplateSlug
	  Template Identifier, only alphabet characters and hyphens are permitted

	*/
	TemplateSlug string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) WithTimeout(timeout time.Duration) *PublishTemplateLocalizationV1AdminParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) WithContext(ctx context.Context) *PublishTemplateLocalizationV1AdminParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) WithHTTPClient(client *http.Client) *PublishTemplateLocalizationV1AdminParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublishTemplateLocalizationV1AdminParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) WithNamespace(namespace string) *PublishTemplateLocalizationV1AdminParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTemplateLanguage adds the templateLanguage to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) WithTemplateLanguage(templateLanguage string) *PublishTemplateLocalizationV1AdminParams {
	o.SetTemplateLanguage(templateLanguage)
	return o
}

// SetTemplateLanguage adds the templateLanguage to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) SetTemplateLanguage(templateLanguage string) {
	o.TemplateLanguage = templateLanguage
}

// WithTemplateSlug adds the templateSlug to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) WithTemplateSlug(templateSlug string) *PublishTemplateLocalizationV1AdminParams {
	o.SetTemplateSlug(templateSlug)
	return o
}

// SetTemplateSlug adds the templateSlug to the publish template localization v1 admin params
func (o *PublishTemplateLocalizationV1AdminParams) SetTemplateSlug(templateSlug string) {
	o.TemplateSlug = templateSlug
}

// WriteToRequest writes these params to a swagger request
func (o *PublishTemplateLocalizationV1AdminParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
