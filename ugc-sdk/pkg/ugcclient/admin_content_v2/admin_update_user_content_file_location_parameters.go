// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_content_v2

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewAdminUpdateUserContentFileLocationParams creates a new AdminUpdateUserContentFileLocationParams object
// with the default values initialized.
func NewAdminUpdateUserContentFileLocationParams() *AdminUpdateUserContentFileLocationParams {
	var ()
	return &AdminUpdateUserContentFileLocationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateUserContentFileLocationParamsWithTimeout creates a new AdminUpdateUserContentFileLocationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateUserContentFileLocationParamsWithTimeout(timeout time.Duration) *AdminUpdateUserContentFileLocationParams {
	var ()
	return &AdminUpdateUserContentFileLocationParams{

		timeout: timeout,
	}
}

// NewAdminUpdateUserContentFileLocationParamsWithContext creates a new AdminUpdateUserContentFileLocationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateUserContentFileLocationParamsWithContext(ctx context.Context) *AdminUpdateUserContentFileLocationParams {
	var ()
	return &AdminUpdateUserContentFileLocationParams{

		Context: ctx,
	}
}

// NewAdminUpdateUserContentFileLocationParamsWithHTTPClient creates a new AdminUpdateUserContentFileLocationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateUserContentFileLocationParamsWithHTTPClient(client *http.Client) *AdminUpdateUserContentFileLocationParams {
	var ()
	return &AdminUpdateUserContentFileLocationParams{
		HTTPClient: client,
	}
}

/*AdminUpdateUserContentFileLocationParams contains all the parameters to send to the API endpoint
for the admin update user content file location operation typically these are written to a http.Request
*/
type AdminUpdateUserContentFileLocationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsUpdateFileLocationRequest
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) WithTimeout(timeout time.Duration) *AdminUpdateUserContentFileLocationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) WithContext(ctx context.Context) *AdminUpdateUserContentFileLocationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) WithHTTPClient(client *http.Client) *AdminUpdateUserContentFileLocationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateUserContentFileLocationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) WithBody(body *ugcclientmodels.ModelsUpdateFileLocationRequest) *AdminUpdateUserContentFileLocationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) SetBody(body *ugcclientmodels.ModelsUpdateFileLocationRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) WithChannelID(channelID string) *AdminUpdateUserContentFileLocationParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) WithContentID(contentID string) *AdminUpdateUserContentFileLocationParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) WithNamespace(namespace string) *AdminUpdateUserContentFileLocationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) WithUserID(userID string) *AdminUpdateUserContentFileLocationParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update user content file location params
func (o *AdminUpdateUserContentFileLocationParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateUserContentFileLocationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
	}

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
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
