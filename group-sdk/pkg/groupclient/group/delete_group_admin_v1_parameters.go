// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group

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

// NewDeleteGroupAdminV1Params creates a new DeleteGroupAdminV1Params object
// with the default values initialized.
func NewDeleteGroupAdminV1Params() *DeleteGroupAdminV1Params {
	var ()
	return &DeleteGroupAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteGroupAdminV1ParamsWithTimeout creates a new DeleteGroupAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteGroupAdminV1ParamsWithTimeout(timeout time.Duration) *DeleteGroupAdminV1Params {
	var ()
	return &DeleteGroupAdminV1Params{

		timeout: timeout,
	}
}

// NewDeleteGroupAdminV1ParamsWithContext creates a new DeleteGroupAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteGroupAdminV1ParamsWithContext(ctx context.Context) *DeleteGroupAdminV1Params {
	var ()
	return &DeleteGroupAdminV1Params{

		Context: ctx,
	}
}

// NewDeleteGroupAdminV1ParamsWithHTTPClient creates a new DeleteGroupAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteGroupAdminV1ParamsWithHTTPClient(client *http.Client) *DeleteGroupAdminV1Params {
	var ()
	return &DeleteGroupAdminV1Params{
		HTTPClient: client,
	}
}

/*DeleteGroupAdminV1Params contains all the parameters to send to the API endpoint
for the delete group admin v1 operation typically these are written to a http.Request
*/
type DeleteGroupAdminV1Params struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete group admin v1 params
func (o *DeleteGroupAdminV1Params) WithTimeout(timeout time.Duration) *DeleteGroupAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete group admin v1 params
func (o *DeleteGroupAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete group admin v1 params
func (o *DeleteGroupAdminV1Params) WithContext(ctx context.Context) *DeleteGroupAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete group admin v1 params
func (o *DeleteGroupAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete group admin v1 params
func (o *DeleteGroupAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete group admin v1 params
func (o *DeleteGroupAdminV1Params) WithHTTPClient(client *http.Client) *DeleteGroupAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete group admin v1 params
func (o *DeleteGroupAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete group admin v1 params
func (o *DeleteGroupAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the delete group admin v1 params
func (o *DeleteGroupAdminV1Params) WithGroupID(groupID string) *DeleteGroupAdminV1Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the delete group admin v1 params
func (o *DeleteGroupAdminV1Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the delete group admin v1 params
func (o *DeleteGroupAdminV1Params) WithNamespace(namespace string) *DeleteGroupAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete group admin v1 params
func (o *DeleteGroupAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteGroupAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
