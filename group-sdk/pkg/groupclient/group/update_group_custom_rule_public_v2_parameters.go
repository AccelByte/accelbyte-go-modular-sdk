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

	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclientmodels"
)

// NewUpdateGroupCustomRulePublicV2Params creates a new UpdateGroupCustomRulePublicV2Params object
// with the default values initialized.
func NewUpdateGroupCustomRulePublicV2Params() *UpdateGroupCustomRulePublicV2Params {
	var ()
	return &UpdateGroupCustomRulePublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateGroupCustomRulePublicV2ParamsWithTimeout creates a new UpdateGroupCustomRulePublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateGroupCustomRulePublicV2ParamsWithTimeout(timeout time.Duration) *UpdateGroupCustomRulePublicV2Params {
	var ()
	return &UpdateGroupCustomRulePublicV2Params{

		timeout: timeout,
	}
}

// NewUpdateGroupCustomRulePublicV2ParamsWithContext creates a new UpdateGroupCustomRulePublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateGroupCustomRulePublicV2ParamsWithContext(ctx context.Context) *UpdateGroupCustomRulePublicV2Params {
	var ()
	return &UpdateGroupCustomRulePublicV2Params{

		Context: ctx,
	}
}

// NewUpdateGroupCustomRulePublicV2ParamsWithHTTPClient creates a new UpdateGroupCustomRulePublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateGroupCustomRulePublicV2ParamsWithHTTPClient(client *http.Client) *UpdateGroupCustomRulePublicV2Params {
	var ()
	return &UpdateGroupCustomRulePublicV2Params{
		HTTPClient: client,
	}
}

/*UpdateGroupCustomRulePublicV2Params contains all the parameters to send to the API endpoint
for the update group custom rule public v2 operation typically these are written to a http.Request
*/
type UpdateGroupCustomRulePublicV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *groupclientmodels.ModelsUpdateGroupCustomRuleRequestV1
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

// WithTimeout adds the timeout to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) WithTimeout(timeout time.Duration) *UpdateGroupCustomRulePublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) WithContext(ctx context.Context) *UpdateGroupCustomRulePublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) WithHTTPClient(client *http.Client) *UpdateGroupCustomRulePublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) WithBody(body *groupclientmodels.ModelsUpdateGroupCustomRuleRequestV1) *UpdateGroupCustomRulePublicV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) SetBody(body *groupclientmodels.ModelsUpdateGroupCustomRuleRequestV1) {
	o.Body = body
}

// WithGroupID adds the groupID to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) WithGroupID(groupID string) *UpdateGroupCustomRulePublicV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) WithNamespace(namespace string) *UpdateGroupCustomRulePublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update group custom rule public v2 params
func (o *UpdateGroupCustomRulePublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateGroupCustomRulePublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
