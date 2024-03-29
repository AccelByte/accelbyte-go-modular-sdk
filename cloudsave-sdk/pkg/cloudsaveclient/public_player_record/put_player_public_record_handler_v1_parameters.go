// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_player_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewPutPlayerPublicRecordHandlerV1Params creates a new PutPlayerPublicRecordHandlerV1Params object
// with the default values initialized.
func NewPutPlayerPublicRecordHandlerV1Params() *PutPlayerPublicRecordHandlerV1Params {
	var ()
	return &PutPlayerPublicRecordHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPutPlayerPublicRecordHandlerV1ParamsWithTimeout creates a new PutPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPutPlayerPublicRecordHandlerV1ParamsWithTimeout(timeout time.Duration) *PutPlayerPublicRecordHandlerV1Params {
	var ()
	return &PutPlayerPublicRecordHandlerV1Params{

		timeout: timeout,
	}
}

// NewPutPlayerPublicRecordHandlerV1ParamsWithContext creates a new PutPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPutPlayerPublicRecordHandlerV1ParamsWithContext(ctx context.Context) *PutPlayerPublicRecordHandlerV1Params {
	var ()
	return &PutPlayerPublicRecordHandlerV1Params{

		Context: ctx,
	}
}

// NewPutPlayerPublicRecordHandlerV1ParamsWithHTTPClient creates a new PutPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPutPlayerPublicRecordHandlerV1ParamsWithHTTPClient(client *http.Client) *PutPlayerPublicRecordHandlerV1Params {
	var ()
	return &PutPlayerPublicRecordHandlerV1Params{
		HTTPClient: client,
	}
}

/*PutPlayerPublicRecordHandlerV1Params contains all the parameters to send to the API endpoint
for the put player public record handler v1 operation typically these are written to a http.Request
*/
type PutPlayerPublicRecordHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body cloudsaveclientmodels.ModelsPlayerRecordRequest
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user ID who own the record, should follow UUID version 4 without hyphen format

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) WithTimeout(timeout time.Duration) *PutPlayerPublicRecordHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) WithContext(ctx context.Context) *PutPlayerPublicRecordHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) WithHTTPClient(client *http.Client) *PutPlayerPublicRecordHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PutPlayerPublicRecordHandlerV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) WithBody(body *cloudsaveclientmodels.ModelsPlayerRecordRequest) *PutPlayerPublicRecordHandlerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) SetBody(body *cloudsaveclientmodels.ModelsPlayerRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) WithKey(key string) *PutPlayerPublicRecordHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) WithNamespace(namespace string) *PutPlayerPublicRecordHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) WithUserID(userID string) *PutPlayerPublicRecordHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the put player public record handler v1 params
func (o *PutPlayerPublicRecordHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PutPlayerPublicRecordHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
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
