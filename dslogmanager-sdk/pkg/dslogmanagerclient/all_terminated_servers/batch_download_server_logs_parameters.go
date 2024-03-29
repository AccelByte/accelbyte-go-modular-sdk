// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package all_terminated_servers

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
)

// NewBatchDownloadServerLogsParams creates a new BatchDownloadServerLogsParams object
// with the default values initialized.
func NewBatchDownloadServerLogsParams() *BatchDownloadServerLogsParams {
	var ()
	return &BatchDownloadServerLogsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBatchDownloadServerLogsParamsWithTimeout creates a new BatchDownloadServerLogsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBatchDownloadServerLogsParamsWithTimeout(timeout time.Duration) *BatchDownloadServerLogsParams {
	var ()
	return &BatchDownloadServerLogsParams{

		timeout: timeout,
	}
}

// NewBatchDownloadServerLogsParamsWithContext creates a new BatchDownloadServerLogsParams object
// with the default values initialized, and the ability to set a context for a request
func NewBatchDownloadServerLogsParamsWithContext(ctx context.Context) *BatchDownloadServerLogsParams {
	var ()
	return &BatchDownloadServerLogsParams{

		Context: ctx,
	}
}

// NewBatchDownloadServerLogsParamsWithHTTPClient creates a new BatchDownloadServerLogsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBatchDownloadServerLogsParamsWithHTTPClient(client *http.Client) *BatchDownloadServerLogsParams {
	var ()
	return &BatchDownloadServerLogsParams{
		HTTPClient: client,
	}
}

/*BatchDownloadServerLogsParams contains all the parameters to send to the API endpoint
for the batch download server logs operation typically these are written to a http.Request
*/
type BatchDownloadServerLogsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dslogmanagerclientmodels.ModelsBatchDownloadLogsRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the batch download server logs params
func (o *BatchDownloadServerLogsParams) WithTimeout(timeout time.Duration) *BatchDownloadServerLogsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the batch download server logs params
func (o *BatchDownloadServerLogsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the batch download server logs params
func (o *BatchDownloadServerLogsParams) WithContext(ctx context.Context) *BatchDownloadServerLogsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the batch download server logs params
func (o *BatchDownloadServerLogsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the batch download server logs params
func (o *BatchDownloadServerLogsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the batch download server logs params
func (o *BatchDownloadServerLogsParams) WithHTTPClient(client *http.Client) *BatchDownloadServerLogsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the batch download server logs params
func (o *BatchDownloadServerLogsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the batch download server logs params
func (o *BatchDownloadServerLogsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BatchDownloadServerLogsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the batch download server logs params
func (o *BatchDownloadServerLogsParams) WithBody(body *dslogmanagerclientmodels.ModelsBatchDownloadLogsRequest) *BatchDownloadServerLogsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the batch download server logs params
func (o *BatchDownloadServerLogsParams) SetBody(body *dslogmanagerclientmodels.ModelsBatchDownloadLogsRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *BatchDownloadServerLogsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
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
