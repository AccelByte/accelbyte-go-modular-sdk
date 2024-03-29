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
)

// NewPublicPlatformLinkV3Params creates a new PublicPlatformLinkV3Params object
// with the default values initialized.
func NewPublicPlatformLinkV3Params() *PublicPlatformLinkV3Params {
	var ()
	return &PublicPlatformLinkV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicPlatformLinkV3ParamsWithTimeout creates a new PublicPlatformLinkV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicPlatformLinkV3ParamsWithTimeout(timeout time.Duration) *PublicPlatformLinkV3Params {
	var ()
	return &PublicPlatformLinkV3Params{

		timeout: timeout,
	}
}

// NewPublicPlatformLinkV3ParamsWithContext creates a new PublicPlatformLinkV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicPlatformLinkV3ParamsWithContext(ctx context.Context) *PublicPlatformLinkV3Params {
	var ()
	return &PublicPlatformLinkV3Params{

		Context: ctx,
	}
}

// NewPublicPlatformLinkV3ParamsWithHTTPClient creates a new PublicPlatformLinkV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicPlatformLinkV3ParamsWithHTTPClient(client *http.Client) *PublicPlatformLinkV3Params {
	var ()
	return &PublicPlatformLinkV3Params{
		HTTPClient: client,
	}
}

/*PublicPlatformLinkV3Params contains all the parameters to send to the API endpoint
for the public platform link v3 operation typically these are written to a http.Request
*/
type PublicPlatformLinkV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*RedirectURI
	  [Special case for ps4web and xblweb platform] The same redirectUri as when the client request authorization code. The redirectUri when client request auth code need to be exactly same with redirectUri when IAM requesting exchange token to the Platform (ps4web, xblweb)

	*/
	RedirectURI *string
	/*Ticket
	  Ticket from platform, not contain whitespace

	*/
	Ticket string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) WithTimeout(timeout time.Duration) *PublicPlatformLinkV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) WithContext(ctx context.Context) *PublicPlatformLinkV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) WithHTTPClient(client *http.Client) *PublicPlatformLinkV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicPlatformLinkV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithRedirectURI adds the redirectURI to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) WithRedirectURI(redirectURI *string) *PublicPlatformLinkV3Params {
	o.SetRedirectURI(redirectURI)
	return o
}

// SetRedirectURI adds the redirectUri to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) SetRedirectURI(redirectURI *string) {
	o.RedirectURI = redirectURI
}

// WithTicket adds the ticket to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) WithTicket(ticket string) *PublicPlatformLinkV3Params {
	o.SetTicket(ticket)
	return o
}

// SetTicket adds the ticket to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) SetTicket(ticket string) {
	o.Ticket = ticket
}

// WithNamespace adds the namespace to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) WithNamespace(namespace string) *PublicPlatformLinkV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) WithPlatformID(platformID string) *PublicPlatformLinkV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public platform link v3 params
func (o *PublicPlatformLinkV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicPlatformLinkV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.RedirectURI != nil {

		// form param redirectUri
		var frRedirectURI string
		if o.RedirectURI != nil {
			frRedirectURI = *o.RedirectURI
		}
		fRedirectURI := frRedirectURI
		if fRedirectURI != "" {
			if err := r.SetFormParam("redirectUri", fRedirectURI); err != nil {
				return err
			}
		}

	}

	// form param ticket
	frTicket := o.Ticket
	fTicket := frTicket
	if fTicket != "" {
		if err := r.SetFormParam("ticket", fTicket); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
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
