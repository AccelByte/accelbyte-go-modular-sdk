// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package image_config

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

// NewDeleteImagePatchParams creates a new DeleteImagePatchParams object
// with the default values initialized.
func NewDeleteImagePatchParams() *DeleteImagePatchParams {
	var ()
	return &DeleteImagePatchParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteImagePatchParamsWithTimeout creates a new DeleteImagePatchParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteImagePatchParamsWithTimeout(timeout time.Duration) *DeleteImagePatchParams {
	var ()
	return &DeleteImagePatchParams{

		timeout: timeout,
	}
}

// NewDeleteImagePatchParamsWithContext creates a new DeleteImagePatchParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteImagePatchParamsWithContext(ctx context.Context) *DeleteImagePatchParams {
	var ()
	return &DeleteImagePatchParams{

		Context: ctx,
	}
}

// NewDeleteImagePatchParamsWithHTTPClient creates a new DeleteImagePatchParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteImagePatchParamsWithHTTPClient(client *http.Client) *DeleteImagePatchParams {
	var ()
	return &DeleteImagePatchParams{
		HTTPClient: client,
	}
}

/*DeleteImagePatchParams contains all the parameters to send to the API endpoint
for the delete image patch operation typically these are written to a http.Request
*/
type DeleteImagePatchParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ImageURI
	  registry image patch URI that will be deleted

	*/
	ImageURI string
	/*Version
	  image version that will be deleted

	*/
	Version string
	/*VersionPatch
	  image patch version that will be deleted

	*/
	VersionPatch string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete image patch params
func (o *DeleteImagePatchParams) WithTimeout(timeout time.Duration) *DeleteImagePatchParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete image patch params
func (o *DeleteImagePatchParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete image patch params
func (o *DeleteImagePatchParams) WithContext(ctx context.Context) *DeleteImagePatchParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete image patch params
func (o *DeleteImagePatchParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete image patch params
func (o *DeleteImagePatchParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete image patch params
func (o *DeleteImagePatchParams) WithHTTPClient(client *http.Client) *DeleteImagePatchParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete image patch params
func (o *DeleteImagePatchParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete image patch params
func (o *DeleteImagePatchParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteImagePatchParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete image patch params
func (o *DeleteImagePatchParams) WithNamespace(namespace string) *DeleteImagePatchParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete image patch params
func (o *DeleteImagePatchParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithImageURI adds the imageURI to the delete image patch params
func (o *DeleteImagePatchParams) WithImageURI(imageURI string) *DeleteImagePatchParams {
	o.SetImageURI(imageURI)
	return o
}

// SetImageURI adds the imageUri to the delete image patch params
func (o *DeleteImagePatchParams) SetImageURI(imageURI string) {
	o.ImageURI = imageURI
}

// WithVersion adds the version to the delete image patch params
func (o *DeleteImagePatchParams) WithVersion(version string) *DeleteImagePatchParams {
	o.SetVersion(version)
	return o
}

// SetVersion adds the version to the delete image patch params
func (o *DeleteImagePatchParams) SetVersion(version string) {
	o.Version = version
}

// WithVersionPatch adds the versionPatch to the delete image patch params
func (o *DeleteImagePatchParams) WithVersionPatch(versionPatch string) *DeleteImagePatchParams {
	o.SetVersionPatch(versionPatch)
	return o
}

// SetVersionPatch adds the versionPatch to the delete image patch params
func (o *DeleteImagePatchParams) SetVersionPatch(versionPatch string) {
	o.VersionPatch = versionPatch
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteImagePatchParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param imageURI
	qrImageURI := o.ImageURI
	qImageURI := qrImageURI
	if qImageURI != "" {
		if err := r.SetQueryParam("imageURI", qImageURI); err != nil {
			return err
		}
	}

	// query param version
	qrVersion := o.Version
	qVersion := qrVersion
	if qVersion != "" {
		if err := r.SetQueryParam("version", qVersion); err != nil {
			return err
		}
	}

	// query param versionPatch
	qrVersionPatch := o.VersionPatch
	qVersionPatch := qrVersionPatch
	if qVersionPatch != "" {
		if err := r.SetQueryParam("versionPatch", qVersionPatch); err != nil {
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
