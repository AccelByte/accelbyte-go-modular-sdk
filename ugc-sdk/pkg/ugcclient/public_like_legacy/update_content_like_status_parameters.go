// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_like_legacy

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewUpdateContentLikeStatusParams creates a new UpdateContentLikeStatusParams object
// with the default values initialized.
func NewUpdateContentLikeStatusParams() *UpdateContentLikeStatusParams {
	var ()
	return &UpdateContentLikeStatusParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateContentLikeStatusParamsWithTimeout creates a new UpdateContentLikeStatusParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateContentLikeStatusParamsWithTimeout(timeout time.Duration) *UpdateContentLikeStatusParams {
	var ()
	return &UpdateContentLikeStatusParams{

		timeout: timeout,
	}
}

// NewUpdateContentLikeStatusParamsWithContext creates a new UpdateContentLikeStatusParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateContentLikeStatusParamsWithContext(ctx context.Context) *UpdateContentLikeStatusParams {
	var ()
	return &UpdateContentLikeStatusParams{

		Context: ctx,
	}
}

// NewUpdateContentLikeStatusParamsWithHTTPClient creates a new UpdateContentLikeStatusParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateContentLikeStatusParamsWithHTTPClient(client *http.Client) *UpdateContentLikeStatusParams {
	var ()
	return &UpdateContentLikeStatusParams{
		HTTPClient: client,
	}
}

/*UpdateContentLikeStatusParams contains all the parameters to send to the API endpoint
for the update content like status operation typically these are written to a http.Request
*/
type UpdateContentLikeStatusParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsContentLikeRequest
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update content like status params
func (o *UpdateContentLikeStatusParams) WithTimeout(timeout time.Duration) *UpdateContentLikeStatusParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update content like status params
func (o *UpdateContentLikeStatusParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update content like status params
func (o *UpdateContentLikeStatusParams) WithContext(ctx context.Context) *UpdateContentLikeStatusParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update content like status params
func (o *UpdateContentLikeStatusParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update content like status params
func (o *UpdateContentLikeStatusParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update content like status params
func (o *UpdateContentLikeStatusParams) WithHTTPClient(client *http.Client) *UpdateContentLikeStatusParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update content like status params
func (o *UpdateContentLikeStatusParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update content like status params
func (o *UpdateContentLikeStatusParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update content like status params
func (o *UpdateContentLikeStatusParams) WithBody(body *ugcclientmodels.ModelsContentLikeRequest) *UpdateContentLikeStatusParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update content like status params
func (o *UpdateContentLikeStatusParams) SetBody(body *ugcclientmodels.ModelsContentLikeRequest) {
	o.Body = body
}

// WithContentID adds the contentID to the update content like status params
func (o *UpdateContentLikeStatusParams) WithContentID(contentID string) *UpdateContentLikeStatusParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the update content like status params
func (o *UpdateContentLikeStatusParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the update content like status params
func (o *UpdateContentLikeStatusParams) WithNamespace(namespace string) *UpdateContentLikeStatusParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update content like status params
func (o *UpdateContentLikeStatusParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateContentLikeStatusParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
