// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewSyncInGameItemParams creates a new SyncInGameItemParams object
// with the default values initialized.
func NewSyncInGameItemParams() *SyncInGameItemParams {
	var ()
	return &SyncInGameItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncInGameItemParamsWithTimeout creates a new SyncInGameItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncInGameItemParamsWithTimeout(timeout time.Duration) *SyncInGameItemParams {
	var ()
	return &SyncInGameItemParams{

		timeout: timeout,
	}
}

// NewSyncInGameItemParamsWithContext creates a new SyncInGameItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncInGameItemParamsWithContext(ctx context.Context) *SyncInGameItemParams {
	var ()
	return &SyncInGameItemParams{

		Context: ctx,
	}
}

// NewSyncInGameItemParamsWithHTTPClient creates a new SyncInGameItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncInGameItemParamsWithHTTPClient(client *http.Client) *SyncInGameItemParams {
	var ()
	return &SyncInGameItemParams{
		HTTPClient: client,
	}
}

/*SyncInGameItemParams contains all the parameters to send to the API endpoint
for the sync in game item operation typically these are written to a http.Request
*/
type SyncInGameItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.InGameItemSync
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the sync in game item params
func (o *SyncInGameItemParams) WithTimeout(timeout time.Duration) *SyncInGameItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync in game item params
func (o *SyncInGameItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync in game item params
func (o *SyncInGameItemParams) WithContext(ctx context.Context) *SyncInGameItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync in game item params
func (o *SyncInGameItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync in game item params
func (o *SyncInGameItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync in game item params
func (o *SyncInGameItemParams) WithHTTPClient(client *http.Client) *SyncInGameItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync in game item params
func (o *SyncInGameItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync in game item params
func (o *SyncInGameItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SyncInGameItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the sync in game item params
func (o *SyncInGameItemParams) WithBody(body *platformclientmodels.InGameItemSync) *SyncInGameItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the sync in game item params
func (o *SyncInGameItemParams) SetBody(body *platformclientmodels.InGameItemSync) {
	o.Body = body
}

// WithNamespace adds the namespace to the sync in game item params
func (o *SyncInGameItemParams) WithNamespace(namespace string) *SyncInGameItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync in game item params
func (o *SyncInGameItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the sync in game item params
func (o *SyncInGameItemParams) WithStoreID(storeID string) *SyncInGameItemParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the sync in game item params
func (o *SyncInGameItemParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *SyncInGameItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param storeId
	qrStoreID := o.StoreID
	qStoreID := qrStoreID
	if qStoreID != "" {
		if err := r.SetQueryParam("storeId", qStoreID); err != nil {
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
