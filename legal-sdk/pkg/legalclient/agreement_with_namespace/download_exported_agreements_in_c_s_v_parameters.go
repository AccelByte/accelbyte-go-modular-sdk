// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreement_with_namespace

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

// NewDownloadExportedAgreementsInCSVParams creates a new DownloadExportedAgreementsInCSVParams object
// with the default values initialized.
func NewDownloadExportedAgreementsInCSVParams() *DownloadExportedAgreementsInCSVParams {
	var ()
	return &DownloadExportedAgreementsInCSVParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDownloadExportedAgreementsInCSVParamsWithTimeout creates a new DownloadExportedAgreementsInCSVParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDownloadExportedAgreementsInCSVParamsWithTimeout(timeout time.Duration) *DownloadExportedAgreementsInCSVParams {
	var ()
	return &DownloadExportedAgreementsInCSVParams{

		timeout: timeout,
	}
}

// NewDownloadExportedAgreementsInCSVParamsWithContext creates a new DownloadExportedAgreementsInCSVParams object
// with the default values initialized, and the ability to set a context for a request
func NewDownloadExportedAgreementsInCSVParamsWithContext(ctx context.Context) *DownloadExportedAgreementsInCSVParams {
	var ()
	return &DownloadExportedAgreementsInCSVParams{

		Context: ctx,
	}
}

// NewDownloadExportedAgreementsInCSVParamsWithHTTPClient creates a new DownloadExportedAgreementsInCSVParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDownloadExportedAgreementsInCSVParamsWithHTTPClient(client *http.Client) *DownloadExportedAgreementsInCSVParams {
	var ()
	return &DownloadExportedAgreementsInCSVParams{
		HTTPClient: client,
	}
}

/*DownloadExportedAgreementsInCSVParams contains all the parameters to send to the API endpoint
for the download exported agreements in csv operation typically these are written to a http.Request
*/
type DownloadExportedAgreementsInCSVParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*ExportID
	  Export Id

	*/
	ExportID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the download exported agreements in csv params
func (o *DownloadExportedAgreementsInCSVParams) WithTimeout(timeout time.Duration) *DownloadExportedAgreementsInCSVParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the download exported agreements in csv params
func (o *DownloadExportedAgreementsInCSVParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the download exported agreements in csv params
func (o *DownloadExportedAgreementsInCSVParams) WithContext(ctx context.Context) *DownloadExportedAgreementsInCSVParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the download exported agreements in csv params
func (o *DownloadExportedAgreementsInCSVParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the download exported agreements in csv params
func (o *DownloadExportedAgreementsInCSVParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the download exported agreements in csv params
func (o *DownloadExportedAgreementsInCSVParams) WithHTTPClient(client *http.Client) *DownloadExportedAgreementsInCSVParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the download exported agreements in csv params
func (o *DownloadExportedAgreementsInCSVParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the download exported agreements in csv params
func (o *DownloadExportedAgreementsInCSVParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DownloadExportedAgreementsInCSVParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the download exported agreements in csv params
func (o *DownloadExportedAgreementsInCSVParams) WithNamespace(namespace string) *DownloadExportedAgreementsInCSVParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the download exported agreements in csv params
func (o *DownloadExportedAgreementsInCSVParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithExportID adds the exportID to the download exported agreements in csv params
func (o *DownloadExportedAgreementsInCSVParams) WithExportID(exportID string) *DownloadExportedAgreementsInCSVParams {
	o.SetExportID(exportID)
	return o
}

// SetExportID adds the exportId to the download exported agreements in csv params
func (o *DownloadExportedAgreementsInCSVParams) SetExportID(exportID string) {
	o.ExportID = exportID
}

// WriteToRequest writes these params to a swagger request
func (o *DownloadExportedAgreementsInCSVParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param exportId
	qrExportID := o.ExportID
	qExportID := qrExportID
	if qExportID != "" {
		if err := r.SetQueryParam("exportId", qExportID); err != nil {
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
