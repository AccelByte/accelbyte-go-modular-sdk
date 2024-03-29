// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package file_upload

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

// NewPublicGeneratedUserUploadContentURLParams creates a new PublicGeneratedUserUploadContentURLParams object
// with the default values initialized.
func NewPublicGeneratedUserUploadContentURLParams() *PublicGeneratedUserUploadContentURLParams {
	var (
		categoryDefault = string("default")
	)
	return &PublicGeneratedUserUploadContentURLParams{
		Category: &categoryDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGeneratedUserUploadContentURLParamsWithTimeout creates a new PublicGeneratedUserUploadContentURLParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGeneratedUserUploadContentURLParamsWithTimeout(timeout time.Duration) *PublicGeneratedUserUploadContentURLParams {
	var (
		categoryDefault = string("default")
	)
	return &PublicGeneratedUserUploadContentURLParams{
		Category: &categoryDefault,

		timeout: timeout,
	}
}

// NewPublicGeneratedUserUploadContentURLParamsWithContext creates a new PublicGeneratedUserUploadContentURLParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGeneratedUserUploadContentURLParamsWithContext(ctx context.Context) *PublicGeneratedUserUploadContentURLParams {
	var (
		categoryDefault = string("default")
	)
	return &PublicGeneratedUserUploadContentURLParams{
		Category: &categoryDefault,

		Context: ctx,
	}
}

// NewPublicGeneratedUserUploadContentURLParamsWithHTTPClient creates a new PublicGeneratedUserUploadContentURLParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGeneratedUserUploadContentURLParamsWithHTTPClient(client *http.Client) *PublicGeneratedUserUploadContentURLParams {
	var (
		categoryDefault = string("default")
	)
	return &PublicGeneratedUserUploadContentURLParams{
		Category:   &categoryDefault,
		HTTPClient: client,
	}
}

/*PublicGeneratedUserUploadContentURLParams contains all the parameters to send to the API endpoint
for the public generated user upload content url operation typically these are written to a http.Request
*/
type PublicGeneratedUserUploadContentURLParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user's id, should follow UUID version 4 without hyphen

	*/
	UserID string
	/*Category
	  Upload category. Supported categories: default, reporting

	*/
	Category *string
	/*FileType
	  one of the these types: jpeg, jpg, png, bmp, gif, mp3, bin, webp

	*/
	FileType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) WithTimeout(timeout time.Duration) *PublicGeneratedUserUploadContentURLParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) WithContext(ctx context.Context) *PublicGeneratedUserUploadContentURLParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) WithHTTPClient(client *http.Client) *PublicGeneratedUserUploadContentURLParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGeneratedUserUploadContentURLParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) WithNamespace(namespace string) *PublicGeneratedUserUploadContentURLParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) WithUserID(userID string) *PublicGeneratedUserUploadContentURLParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithCategory adds the category to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) WithCategory(category *string) *PublicGeneratedUserUploadContentURLParams {
	o.SetCategory(category)
	return o
}

// SetCategory adds the category to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) SetCategory(category *string) {
	o.Category = category
}

// WithFileType adds the fileType to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) WithFileType(fileType string) *PublicGeneratedUserUploadContentURLParams {
	o.SetFileType(fileType)
	return o
}

// SetFileType adds the fileType to the public generated user upload content url params
func (o *PublicGeneratedUserUploadContentURLParams) SetFileType(fileType string) {
	o.FileType = fileType
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGeneratedUserUploadContentURLParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.Category != nil {

		// query param category
		var qrCategory string
		if o.Category != nil {
			qrCategory = *o.Category
		}
		qCategory := qrCategory
		if qCategory != "" {
			if err := r.SetQueryParam("category", qCategory); err != nil {
				return err
			}
		}

	}

	// query param fileType
	qrFileType := o.FileType
	qFileType := qrFileType
	if qFileType != "" {
		if err := r.SetQueryParam("fileType", qFileType); err != nil {
			return err
		}
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
