// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

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

// NewAdminGetRolesV3Params creates a new AdminGetRolesV3Params object
// with the default values initialized.
func NewAdminGetRolesV3Params() *AdminGetRolesV3Params {
	var ()
	return &AdminGetRolesV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetRolesV3ParamsWithTimeout creates a new AdminGetRolesV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetRolesV3ParamsWithTimeout(timeout time.Duration) *AdminGetRolesV3Params {
	var ()
	return &AdminGetRolesV3Params{

		timeout: timeout,
	}
}

// NewAdminGetRolesV3ParamsWithContext creates a new AdminGetRolesV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetRolesV3ParamsWithContext(ctx context.Context) *AdminGetRolesV3Params {
	var ()
	return &AdminGetRolesV3Params{

		Context: ctx,
	}
}

// NewAdminGetRolesV3ParamsWithHTTPClient creates a new AdminGetRolesV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetRolesV3ParamsWithHTTPClient(client *http.Client) *AdminGetRolesV3Params {
	var ()
	return &AdminGetRolesV3Params{
		HTTPClient: client,
	}
}

/*AdminGetRolesV3Params contains all the parameters to send to the API endpoint
for the admin get roles v3 operation typically these are written to a http.Request
*/
type AdminGetRolesV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*After
	  The cursor that points to query data for the next page

	*/
	After *string
	/*Before
	  The cursor that points to query data for the previous page

	*/
	Before *string
	/*IsWildcard
	    - true if the expected result should only returns records with wildcard = true
	- false if the expected result should only returns records with wildcard = false
	- empty (omitted) if the expected result should returns records with no wildcard filter at all

	*/
	IsWildcard *bool
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get roles v3 params
func (o *AdminGetRolesV3Params) WithTimeout(timeout time.Duration) *AdminGetRolesV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get roles v3 params
func (o *AdminGetRolesV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get roles v3 params
func (o *AdminGetRolesV3Params) WithContext(ctx context.Context) *AdminGetRolesV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get roles v3 params
func (o *AdminGetRolesV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get roles v3 params
func (o *AdminGetRolesV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get roles v3 params
func (o *AdminGetRolesV3Params) WithHTTPClient(client *http.Client) *AdminGetRolesV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get roles v3 params
func (o *AdminGetRolesV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get roles v3 params
func (o *AdminGetRolesV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithAfter adds the after to the admin get roles v3 params
func (o *AdminGetRolesV3Params) WithAfter(after *string) *AdminGetRolesV3Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the admin get roles v3 params
func (o *AdminGetRolesV3Params) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the admin get roles v3 params
func (o *AdminGetRolesV3Params) WithBefore(before *string) *AdminGetRolesV3Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the admin get roles v3 params
func (o *AdminGetRolesV3Params) SetBefore(before *string) {
	o.Before = before
}

// WithIsWildcard adds the isWildcard to the admin get roles v3 params
func (o *AdminGetRolesV3Params) WithIsWildcard(isWildcard *bool) *AdminGetRolesV3Params {
	o.SetIsWildcard(isWildcard)
	return o
}

// SetIsWildcard adds the isWildcard to the admin get roles v3 params
func (o *AdminGetRolesV3Params) SetIsWildcard(isWildcard *bool) {
	o.IsWildcard = isWildcard
}

// WithLimit adds the limit to the admin get roles v3 params
func (o *AdminGetRolesV3Params) WithLimit(limit *int64) *AdminGetRolesV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get roles v3 params
func (o *AdminGetRolesV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetRolesV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.After != nil {

		// query param after
		var qrAfter string
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := qrAfter
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore string
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := qrBefore
		if qBefore != "" {
			if err := r.SetQueryParam("before", qBefore); err != nil {
				return err
			}
		}

	}

	if o.IsWildcard != nil {

		// query param isWildcard
		var qrIsWildcard bool
		if o.IsWildcard != nil {
			qrIsWildcard = *o.IsWildcard
		}
		qIsWildcard := swag.FormatBool(qrIsWildcard)
		if qIsWildcard != "" {
			if err := r.SetQueryParam("isWildcard", qIsWildcard); err != nil {
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

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
