// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deployment_config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewGetAllDeploymentParams creates a new GetAllDeploymentParams object
// with the default values initialized.
func NewGetAllDeploymentParams() *GetAllDeploymentParams {
	var ()
	return &GetAllDeploymentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllDeploymentParamsWithTimeout creates a new GetAllDeploymentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllDeploymentParamsWithTimeout(timeout time.Duration) *GetAllDeploymentParams {
	var ()
	return &GetAllDeploymentParams{

		timeout: timeout,
	}
}

// NewGetAllDeploymentParamsWithContext creates a new GetAllDeploymentParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllDeploymentParamsWithContext(ctx context.Context) *GetAllDeploymentParams {
	var ()
	return &GetAllDeploymentParams{

		Context: ctx,
	}
}

// NewGetAllDeploymentParamsWithHTTPClient creates a new GetAllDeploymentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllDeploymentParamsWithHTTPClient(client *http.Client) *GetAllDeploymentParams {
	var ()
	return &GetAllDeploymentParams{
		HTTPClient: client,
	}
}

/*GetAllDeploymentParams contains all the parameters to send to the API endpoint
for the get all deployment operation typically these are written to a http.Request
*/
type GetAllDeploymentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Name
	  name of the deployment

	*/
	Name *string
	/*Count
	  how many items to return

	*/
	Count int64
	/*Offset
	  offset from list to query from

	*/
	Offset int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get all deployment params
func (o *GetAllDeploymentParams) WithTimeout(timeout time.Duration) *GetAllDeploymentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all deployment params
func (o *GetAllDeploymentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all deployment params
func (o *GetAllDeploymentParams) WithContext(ctx context.Context) *GetAllDeploymentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all deployment params
func (o *GetAllDeploymentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get all deployment params
func (o *GetAllDeploymentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get all deployment params
func (o *GetAllDeploymentParams) WithHTTPClient(client *http.Client) *GetAllDeploymentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all deployment params
func (o *GetAllDeploymentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get all deployment params
func (o *GetAllDeploymentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAllDeploymentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get all deployment params
func (o *GetAllDeploymentParams) WithNamespace(namespace string) *GetAllDeploymentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all deployment params
func (o *GetAllDeploymentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithName adds the name to the get all deployment params
func (o *GetAllDeploymentParams) WithName(name *string) *GetAllDeploymentParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the get all deployment params
func (o *GetAllDeploymentParams) SetName(name *string) {
	o.Name = name
}

// WithCount adds the count to the get all deployment params
func (o *GetAllDeploymentParams) WithCount(count int64) *GetAllDeploymentParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the get all deployment params
func (o *GetAllDeploymentParams) SetCount(count int64) {
	o.Count = count
}

// WithOffset adds the offset to the get all deployment params
func (o *GetAllDeploymentParams) WithOffset(offset int64) *GetAllDeploymentParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get all deployment params
func (o *GetAllDeploymentParams) SetOffset(offset int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllDeploymentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Name != nil {

		// query param name
		var qrName string
		if o.Name != nil {
			qrName = *o.Name
		}
		qName := qrName
		if qName != "" {
			if err := r.SetQueryParam("name", qName); err != nil {
				return err
			}
		}

	}

	// query param count
	qrCount := o.Count
	qCount := swag.FormatInt64(qrCount)
	if qCount != "" {
		if err := r.SetQueryParam("count", qCount); err != nil {
			return err
		}
	}

	// query param offset
	qrOffset := o.Offset
	qOffset := swag.FormatInt64(qrOffset)
	if qOffset != "" {
		if err := r.SetQueryParam("offset", qOffset); err != nil {
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
