// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// NewUpdatePutSingleGroupPublicV2Params creates a new UpdatePutSingleGroupPublicV2Params object
// with the default values initialized.
func NewUpdatePutSingleGroupPublicV2Params() *UpdatePutSingleGroupPublicV2Params {
	var ()
	return &UpdatePutSingleGroupPublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePutSingleGroupPublicV2ParamsWithTimeout creates a new UpdatePutSingleGroupPublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePutSingleGroupPublicV2ParamsWithTimeout(timeout time.Duration) *UpdatePutSingleGroupPublicV2Params {
	var ()
	return &UpdatePutSingleGroupPublicV2Params{

		timeout: timeout,
	}
}

// NewUpdatePutSingleGroupPublicV2ParamsWithContext creates a new UpdatePutSingleGroupPublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePutSingleGroupPublicV2ParamsWithContext(ctx context.Context) *UpdatePutSingleGroupPublicV2Params {
	var ()
	return &UpdatePutSingleGroupPublicV2Params{

		Context: ctx,
	}
}

// NewUpdatePutSingleGroupPublicV2ParamsWithHTTPClient creates a new UpdatePutSingleGroupPublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePutSingleGroupPublicV2ParamsWithHTTPClient(client *http.Client) *UpdatePutSingleGroupPublicV2Params {
	var ()
	return &UpdatePutSingleGroupPublicV2Params{
		HTTPClient: client,
	}
}

/*UpdatePutSingleGroupPublicV2Params contains all the parameters to send to the API endpoint
for the update put single group public v2 operation typically these are written to a http.Request
*/
type UpdatePutSingleGroupPublicV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *groupclientmodels.ModelsUpdateGroupRequestV1
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) WithTimeout(timeout time.Duration) *UpdatePutSingleGroupPublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) WithContext(ctx context.Context) *UpdatePutSingleGroupPublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) WithHTTPClient(client *http.Client) *UpdatePutSingleGroupPublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdatePutSingleGroupPublicV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) WithBody(body *groupclientmodels.ModelsUpdateGroupRequestV1) *UpdatePutSingleGroupPublicV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) SetBody(body *groupclientmodels.ModelsUpdateGroupRequestV1) {
	o.Body = body
}

// WithGroupID adds the groupID to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) WithGroupID(groupID string) *UpdatePutSingleGroupPublicV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) WithNamespace(namespace string) *UpdatePutSingleGroupPublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update put single group public v2 params
func (o *UpdatePutSingleGroupPublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePutSingleGroupPublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
