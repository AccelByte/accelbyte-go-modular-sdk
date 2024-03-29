// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_moderation_rule

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

// NewGetModerationRulesParams creates a new GetModerationRulesParams object
// with the default values initialized.
func NewGetModerationRulesParams() *GetModerationRulesParams {
	var ()
	return &GetModerationRulesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetModerationRulesParamsWithTimeout creates a new GetModerationRulesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetModerationRulesParamsWithTimeout(timeout time.Duration) *GetModerationRulesParams {
	var ()
	return &GetModerationRulesParams{

		timeout: timeout,
	}
}

// NewGetModerationRulesParamsWithContext creates a new GetModerationRulesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetModerationRulesParamsWithContext(ctx context.Context) *GetModerationRulesParams {
	var ()
	return &GetModerationRulesParams{

		Context: ctx,
	}
}

// NewGetModerationRulesParamsWithHTTPClient creates a new GetModerationRulesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetModerationRulesParamsWithHTTPClient(client *http.Client) *GetModerationRulesParams {
	var ()
	return &GetModerationRulesParams{
		HTTPClient: client,
	}
}

/*GetModerationRulesParams contains all the parameters to send to the API endpoint
for the get moderation rules operation typically these are written to a http.Request
*/
type GetModerationRulesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Category
	  filter rules by category

	*/
	Category *string
	/*ExtensionCategory
	  filter rules by extension category

	*/
	ExtensionCategory *string
	/*Limit
	  number of data requested (default 25)

	*/
	Limit *int64
	/*Offset
	  number of data offset (default 0)

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get moderation rules params
func (o *GetModerationRulesParams) WithTimeout(timeout time.Duration) *GetModerationRulesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get moderation rules params
func (o *GetModerationRulesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get moderation rules params
func (o *GetModerationRulesParams) WithContext(ctx context.Context) *GetModerationRulesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get moderation rules params
func (o *GetModerationRulesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get moderation rules params
func (o *GetModerationRulesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get moderation rules params
func (o *GetModerationRulesParams) WithHTTPClient(client *http.Client) *GetModerationRulesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get moderation rules params
func (o *GetModerationRulesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get moderation rules params
func (o *GetModerationRulesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetModerationRulesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get moderation rules params
func (o *GetModerationRulesParams) WithNamespace(namespace string) *GetModerationRulesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get moderation rules params
func (o *GetModerationRulesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCategory adds the category to the get moderation rules params
func (o *GetModerationRulesParams) WithCategory(category *string) *GetModerationRulesParams {
	o.SetCategory(category)
	return o
}

// SetCategory adds the category to the get moderation rules params
func (o *GetModerationRulesParams) SetCategory(category *string) {
	o.Category = category
}

// WithExtensionCategory adds the extensionCategory to the get moderation rules params
func (o *GetModerationRulesParams) WithExtensionCategory(extensionCategory *string) *GetModerationRulesParams {
	o.SetExtensionCategory(extensionCategory)
	return o
}

// SetExtensionCategory adds the extensionCategory to the get moderation rules params
func (o *GetModerationRulesParams) SetExtensionCategory(extensionCategory *string) {
	o.ExtensionCategory = extensionCategory
}

// WithLimit adds the limit to the get moderation rules params
func (o *GetModerationRulesParams) WithLimit(limit *int64) *GetModerationRulesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get moderation rules params
func (o *GetModerationRulesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get moderation rules params
func (o *GetModerationRulesParams) WithOffset(offset *int64) *GetModerationRulesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get moderation rules params
func (o *GetModerationRulesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetModerationRulesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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

	if o.ExtensionCategory != nil {

		// query param extensionCategory
		var qrExtensionCategory string
		if o.ExtensionCategory != nil {
			qrExtensionCategory = *o.ExtensionCategory
		}
		qExtensionCategory := qrExtensionCategory
		if qExtensionCategory != "" {
			if err := r.SetQueryParam("extensionCategory", qExtensionCategory); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
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
