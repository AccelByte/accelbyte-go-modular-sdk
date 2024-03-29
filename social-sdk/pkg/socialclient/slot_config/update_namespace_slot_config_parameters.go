// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot_config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclientmodels"
)

// NewUpdateNamespaceSlotConfigParams creates a new UpdateNamespaceSlotConfigParams object
// with the default values initialized.
func NewUpdateNamespaceSlotConfigParams() *UpdateNamespaceSlotConfigParams {
	var ()
	return &UpdateNamespaceSlotConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateNamespaceSlotConfigParamsWithTimeout creates a new UpdateNamespaceSlotConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateNamespaceSlotConfigParamsWithTimeout(timeout time.Duration) *UpdateNamespaceSlotConfigParams {
	var ()
	return &UpdateNamespaceSlotConfigParams{

		timeout: timeout,
	}
}

// NewUpdateNamespaceSlotConfigParamsWithContext creates a new UpdateNamespaceSlotConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateNamespaceSlotConfigParamsWithContext(ctx context.Context) *UpdateNamespaceSlotConfigParams {
	var ()
	return &UpdateNamespaceSlotConfigParams{

		Context: ctx,
	}
}

// NewUpdateNamespaceSlotConfigParamsWithHTTPClient creates a new UpdateNamespaceSlotConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateNamespaceSlotConfigParamsWithHTTPClient(client *http.Client) *UpdateNamespaceSlotConfigParams {
	var ()
	return &UpdateNamespaceSlotConfigParams{
		HTTPClient: client,
	}
}

/*UpdateNamespaceSlotConfigParams contains all the parameters to send to the API endpoint
for the update namespace slot config operation typically these are written to a http.Request
*/
type UpdateNamespaceSlotConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.SlotConfigUpdate
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

// WithTimeout adds the timeout to the update namespace slot config params
func (o *UpdateNamespaceSlotConfigParams) WithTimeout(timeout time.Duration) *UpdateNamespaceSlotConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update namespace slot config params
func (o *UpdateNamespaceSlotConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update namespace slot config params
func (o *UpdateNamespaceSlotConfigParams) WithContext(ctx context.Context) *UpdateNamespaceSlotConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update namespace slot config params
func (o *UpdateNamespaceSlotConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update namespace slot config params
func (o *UpdateNamespaceSlotConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update namespace slot config params
func (o *UpdateNamespaceSlotConfigParams) WithHTTPClient(client *http.Client) *UpdateNamespaceSlotConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update namespace slot config params
func (o *UpdateNamespaceSlotConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update namespace slot config params
func (o *UpdateNamespaceSlotConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateNamespaceSlotConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update namespace slot config params
func (o *UpdateNamespaceSlotConfigParams) WithBody(body *socialclientmodels.SlotConfigUpdate) *UpdateNamespaceSlotConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update namespace slot config params
func (o *UpdateNamespaceSlotConfigParams) SetBody(body *socialclientmodels.SlotConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update namespace slot config params
func (o *UpdateNamespaceSlotConfigParams) WithNamespace(namespace string) *UpdateNamespaceSlotConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update namespace slot config params
func (o *UpdateNamespaceSlotConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateNamespaceSlotConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
