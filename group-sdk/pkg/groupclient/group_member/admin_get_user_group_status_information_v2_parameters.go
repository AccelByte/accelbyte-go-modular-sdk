// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group_member

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

// NewAdminGetUserGroupStatusInformationV2Params creates a new AdminGetUserGroupStatusInformationV2Params object
// with the default values initialized.
func NewAdminGetUserGroupStatusInformationV2Params() *AdminGetUserGroupStatusInformationV2Params {
	var ()
	return &AdminGetUserGroupStatusInformationV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserGroupStatusInformationV2ParamsWithTimeout creates a new AdminGetUserGroupStatusInformationV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserGroupStatusInformationV2ParamsWithTimeout(timeout time.Duration) *AdminGetUserGroupStatusInformationV2Params {
	var ()
	return &AdminGetUserGroupStatusInformationV2Params{

		timeout: timeout,
	}
}

// NewAdminGetUserGroupStatusInformationV2ParamsWithContext creates a new AdminGetUserGroupStatusInformationV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserGroupStatusInformationV2ParamsWithContext(ctx context.Context) *AdminGetUserGroupStatusInformationV2Params {
	var ()
	return &AdminGetUserGroupStatusInformationV2Params{

		Context: ctx,
	}
}

// NewAdminGetUserGroupStatusInformationV2ParamsWithHTTPClient creates a new AdminGetUserGroupStatusInformationV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserGroupStatusInformationV2ParamsWithHTTPClient(client *http.Client) *AdminGetUserGroupStatusInformationV2Params {
	var ()
	return &AdminGetUserGroupStatusInformationV2Params{
		HTTPClient: client,
	}
}

/*AdminGetUserGroupStatusInformationV2Params contains all the parameters to send to the API endpoint
for the admin get user group status information v2 operation typically these are written to a http.Request
*/
type AdminGetUserGroupStatusInformationV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  Group ID

	*/
	GroupID string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) WithTimeout(timeout time.Duration) *AdminGetUserGroupStatusInformationV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) WithContext(ctx context.Context) *AdminGetUserGroupStatusInformationV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) WithHTTPClient(client *http.Client) *AdminGetUserGroupStatusInformationV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserGroupStatusInformationV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithGroupID adds the groupID to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) WithGroupID(groupID string) *AdminGetUserGroupStatusInformationV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) WithNamespace(namespace string) *AdminGetUserGroupStatusInformationV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) WithUserID(userID string) *AdminGetUserGroupStatusInformationV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user group status information v2 params
func (o *AdminGetUserGroupStatusInformationV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserGroupStatusInformationV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
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
