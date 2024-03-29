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

// NewGetImagePatchDetailParams creates a new GetImagePatchDetailParams object
// with the default values initialized.
func NewGetImagePatchDetailParams() *GetImagePatchDetailParams {
	var ()
	return &GetImagePatchDetailParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetImagePatchDetailParamsWithTimeout creates a new GetImagePatchDetailParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetImagePatchDetailParamsWithTimeout(timeout time.Duration) *GetImagePatchDetailParams {
	var ()
	return &GetImagePatchDetailParams{

		timeout: timeout,
	}
}

// NewGetImagePatchDetailParamsWithContext creates a new GetImagePatchDetailParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetImagePatchDetailParamsWithContext(ctx context.Context) *GetImagePatchDetailParams {
	var ()
	return &GetImagePatchDetailParams{

		Context: ctx,
	}
}

// NewGetImagePatchDetailParamsWithHTTPClient creates a new GetImagePatchDetailParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetImagePatchDetailParamsWithHTTPClient(client *http.Client) *GetImagePatchDetailParams {
	var ()
	return &GetImagePatchDetailParams{
		HTTPClient: client,
	}
}

/*GetImagePatchDetailParams contains all the parameters to send to the API endpoint
for the get image patch detail operation typically these are written to a http.Request
*/
type GetImagePatchDetailParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Version
	  version of the game

	*/
	Version string
	/*VersionPatch
	  version of the image patch

	*/
	VersionPatch string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get image patch detail params
func (o *GetImagePatchDetailParams) WithTimeout(timeout time.Duration) *GetImagePatchDetailParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get image patch detail params
func (o *GetImagePatchDetailParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get image patch detail params
func (o *GetImagePatchDetailParams) WithContext(ctx context.Context) *GetImagePatchDetailParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get image patch detail params
func (o *GetImagePatchDetailParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get image patch detail params
func (o *GetImagePatchDetailParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get image patch detail params
func (o *GetImagePatchDetailParams) WithHTTPClient(client *http.Client) *GetImagePatchDetailParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get image patch detail params
func (o *GetImagePatchDetailParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get image patch detail params
func (o *GetImagePatchDetailParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetImagePatchDetailParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get image patch detail params
func (o *GetImagePatchDetailParams) WithNamespace(namespace string) *GetImagePatchDetailParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get image patch detail params
func (o *GetImagePatchDetailParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithVersion adds the version to the get image patch detail params
func (o *GetImagePatchDetailParams) WithVersion(version string) *GetImagePatchDetailParams {
	o.SetVersion(version)
	return o
}

// SetVersion adds the version to the get image patch detail params
func (o *GetImagePatchDetailParams) SetVersion(version string) {
	o.Version = version
}

// WithVersionPatch adds the versionPatch to the get image patch detail params
func (o *GetImagePatchDetailParams) WithVersionPatch(versionPatch string) *GetImagePatchDetailParams {
	o.SetVersionPatch(versionPatch)
	return o
}

// SetVersionPatch adds the versionPatch to the get image patch detail params
func (o *GetImagePatchDetailParams) SetVersionPatch(versionPatch string) {
	o.VersionPatch = versionPatch
}

// WriteToRequest writes these params to a swagger request
func (o *GetImagePatchDetailParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param version
	if err := r.SetPathParam("version", o.Version); err != nil {
		return err
	}

	// path param versionPatch
	if err := r.SetPathParam("versionPatch", o.VersionPatch); err != nil {
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
