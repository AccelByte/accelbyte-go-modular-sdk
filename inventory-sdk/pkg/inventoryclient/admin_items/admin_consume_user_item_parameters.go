// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_items

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclientmodels"
)

// NewAdminConsumeUserItemParams creates a new AdminConsumeUserItemParams object
// with the default values initialized.
func NewAdminConsumeUserItemParams() *AdminConsumeUserItemParams {
	var ()
	return &AdminConsumeUserItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminConsumeUserItemParamsWithTimeout creates a new AdminConsumeUserItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminConsumeUserItemParamsWithTimeout(timeout time.Duration) *AdminConsumeUserItemParams {
	var ()
	return &AdminConsumeUserItemParams{

		timeout: timeout,
	}
}

// NewAdminConsumeUserItemParamsWithContext creates a new AdminConsumeUserItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminConsumeUserItemParamsWithContext(ctx context.Context) *AdminConsumeUserItemParams {
	var ()
	return &AdminConsumeUserItemParams{

		Context: ctx,
	}
}

// NewAdminConsumeUserItemParamsWithHTTPClient creates a new AdminConsumeUserItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminConsumeUserItemParamsWithHTTPClient(client *http.Client) *AdminConsumeUserItemParams {
	var ()
	return &AdminConsumeUserItemParams{
		HTTPClient: client,
	}
}

/*AdminConsumeUserItemParams contains all the parameters to send to the API endpoint
for the admin consume user item operation typically these are written to a http.Request
*/
type AdminConsumeUserItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsConsumeItemReq
	/*InventoryID
	  InventoryID

	*/
	InventoryID string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  userID

	*/
	UserID string
	/*DateRangeValidation
	  default is false

	*/
	DateRangeValidation *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin consume user item params
func (o *AdminConsumeUserItemParams) WithTimeout(timeout time.Duration) *AdminConsumeUserItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin consume user item params
func (o *AdminConsumeUserItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin consume user item params
func (o *AdminConsumeUserItemParams) WithContext(ctx context.Context) *AdminConsumeUserItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin consume user item params
func (o *AdminConsumeUserItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin consume user item params
func (o *AdminConsumeUserItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin consume user item params
func (o *AdminConsumeUserItemParams) WithHTTPClient(client *http.Client) *AdminConsumeUserItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin consume user item params
func (o *AdminConsumeUserItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin consume user item params
func (o *AdminConsumeUserItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminConsumeUserItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin consume user item params
func (o *AdminConsumeUserItemParams) WithBody(body *inventoryclientmodels.ApimodelsConsumeItemReq) *AdminConsumeUserItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin consume user item params
func (o *AdminConsumeUserItemParams) SetBody(body *inventoryclientmodels.ApimodelsConsumeItemReq) {
	o.Body = body
}

// WithInventoryID adds the inventoryID to the admin consume user item params
func (o *AdminConsumeUserItemParams) WithInventoryID(inventoryID string) *AdminConsumeUserItemParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the admin consume user item params
func (o *AdminConsumeUserItemParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the admin consume user item params
func (o *AdminConsumeUserItemParams) WithNamespace(namespace string) *AdminConsumeUserItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin consume user item params
func (o *AdminConsumeUserItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin consume user item params
func (o *AdminConsumeUserItemParams) WithUserID(userID string) *AdminConsumeUserItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin consume user item params
func (o *AdminConsumeUserItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithDateRangeValidation adds the dateRangeValidation to the admin consume user item params
func (o *AdminConsumeUserItemParams) WithDateRangeValidation(dateRangeValidation *string) *AdminConsumeUserItemParams {
	o.SetDateRangeValidation(dateRangeValidation)
	return o
}

// SetDateRangeValidation adds the dateRangeValidation to the admin consume user item params
func (o *AdminConsumeUserItemParams) SetDateRangeValidation(dateRangeValidation *string) {
	o.DateRangeValidation = dateRangeValidation
}

// WriteToRequest writes these params to a swagger request
func (o *AdminConsumeUserItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param inventoryId
	if err := r.SetPathParam("inventoryId", o.InventoryID); err != nil {
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

	if o.DateRangeValidation != nil {

		// query param dateRangeValidation
		var qrDateRangeValidation string
		if o.DateRangeValidation != nil {
			qrDateRangeValidation = *o.DateRangeValidation
		}
		qDateRangeValidation := qrDateRangeValidation
		if qDateRangeValidation != "" {
			if err := r.SetQueryParam("dateRangeValidation", qDateRangeValidation); err != nil {
				return err
			}
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
