// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

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

// NewAdminImportProfanityFiltersFromFileParams creates a new AdminImportProfanityFiltersFromFileParams object
// with the default values initialized.
func NewAdminImportProfanityFiltersFromFileParams() *AdminImportProfanityFiltersFromFileParams {
	var ()
	return &AdminImportProfanityFiltersFromFileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminImportProfanityFiltersFromFileParamsWithTimeout creates a new AdminImportProfanityFiltersFromFileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminImportProfanityFiltersFromFileParamsWithTimeout(timeout time.Duration) *AdminImportProfanityFiltersFromFileParams {
	var ()
	return &AdminImportProfanityFiltersFromFileParams{

		timeout: timeout,
	}
}

// NewAdminImportProfanityFiltersFromFileParamsWithContext creates a new AdminImportProfanityFiltersFromFileParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminImportProfanityFiltersFromFileParamsWithContext(ctx context.Context) *AdminImportProfanityFiltersFromFileParams {
	var ()
	return &AdminImportProfanityFiltersFromFileParams{

		Context: ctx,
	}
}

// NewAdminImportProfanityFiltersFromFileParamsWithHTTPClient creates a new AdminImportProfanityFiltersFromFileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminImportProfanityFiltersFromFileParamsWithHTTPClient(client *http.Client) *AdminImportProfanityFiltersFromFileParams {
	var ()
	return &AdminImportProfanityFiltersFromFileParams{
		HTTPClient: client,
	}
}

/*
AdminImportProfanityFiltersFromFileParams contains all the parameters to send to the API endpoint
for the admin import profanity filters from file operation typically these are written to a http.Request
*/
type AdminImportProfanityFiltersFromFileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []int64
	/*List
	  list

	*/
	List string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) WithTimeout(timeout time.Duration) *AdminImportProfanityFiltersFromFileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) WithContext(ctx context.Context) *AdminImportProfanityFiltersFromFileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) WithHTTPClient(client *http.Client) *AdminImportProfanityFiltersFromFileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminImportProfanityFiltersFromFileParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) WithBody(body []int64) *AdminImportProfanityFiltersFromFileParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) SetBody(body []int64) {
	o.Body = body
}

// WithList adds the listVar to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) WithList(listVar string) *AdminImportProfanityFiltersFromFileParams {
	o.SetList(listVar)
	return o
}

// SetList adds the list to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) SetList(listVar string) {
	o.List = listVar
}

// WithNamespace adds the namespace to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) WithNamespace(namespace string) *AdminImportProfanityFiltersFromFileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin import profanity filters from file params
func (o *AdminImportProfanityFiltersFromFileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminImportProfanityFiltersFromFileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param list
	if err := r.SetPathParam("list", o.List); err != nil {
		return err
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
