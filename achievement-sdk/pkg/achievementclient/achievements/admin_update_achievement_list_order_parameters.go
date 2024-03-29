// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievements

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

// NewAdminUpdateAchievementListOrderParams creates a new AdminUpdateAchievementListOrderParams object
// with the default values initialized.
func NewAdminUpdateAchievementListOrderParams() *AdminUpdateAchievementListOrderParams {
	var ()
	return &AdminUpdateAchievementListOrderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateAchievementListOrderParamsWithTimeout creates a new AdminUpdateAchievementListOrderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateAchievementListOrderParamsWithTimeout(timeout time.Duration) *AdminUpdateAchievementListOrderParams {
	var ()
	return &AdminUpdateAchievementListOrderParams{

		timeout: timeout,
	}
}

// NewAdminUpdateAchievementListOrderParamsWithContext creates a new AdminUpdateAchievementListOrderParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateAchievementListOrderParamsWithContext(ctx context.Context) *AdminUpdateAchievementListOrderParams {
	var ()
	return &AdminUpdateAchievementListOrderParams{

		Context: ctx,
	}
}

// NewAdminUpdateAchievementListOrderParamsWithHTTPClient creates a new AdminUpdateAchievementListOrderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateAchievementListOrderParamsWithHTTPClient(client *http.Client) *AdminUpdateAchievementListOrderParams {
	var ()
	return &AdminUpdateAchievementListOrderParams{
		HTTPClient: client,
	}
}

/*AdminUpdateAchievementListOrderParams contains all the parameters to send to the API endpoint
for the admin update achievement list order operation typically these are written to a http.Request
*/
type AdminUpdateAchievementListOrderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *achievementclientmodels.ModelsAchievementOrderUpdateRequest
	/*AchievementCode
	  achievement code

	*/
	AchievementCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) WithTimeout(timeout time.Duration) *AdminUpdateAchievementListOrderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) WithContext(ctx context.Context) *AdminUpdateAchievementListOrderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) WithHTTPClient(client *http.Client) *AdminUpdateAchievementListOrderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateAchievementListOrderParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) WithBody(body *achievementclientmodels.ModelsAchievementOrderUpdateRequest) *AdminUpdateAchievementListOrderParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) SetBody(body *achievementclientmodels.ModelsAchievementOrderUpdateRequest) {
	o.Body = body
}

// WithAchievementCode adds the achievementCode to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) WithAchievementCode(achievementCode string) *AdminUpdateAchievementListOrderParams {
	o.SetAchievementCode(achievementCode)
	return o
}

// SetAchievementCode adds the achievementCode to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) SetAchievementCode(achievementCode string) {
	o.AchievementCode = achievementCode
}

// WithNamespace adds the namespace to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) WithNamespace(namespace string) *AdminUpdateAchievementListOrderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update achievement list order params
func (o *AdminUpdateAchievementListOrderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateAchievementListOrderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param achievementCode
	if err := r.SetPathParam("achievementCode", o.AchievementCode); err != nil {
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
