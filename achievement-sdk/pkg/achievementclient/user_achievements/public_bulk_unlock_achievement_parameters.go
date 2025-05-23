// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_achievements

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclientmodels"
)

// NewPublicBulkUnlockAchievementParams creates a new PublicBulkUnlockAchievementParams object
// with the default values initialized.
func NewPublicBulkUnlockAchievementParams() *PublicBulkUnlockAchievementParams {
	var ()
	return &PublicBulkUnlockAchievementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicBulkUnlockAchievementParamsWithTimeout creates a new PublicBulkUnlockAchievementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicBulkUnlockAchievementParamsWithTimeout(timeout time.Duration) *PublicBulkUnlockAchievementParams {
	var ()
	return &PublicBulkUnlockAchievementParams{

		timeout: timeout,
	}
}

// NewPublicBulkUnlockAchievementParamsWithContext creates a new PublicBulkUnlockAchievementParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicBulkUnlockAchievementParamsWithContext(ctx context.Context) *PublicBulkUnlockAchievementParams {
	var ()
	return &PublicBulkUnlockAchievementParams{

		Context: ctx,
	}
}

// NewPublicBulkUnlockAchievementParamsWithHTTPClient creates a new PublicBulkUnlockAchievementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicBulkUnlockAchievementParamsWithHTTPClient(client *http.Client) *PublicBulkUnlockAchievementParams {
	var ()
	return &PublicBulkUnlockAchievementParams{
		HTTPClient: client,
	}
}

/*PublicBulkUnlockAchievementParams contains all the parameters to send to the API endpoint
for the public bulk unlock achievement operation typically these are written to a http.Request
*/
type PublicBulkUnlockAchievementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *achievementclientmodels.ModelsBulkUnlockAchievementRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) WithTimeout(timeout time.Duration) *PublicBulkUnlockAchievementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) WithContext(ctx context.Context) *PublicBulkUnlockAchievementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) WithHTTPClient(client *http.Client) *PublicBulkUnlockAchievementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicBulkUnlockAchievementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) WithBody(body *achievementclientmodels.ModelsBulkUnlockAchievementRequest) *PublicBulkUnlockAchievementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) SetBody(body *achievementclientmodels.ModelsBulkUnlockAchievementRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) WithNamespace(namespace string) *PublicBulkUnlockAchievementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) WithUserID(userID string) *PublicBulkUnlockAchievementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public bulk unlock achievement params
func (o *PublicBulkUnlockAchievementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicBulkUnlockAchievementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
