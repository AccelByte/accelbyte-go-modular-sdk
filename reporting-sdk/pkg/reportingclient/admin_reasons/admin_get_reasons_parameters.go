// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_reasons

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

// NewAdminGetReasonsParams creates a new AdminGetReasonsParams object
// with the default values initialized.
func NewAdminGetReasonsParams() *AdminGetReasonsParams {
	var ()
	return &AdminGetReasonsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetReasonsParamsWithTimeout creates a new AdminGetReasonsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetReasonsParamsWithTimeout(timeout time.Duration) *AdminGetReasonsParams {
	var ()
	return &AdminGetReasonsParams{

		timeout: timeout,
	}
}

// NewAdminGetReasonsParamsWithContext creates a new AdminGetReasonsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetReasonsParamsWithContext(ctx context.Context) *AdminGetReasonsParams {
	var ()
	return &AdminGetReasonsParams{

		Context: ctx,
	}
}

// NewAdminGetReasonsParamsWithHTTPClient creates a new AdminGetReasonsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetReasonsParamsWithHTTPClient(client *http.Client) *AdminGetReasonsParams {
	var ()
	return &AdminGetReasonsParams{
		HTTPClient: client,
	}
}

/*AdminGetReasonsParams contains all the parameters to send to the API endpoint
for the admin get reasons operation typically these are written to a http.Request
*/
type AdminGetReasonsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Group
	  query reasons under specified reason group

	*/
	Group *string
	/*Limit
	  number of data requested (default 25)

	*/
	Limit *int64
	/*Offset
	  number of data offset (default 0)

	*/
	Offset *int64
	/*Title
	  query reason(s) by title

	*/
	Title *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get reasons params
func (o *AdminGetReasonsParams) WithTimeout(timeout time.Duration) *AdminGetReasonsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get reasons params
func (o *AdminGetReasonsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get reasons params
func (o *AdminGetReasonsParams) WithContext(ctx context.Context) *AdminGetReasonsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get reasons params
func (o *AdminGetReasonsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get reasons params
func (o *AdminGetReasonsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get reasons params
func (o *AdminGetReasonsParams) WithHTTPClient(client *http.Client) *AdminGetReasonsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get reasons params
func (o *AdminGetReasonsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get reasons params
func (o *AdminGetReasonsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get reasons params
func (o *AdminGetReasonsParams) WithNamespace(namespace string) *AdminGetReasonsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get reasons params
func (o *AdminGetReasonsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithGroup adds the group to the admin get reasons params
func (o *AdminGetReasonsParams) WithGroup(group *string) *AdminGetReasonsParams {
	o.SetGroup(group)
	return o
}

// SetGroup adds the group to the admin get reasons params
func (o *AdminGetReasonsParams) SetGroup(group *string) {
	o.Group = group
}

// WithLimit adds the limit to the admin get reasons params
func (o *AdminGetReasonsParams) WithLimit(limit *int64) *AdminGetReasonsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get reasons params
func (o *AdminGetReasonsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get reasons params
func (o *AdminGetReasonsParams) WithOffset(offset *int64) *AdminGetReasonsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get reasons params
func (o *AdminGetReasonsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithTitle adds the title to the admin get reasons params
func (o *AdminGetReasonsParams) WithTitle(title *string) *AdminGetReasonsParams {
	o.SetTitle(title)
	return o
}

// SetTitle adds the title to the admin get reasons params
func (o *AdminGetReasonsParams) SetTitle(title *string) {
	o.Title = title
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetReasonsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Group != nil {

		// query param group
		var qrGroup string
		if o.Group != nil {
			qrGroup = *o.Group
		}
		qGroup := qrGroup
		if qGroup != "" {
			if err := r.SetQueryParam("group", qGroup); err != nil {
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

	if o.Title != nil {

		// query param title
		var qrTitle string
		if o.Title != nil {
			qrTitle = *o.Title
		}
		qTitle := qrTitle
		if qTitle != "" {
			if err := r.SetQueryParam("title", qTitle); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
