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
	"github.com/go-openapi/swag"
)

// NewGetGroupListAdminV1Params creates a new GetGroupListAdminV1Params object
// with the default values initialized.
func NewGetGroupListAdminV1Params() *GetGroupListAdminV1Params {
	var ()
	return &GetGroupListAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGroupListAdminV1ParamsWithTimeout creates a new GetGroupListAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGroupListAdminV1ParamsWithTimeout(timeout time.Duration) *GetGroupListAdminV1Params {
	var ()
	return &GetGroupListAdminV1Params{

		timeout: timeout,
	}
}

// NewGetGroupListAdminV1ParamsWithContext creates a new GetGroupListAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetGroupListAdminV1ParamsWithContext(ctx context.Context) *GetGroupListAdminV1Params {
	var ()
	return &GetGroupListAdminV1Params{

		Context: ctx,
	}
}

// NewGetGroupListAdminV1ParamsWithHTTPClient creates a new GetGroupListAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGroupListAdminV1ParamsWithHTTPClient(client *http.Client) *GetGroupListAdminV1Params {
	var ()
	return &GetGroupListAdminV1Params{
		HTTPClient: client,
	}
}

/*GetGroupListAdminV1Params contains all the parameters to send to the API endpoint
for the get group list admin v1 operation typically these are written to a http.Request
*/
type GetGroupListAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*ConfigurationCode
	  Query Group Configuration Code

	*/
	ConfigurationCode *string
	/*GroupName
	  Query Group Name

	*/
	GroupName *string
	/*GroupRegion
	  Query Group Region

	*/
	GroupRegion *string
	/*Limit
	  size of displayed data

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) WithTimeout(timeout time.Duration) *GetGroupListAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) WithContext(ctx context.Context) *GetGroupListAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) WithHTTPClient(client *http.Client) *GetGroupListAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) WithNamespace(namespace string) *GetGroupListAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithConfigurationCode adds the configurationCode to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) WithConfigurationCode(configurationCode *string) *GetGroupListAdminV1Params {
	o.SetConfigurationCode(configurationCode)
	return o
}

// SetConfigurationCode adds the configurationCode to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) SetConfigurationCode(configurationCode *string) {
	o.ConfigurationCode = configurationCode
}

// WithGroupName adds the groupName to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) WithGroupName(groupName *string) *GetGroupListAdminV1Params {
	o.SetGroupName(groupName)
	return o
}

// SetGroupName adds the groupName to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) SetGroupName(groupName *string) {
	o.GroupName = groupName
}

// WithGroupRegion adds the groupRegion to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) WithGroupRegion(groupRegion *string) *GetGroupListAdminV1Params {
	o.SetGroupRegion(groupRegion)
	return o
}

// SetGroupRegion adds the groupRegion to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) SetGroupRegion(groupRegion *string) {
	o.GroupRegion = groupRegion
}

// WithLimit adds the limit to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) WithLimit(limit *int64) *GetGroupListAdminV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) WithOffset(offset *int64) *GetGroupListAdminV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get group list admin v1 params
func (o *GetGroupListAdminV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetGroupListAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ConfigurationCode != nil {

		// query param configurationCode
		var qrConfigurationCode string
		if o.ConfigurationCode != nil {
			qrConfigurationCode = *o.ConfigurationCode
		}
		qConfigurationCode := qrConfigurationCode
		if qConfigurationCode != "" {
			if err := r.SetQueryParam("configurationCode", qConfigurationCode); err != nil {
				return err
			}
		}

	}

	if o.GroupName != nil {

		// query param groupName
		var qrGroupName string
		if o.GroupName != nil {
			qrGroupName = *o.GroupName
		}
		qGroupName := qrGroupName
		if qGroupName != "" {
			if err := r.SetQueryParam("groupName", qGroupName); err != nil {
				return err
			}
		}

	}

	if o.GroupRegion != nil {

		// query param groupRegion
		var qrGroupRegion string
		if o.GroupRegion != nil {
			qrGroupRegion = *o.GroupRegion
		}
		qGroupRegion := qrGroupRegion
		if qGroupRegion != "" {
			if err := r.SetQueryParam("groupRegion", qGroupRegion); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
