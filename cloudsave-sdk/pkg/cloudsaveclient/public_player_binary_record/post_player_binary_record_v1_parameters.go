// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_binary_record

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

// NewPostPlayerBinaryRecordV1Params creates a new PostPlayerBinaryRecordV1Params object
// with the default values initialized.
func NewPostPlayerBinaryRecordV1Params() *PostPlayerBinaryRecordV1Params {
	var ()
	return &PostPlayerBinaryRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPostPlayerBinaryRecordV1ParamsWithTimeout creates a new PostPlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPostPlayerBinaryRecordV1ParamsWithTimeout(timeout time.Duration) *PostPlayerBinaryRecordV1Params {
	var ()
	return &PostPlayerBinaryRecordV1Params{

		timeout: timeout,
	}
}

// NewPostPlayerBinaryRecordV1ParamsWithContext creates a new PostPlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPostPlayerBinaryRecordV1ParamsWithContext(ctx context.Context) *PostPlayerBinaryRecordV1Params {
	var ()
	return &PostPlayerBinaryRecordV1Params{

		Context: ctx,
	}
}

// NewPostPlayerBinaryRecordV1ParamsWithHTTPClient creates a new PostPlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPostPlayerBinaryRecordV1ParamsWithHTTPClient(client *http.Client) *PostPlayerBinaryRecordV1Params {
	var ()
	return &PostPlayerBinaryRecordV1Params{
		HTTPClient: client,
	}
}

/*PostPlayerBinaryRecordV1Params contains all the parameters to send to the API endpoint
for the post player binary record v1 operation typically these are written to a http.Request
*/
type PostPlayerBinaryRecordV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsPublicPlayerBinaryRecordCreate
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID who own the record

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) WithTimeout(timeout time.Duration) *PostPlayerBinaryRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) WithContext(ctx context.Context) *PostPlayerBinaryRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) WithHTTPClient(client *http.Client) *PostPlayerBinaryRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) WithBody(body *cloudsaveclientmodels.ModelsPublicPlayerBinaryRecordCreate) *PostPlayerBinaryRecordV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) SetBody(body *cloudsaveclientmodels.ModelsPublicPlayerBinaryRecordCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) WithNamespace(namespace string) *PostPlayerBinaryRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) WithUserID(userID string) *PostPlayerBinaryRecordV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the post player binary record v1 params
func (o *PostPlayerBinaryRecordV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PostPlayerBinaryRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
