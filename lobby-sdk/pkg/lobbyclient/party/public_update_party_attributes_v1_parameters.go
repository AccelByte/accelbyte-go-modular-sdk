// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewPublicUpdatePartyAttributesV1Params creates a new PublicUpdatePartyAttributesV1Params object
// with the default values initialized.
func NewPublicUpdatePartyAttributesV1Params() *PublicUpdatePartyAttributesV1Params {
	var ()
	return &PublicUpdatePartyAttributesV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdatePartyAttributesV1ParamsWithTimeout creates a new PublicUpdatePartyAttributesV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdatePartyAttributesV1ParamsWithTimeout(timeout time.Duration) *PublicUpdatePartyAttributesV1Params {
	var ()
	return &PublicUpdatePartyAttributesV1Params{

		timeout: timeout,
	}
}

// NewPublicUpdatePartyAttributesV1ParamsWithContext creates a new PublicUpdatePartyAttributesV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdatePartyAttributesV1ParamsWithContext(ctx context.Context) *PublicUpdatePartyAttributesV1Params {
	var ()
	return &PublicUpdatePartyAttributesV1Params{

		Context: ctx,
	}
}

// NewPublicUpdatePartyAttributesV1ParamsWithHTTPClient creates a new PublicUpdatePartyAttributesV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdatePartyAttributesV1ParamsWithHTTPClient(client *http.Client) *PublicUpdatePartyAttributesV1Params {
	var ()
	return &PublicUpdatePartyAttributesV1Params{
		HTTPClient: client,
	}
}

/*PublicUpdatePartyAttributesV1Params contains all the parameters to send to the API endpoint
for the public update party attributes v1 operation typically these are written to a http.Request
*/
type PublicUpdatePartyAttributesV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelsPartyPUTCustomAttributesRequest
	/*Namespace
	  namespace

	*/
	Namespace string
	/*PartyID
	  party ID

	*/
	PartyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) WithTimeout(timeout time.Duration) *PublicUpdatePartyAttributesV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) WithContext(ctx context.Context) *PublicUpdatePartyAttributesV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) WithHTTPClient(client *http.Client) *PublicUpdatePartyAttributesV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUpdatePartyAttributesV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) WithBody(body *lobbyclientmodels.ModelsPartyPUTCustomAttributesRequest) *PublicUpdatePartyAttributesV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) SetBody(body *lobbyclientmodels.ModelsPartyPUTCustomAttributesRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) WithNamespace(namespace string) *PublicUpdatePartyAttributesV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) WithPartyID(partyID string) *PublicUpdatePartyAttributesV1Params {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the public update party attributes v1 params
func (o *PublicUpdatePartyAttributesV1Params) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdatePartyAttributesV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param partyId
	if err := r.SetPathParam("partyId", o.PartyID); err != nil {
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
