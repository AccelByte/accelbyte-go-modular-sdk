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

// NewPostPlayerPublicRecordHandlerV1Params creates a new PostPlayerPublicRecordHandlerV1Params object
// with the default values initialized.
func NewPostPlayerPublicRecordHandlerV1Params() *PostPlayerPublicRecordHandlerV1Params {
	var ()
	return &PostPlayerPublicRecordHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPostPlayerPublicRecordHandlerV1ParamsWithTimeout creates a new PostPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPostPlayerPublicRecordHandlerV1ParamsWithTimeout(timeout time.Duration) *PostPlayerPublicRecordHandlerV1Params {
	var ()
	return &PostPlayerPublicRecordHandlerV1Params{

		timeout: timeout,
	}
}

// NewPostPlayerPublicRecordHandlerV1ParamsWithContext creates a new PostPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPostPlayerPublicRecordHandlerV1ParamsWithContext(ctx context.Context) *PostPlayerPublicRecordHandlerV1Params {
	var ()
	return &PostPlayerPublicRecordHandlerV1Params{

		Context: ctx,
	}
}

// NewPostPlayerPublicRecordHandlerV1ParamsWithHTTPClient creates a new PostPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPostPlayerPublicRecordHandlerV1ParamsWithHTTPClient(client *http.Client) *PostPlayerPublicRecordHandlerV1Params {
	var ()
	return &PostPlayerPublicRecordHandlerV1Params{
		HTTPClient: client,
	}
}

/*PostPlayerPublicRecordHandlerV1Params contains all the parameters to send to the API endpoint
for the post player public record handler v1 operation typically these are written to a http.Request
*/
type PostPlayerPublicRecordHandlerV1Params struct {

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

// WithTimeout adds the timeout to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) WithTimeout(timeout time.Duration) *PostPlayerPublicRecordHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) WithContext(ctx context.Context) *PostPlayerPublicRecordHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) WithHTTPClient(client *http.Client) *PostPlayerPublicRecordHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PostPlayerPublicRecordHandlerV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) WithBody(body *cloudsaveclientmodels.ModelsPlayerRecordRequest) *PostPlayerPublicRecordHandlerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) SetBody(body *cloudsaveclientmodels.ModelsPlayerRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) WithKey(key string) *PostPlayerPublicRecordHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) WithNamespace(namespace string) *PostPlayerPublicRecordHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) WithUserID(userID string) *PostPlayerPublicRecordHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the post player public record handler v1 params
func (o *PostPlayerPublicRecordHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PostPlayerPublicRecordHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
