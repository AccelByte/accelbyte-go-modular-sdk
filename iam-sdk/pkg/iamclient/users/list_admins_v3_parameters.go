// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

// NewListAdminsV3Params creates a new ListAdminsV3Params object
// with the default values initialized.
func NewListAdminsV3Params() *ListAdminsV3Params {
	var ()
	return &ListAdminsV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewListAdminsV3ParamsWithTimeout creates a new ListAdminsV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewListAdminsV3ParamsWithTimeout(timeout time.Duration) *ListAdminsV3Params {
	var ()
	return &ListAdminsV3Params{

		timeout: timeout,
	}
}

// NewListAdminsV3ParamsWithContext creates a new ListAdminsV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewListAdminsV3ParamsWithContext(ctx context.Context) *ListAdminsV3Params {
	var ()
	return &ListAdminsV3Params{

		Context: ctx,
	}
}

// NewListAdminsV3ParamsWithHTTPClient creates a new ListAdminsV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListAdminsV3ParamsWithHTTPClient(client *http.Client) *ListAdminsV3Params {
	var ()
	return &ListAdminsV3Params{
		HTTPClient: client,
	}
}

/*ListAdminsV3Params contains all the parameters to send to the API endpoint
for the list admins v3 operation typically these are written to a http.Request
*/
type ListAdminsV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*After
	  The cursor that points to query data for the next page. Composite values consist of created_at and id, the value is base64 encoded

	*/
	After *string
	/*Before
	  The cursor that points to query data for the previous page. Composite values consist of created_at and id, the value is base64 encoded

	*/
	Before *string
	/*EndDate
	  End Date, format YYYY-MM-DD

	*/
	EndDate *string
	/*Limit
	  The maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Query
	  Query, can be either display name or email address

	*/
	Query *string
	/*RoleID
	  Role ID, should follow UUID version 4 without hyphen

	*/
	RoleID *string
	/*StartDate
	  Start Date, format YYYY-MM-DD

	*/
	StartDate *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list admins v3 params
func (o *ListAdminsV3Params) WithTimeout(timeout time.Duration) *ListAdminsV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list admins v3 params
func (o *ListAdminsV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list admins v3 params
func (o *ListAdminsV3Params) WithContext(ctx context.Context) *ListAdminsV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list admins v3 params
func (o *ListAdminsV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list admins v3 params
func (o *ListAdminsV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list admins v3 params
func (o *ListAdminsV3Params) WithHTTPClient(client *http.Client) *ListAdminsV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list admins v3 params
func (o *ListAdminsV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list admins v3 params
func (o *ListAdminsV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListAdminsV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list admins v3 params
func (o *ListAdminsV3Params) WithNamespace(namespace string) *ListAdminsV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list admins v3 params
func (o *ListAdminsV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAfter adds the after to the list admins v3 params
func (o *ListAdminsV3Params) WithAfter(after *string) *ListAdminsV3Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the list admins v3 params
func (o *ListAdminsV3Params) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the list admins v3 params
func (o *ListAdminsV3Params) WithBefore(before *string) *ListAdminsV3Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the list admins v3 params
func (o *ListAdminsV3Params) SetBefore(before *string) {
	o.Before = before
}

// WithEndDate adds the endDate to the list admins v3 params
func (o *ListAdminsV3Params) WithEndDate(endDate *string) *ListAdminsV3Params {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the list admins v3 params
func (o *ListAdminsV3Params) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithLimit adds the limit to the list admins v3 params
func (o *ListAdminsV3Params) WithLimit(limit *int64) *ListAdminsV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list admins v3 params
func (o *ListAdminsV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithQuery adds the query to the list admins v3 params
func (o *ListAdminsV3Params) WithQuery(query *string) *ListAdminsV3Params {
	o.SetQuery(query)
	return o
}

// SetQuery adds the query to the list admins v3 params
func (o *ListAdminsV3Params) SetQuery(query *string) {
	o.Query = query
}

// WithRoleID adds the roleID to the list admins v3 params
func (o *ListAdminsV3Params) WithRoleID(roleID *string) *ListAdminsV3Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the list admins v3 params
func (o *ListAdminsV3Params) SetRoleID(roleID *string) {
	o.RoleID = roleID
}

// WithStartDate adds the startDate to the list admins v3 params
func (o *ListAdminsV3Params) WithStartDate(startDate *string) *ListAdminsV3Params {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the list admins v3 params
func (o *ListAdminsV3Params) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *ListAdminsV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

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

	if o.EndDate != nil {

		// query param endDate
		var qrEndDate string
		if o.EndDate != nil {
			qrEndDate = *o.EndDate
		}
		qEndDate := qrEndDate
		if qEndDate != "" {
			if err := r.SetQueryParam("endDate", qEndDate); err != nil {
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

	if o.Query != nil {

		// query param query
		var qrQuery string
		if o.Query != nil {
			qrQuery = *o.Query
		}
		qQuery := qrQuery
		if qQuery != "" {
			if err := r.SetQueryParam("query", qQuery); err != nil {
				return err
			}
		}

	}

	if o.RoleID != nil {

		// query param roleId
		var qrRoleID string
		if o.RoleID != nil {
			qrRoleID = *o.RoleID
		}
		qRoleID := qrRoleID
		if qRoleID != "" {
			if err := r.SetQueryParam("roleId", qRoleID); err != nil {
				return err
			}
		}

	}

	if o.StartDate != nil {

		// query param startDate
		var qrStartDate string
		if o.StartDate != nil {
			qrStartDate = *o.StartDate
		}
		qStartDate := qrStartDate
		if qStartDate != "" {
			if err := r.SetQueryParam("startDate", qStartDate); err != nil {
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
