// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_content_legacy

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

// NewUploadContentScreenshotParams creates a new UploadContentScreenshotParams object
// with the default values initialized.
func NewUploadContentScreenshotParams() *UploadContentScreenshotParams {
	var ()
	return &UploadContentScreenshotParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUploadContentScreenshotParamsWithTimeout creates a new UploadContentScreenshotParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUploadContentScreenshotParamsWithTimeout(timeout time.Duration) *UploadContentScreenshotParams {
	var ()
	return &UploadContentScreenshotParams{

		timeout: timeout,
	}
}

// NewUploadContentScreenshotParamsWithContext creates a new UploadContentScreenshotParams object
// with the default values initialized, and the ability to set a context for a request
func NewUploadContentScreenshotParamsWithContext(ctx context.Context) *UploadContentScreenshotParams {
	var ()
	return &UploadContentScreenshotParams{

		Context: ctx,
	}
}

// NewUploadContentScreenshotParamsWithHTTPClient creates a new UploadContentScreenshotParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUploadContentScreenshotParamsWithHTTPClient(client *http.Client) *UploadContentScreenshotParams {
	var ()
	return &UploadContentScreenshotParams{
		HTTPClient: client,
	}
}

/*UploadContentScreenshotParams contains all the parameters to send to the API endpoint
for the upload content screenshot operation typically these are written to a http.Request
*/
type UploadContentScreenshotParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsCreateScreenshotRequest
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the upload content screenshot params
func (o *UploadContentScreenshotParams) WithTimeout(timeout time.Duration) *UploadContentScreenshotParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the upload content screenshot params
func (o *UploadContentScreenshotParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the upload content screenshot params
func (o *UploadContentScreenshotParams) WithContext(ctx context.Context) *UploadContentScreenshotParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the upload content screenshot params
func (o *UploadContentScreenshotParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the upload content screenshot params
func (o *UploadContentScreenshotParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the upload content screenshot params
func (o *UploadContentScreenshotParams) WithHTTPClient(client *http.Client) *UploadContentScreenshotParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the upload content screenshot params
func (o *UploadContentScreenshotParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the upload content screenshot params
func (o *UploadContentScreenshotParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UploadContentScreenshotParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the upload content screenshot params
func (o *UploadContentScreenshotParams) WithBody(body *ugcclientmodels.ModelsCreateScreenshotRequest) *UploadContentScreenshotParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the upload content screenshot params
func (o *UploadContentScreenshotParams) SetBody(body *ugcclientmodels.ModelsCreateScreenshotRequest) {
	o.Body = body
}

// WithContentID adds the contentID to the upload content screenshot params
func (o *UploadContentScreenshotParams) WithContentID(contentID string) *UploadContentScreenshotParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the upload content screenshot params
func (o *UploadContentScreenshotParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the upload content screenshot params
func (o *UploadContentScreenshotParams) WithNamespace(namespace string) *UploadContentScreenshotParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the upload content screenshot params
func (o *UploadContentScreenshotParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the upload content screenshot params
func (o *UploadContentScreenshotParams) WithUserID(userID string) *UploadContentScreenshotParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the upload content screenshot params
func (o *UploadContentScreenshotParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UploadContentScreenshotParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
