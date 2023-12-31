// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clients

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

// NewAdminGetClientsByNamespaceV3Params creates a new AdminGetClientsByNamespaceV3Params object
// with the default values initialized.
func NewAdminGetClientsByNamespaceV3Params() *AdminGetClientsByNamespaceV3Params {
	var ()
	return &AdminGetClientsByNamespaceV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetClientsByNamespaceV3ParamsWithTimeout creates a new AdminGetClientsByNamespaceV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetClientsByNamespaceV3ParamsWithTimeout(timeout time.Duration) *AdminGetClientsByNamespaceV3Params {
	var ()
	return &AdminGetClientsByNamespaceV3Params{

		timeout: timeout,
	}
}

// NewAdminGetClientsByNamespaceV3ParamsWithContext creates a new AdminGetClientsByNamespaceV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetClientsByNamespaceV3ParamsWithContext(ctx context.Context) *AdminGetClientsByNamespaceV3Params {
	var ()
	return &AdminGetClientsByNamespaceV3Params{

		Context: ctx,
	}
}

// NewAdminGetClientsByNamespaceV3ParamsWithHTTPClient creates a new AdminGetClientsByNamespaceV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetClientsByNamespaceV3ParamsWithHTTPClient(client *http.Client) *AdminGetClientsByNamespaceV3Params {
	var ()
	return &AdminGetClientsByNamespaceV3Params{
		HTTPClient: client,
	}
}

/*AdminGetClientsByNamespaceV3Params contains all the parameters to send to the API endpoint
for the admin get clients by namespace v3 operation typically these are written to a http.Request
*/
type AdminGetClientsByNamespaceV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*ClientID
	  Client id, should follow UUID version 4 without hyphen

	*/
	ClientID *string
	/*ClientName
	  Client name, support fuzzy query

	*/
	ClientName *string
	/*ClientType
	  Client type

	*/
	ClientType *string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Offset
	  the count to skip

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) WithTimeout(timeout time.Duration) *AdminGetClientsByNamespaceV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) WithContext(ctx context.Context) *AdminGetClientsByNamespaceV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) WithHTTPClient(client *http.Client) *AdminGetClientsByNamespaceV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) WithNamespace(namespace string) *AdminGetClientsByNamespaceV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithClientID adds the clientID to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) WithClientID(clientID *string) *AdminGetClientsByNamespaceV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) SetClientID(clientID *string) {
	o.ClientID = clientID
}

// WithClientName adds the clientName to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) WithClientName(clientName *string) *AdminGetClientsByNamespaceV3Params {
	o.SetClientName(clientName)
	return o
}

// SetClientName adds the clientName to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) SetClientName(clientName *string) {
	o.ClientName = clientName
}

// WithClientType adds the clientType to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) WithClientType(clientType *string) *AdminGetClientsByNamespaceV3Params {
	o.SetClientType(clientType)
	return o
}

// SetClientType adds the clientType to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) SetClientType(clientType *string) {
	o.ClientType = clientType
}

// WithLimit adds the limit to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) WithLimit(limit *int64) *AdminGetClientsByNamespaceV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) WithOffset(offset *int64) *AdminGetClientsByNamespaceV3Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get clients by namespace v3 params
func (o *AdminGetClientsByNamespaceV3Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetClientsByNamespaceV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ClientID != nil {

		// query param clientId
		var qrClientID string
		if o.ClientID != nil {
			qrClientID = *o.ClientID
		}
		qClientID := qrClientID
		if qClientID != "" {
			if err := r.SetQueryParam("clientId", qClientID); err != nil {
				return err
			}
		}

	}

	if o.ClientName != nil {

		// query param clientName
		var qrClientName string
		if o.ClientName != nil {
			qrClientName = *o.ClientName
		}
		qClientName := qrClientName
		if qClientName != "" {
			if err := r.SetQueryParam("clientName", qClientName); err != nil {
				return err
			}
		}

	}

	if o.ClientType != nil {

		// query param clientType
		var qrClientType string
		if o.ClientType != nil {
			qrClientType = *o.ClientType
		}
		qClientType := qrClientType
		if qClientType != "" {
			if err := r.SetQueryParam("clientType", qClientType); err != nil {
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
