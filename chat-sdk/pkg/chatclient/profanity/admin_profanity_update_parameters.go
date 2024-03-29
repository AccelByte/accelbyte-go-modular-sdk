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

	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclientmodels"
)

// NewAdminProfanityUpdateParams creates a new AdminProfanityUpdateParams object
// with the default values initialized.
func NewAdminProfanityUpdateParams() *AdminProfanityUpdateParams {
	var ()
	return &AdminProfanityUpdateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminProfanityUpdateParamsWithTimeout creates a new AdminProfanityUpdateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminProfanityUpdateParamsWithTimeout(timeout time.Duration) *AdminProfanityUpdateParams {
	var ()
	return &AdminProfanityUpdateParams{

		timeout: timeout,
	}
}

// NewAdminProfanityUpdateParamsWithContext creates a new AdminProfanityUpdateParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminProfanityUpdateParamsWithContext(ctx context.Context) *AdminProfanityUpdateParams {
	var ()
	return &AdminProfanityUpdateParams{

		Context: ctx,
	}
}

// NewAdminProfanityUpdateParamsWithHTTPClient creates a new AdminProfanityUpdateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminProfanityUpdateParamsWithHTTPClient(client *http.Client) *AdminProfanityUpdateParams {
	var ()
	return &AdminProfanityUpdateParams{
		HTTPClient: client,
	}
}

/*AdminProfanityUpdateParams contains all the parameters to send to the API endpoint
for the admin profanity update operation typically these are written to a http.Request
*/
type AdminProfanityUpdateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsDictionaryUpdateRequest
	/*ID
	  id of the dictionary

	*/
	ID string
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

// WithTimeout adds the timeout to the admin profanity update params
func (o *AdminProfanityUpdateParams) WithTimeout(timeout time.Duration) *AdminProfanityUpdateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin profanity update params
func (o *AdminProfanityUpdateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin profanity update params
func (o *AdminProfanityUpdateParams) WithContext(ctx context.Context) *AdminProfanityUpdateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin profanity update params
func (o *AdminProfanityUpdateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin profanity update params
func (o *AdminProfanityUpdateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin profanity update params
func (o *AdminProfanityUpdateParams) WithHTTPClient(client *http.Client) *AdminProfanityUpdateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin profanity update params
func (o *AdminProfanityUpdateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin profanity update params
func (o *AdminProfanityUpdateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminProfanityUpdateParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin profanity update params
func (o *AdminProfanityUpdateParams) WithBody(body *chatclientmodels.ModelsDictionaryUpdateRequest) *AdminProfanityUpdateParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin profanity update params
func (o *AdminProfanityUpdateParams) SetBody(body *chatclientmodels.ModelsDictionaryUpdateRequest) {
	o.Body = body
}

// WithID adds the idVar to the admin profanity update params
func (o *AdminProfanityUpdateParams) WithID(idVar string) *AdminProfanityUpdateParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the admin profanity update params
func (o *AdminProfanityUpdateParams) SetID(idVar string) {
	o.ID = idVar
}

// WithNamespace adds the namespace to the admin profanity update params
func (o *AdminProfanityUpdateParams) WithNamespace(namespace string) *AdminProfanityUpdateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin profanity update params
func (o *AdminProfanityUpdateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminProfanityUpdateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
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
