// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package all_terminated_servers

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

// NewListAllTerminatedServersParams creates a new ListAllTerminatedServersParams object
// with the default values initialized.
func NewListAllTerminatedServersParams() *ListAllTerminatedServersParams {
	var (
		limitDefault = int64(20)
	)
	return &ListAllTerminatedServersParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListAllTerminatedServersParamsWithTimeout creates a new ListAllTerminatedServersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListAllTerminatedServersParamsWithTimeout(timeout time.Duration) *ListAllTerminatedServersParams {
	var (
		limitDefault = int64(20)
	)
	return &ListAllTerminatedServersParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewListAllTerminatedServersParamsWithContext creates a new ListAllTerminatedServersParams object
// with the default values initialized, and the ability to set a context for a request
func NewListAllTerminatedServersParamsWithContext(ctx context.Context) *ListAllTerminatedServersParams {
	var (
		limitDefault = int64(20)
	)
	return &ListAllTerminatedServersParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewListAllTerminatedServersParamsWithHTTPClient creates a new ListAllTerminatedServersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListAllTerminatedServersParamsWithHTTPClient(client *http.Client) *ListAllTerminatedServersParams {
	var (
		limitDefault = int64(20)
	)
	return &ListAllTerminatedServersParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*ListAllTerminatedServersParams contains all the parameters to send to the API endpoint
for the list all terminated servers operation typically these are written to a http.Request
*/
type ListAllTerminatedServersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Deployment
	  deployment of the game

	*/
	Deployment *string
	/*EndDate
	  end date on last update of the game RFC 3339

	*/
	EndDate *string
	/*GameMode
	  game mode of the game

	*/
	GameMode *string
	/*Limit
	  limit

	*/
	Limit *int64
	/*Namespace
	  namespace of the server

	*/
	Namespace *string
	/*Next
	  next

	*/
	Next *string
	/*PartyID
	  ID of the party

	*/
	PartyID *string
	/*PodName
	  pod name of the server

	*/
	PodName *string
	/*Previous
	  previous

	*/
	Previous *string
	/*Provider
	  provider of the server

	*/
	Provider *string
	/*Region
	  region of the server

	*/
	Region *string
	/*SessionID
	  session id of the game

	*/
	SessionID *string
	/*StartDate
	  start date on last update of the game RFC 3339

	*/
	StartDate *string
	/*Status
	  last status of the server

	*/
	Status *string
	/*UserID
	  ID of the user

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithTimeout(timeout time.Duration) *ListAllTerminatedServersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithContext(ctx context.Context) *ListAllTerminatedServersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithHTTPClient(client *http.Client) *ListAllTerminatedServersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListAllTerminatedServersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDeployment adds the deployment to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithDeployment(deployment *string) *ListAllTerminatedServersParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetDeployment(deployment *string) {
	o.Deployment = deployment
}

// WithEndDate adds the endDate to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithEndDate(endDate *string) *ListAllTerminatedServersParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithGameMode adds the gameMode to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithGameMode(gameMode *string) *ListAllTerminatedServersParams {
	o.SetGameMode(gameMode)
	return o
}

// SetGameMode adds the gameMode to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetGameMode(gameMode *string) {
	o.GameMode = gameMode
}

// WithLimit adds the limit to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithLimit(limit *int64) *ListAllTerminatedServersParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNamespace adds the namespace to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithNamespace(namespace *string) *ListAllTerminatedServersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetNamespace(namespace *string) {
	o.Namespace = namespace
}

// WithNext adds the nextVar to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithNext(nextVar *string) *ListAllTerminatedServersParams {
	o.SetNext(nextVar)
	return o
}

// SetNext adds the next to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetNext(nextVar *string) {
	o.Next = nextVar
}

// WithPartyID adds the partyID to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithPartyID(partyID *string) *ListAllTerminatedServersParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetPartyID(partyID *string) {
	o.PartyID = partyID
}

// WithPodName adds the podName to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithPodName(podName *string) *ListAllTerminatedServersParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetPodName(podName *string) {
	o.PodName = podName
}

// WithPrevious adds the previous to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithPrevious(previous *string) *ListAllTerminatedServersParams {
	o.SetPrevious(previous)
	return o
}

// SetPrevious adds the previous to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetPrevious(previous *string) {
	o.Previous = previous
}

// WithProvider adds the provider to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithProvider(provider *string) *ListAllTerminatedServersParams {
	o.SetProvider(provider)
	return o
}

// SetProvider adds the provider to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetProvider(provider *string) {
	o.Provider = provider
}

// WithRegion adds the region to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithRegion(region *string) *ListAllTerminatedServersParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetRegion(region *string) {
	o.Region = region
}

// WithSessionID adds the sessionID to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithSessionID(sessionID *string) *ListAllTerminatedServersParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetSessionID(sessionID *string) {
	o.SessionID = sessionID
}

// WithStartDate adds the startDate to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithStartDate(startDate *string) *ListAllTerminatedServersParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WithStatus adds the status to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithStatus(status *string) *ListAllTerminatedServersParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetStatus(status *string) {
	o.Status = status
}

// WithUserID adds the userID to the list all terminated servers params
func (o *ListAllTerminatedServersParams) WithUserID(userID *string) *ListAllTerminatedServersParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the list all terminated servers params
func (o *ListAllTerminatedServersParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *ListAllTerminatedServersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Deployment != nil {

		// query param deployment
		var qrDeployment string
		if o.Deployment != nil {
			qrDeployment = *o.Deployment
		}
		qDeployment := qrDeployment
		if qDeployment != "" {
			if err := r.SetQueryParam("deployment", qDeployment); err != nil {
				return err
			}
		}

	}

	if o.EndDate != nil {

		// query param end_date
		var qrEndDate string
		if o.EndDate != nil {
			qrEndDate = *o.EndDate
		}
		qEndDate := qrEndDate
		if qEndDate != "" {
			if err := r.SetQueryParam("end_date", qEndDate); err != nil {
				return err
			}
		}

	}

	if o.GameMode != nil {

		// query param game_mode
		var qrGameMode string
		if o.GameMode != nil {
			qrGameMode = *o.GameMode
		}
		qGameMode := qrGameMode
		if qGameMode != "" {
			if err := r.SetQueryParam("game_mode", qGameMode); err != nil {
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

	if o.Namespace != nil {

		// query param namespace
		var qrNamespace string
		if o.Namespace != nil {
			qrNamespace = *o.Namespace
		}
		qNamespace := qrNamespace
		if qNamespace != "" {
			if err := r.SetQueryParam("namespace", qNamespace); err != nil {
				return err
			}
		}

	}

	if o.Next != nil {

		// query param next
		var qrNext string
		if o.Next != nil {
			qrNext = *o.Next
		}
		qNext := qrNext
		if qNext != "" {
			if err := r.SetQueryParam("next", qNext); err != nil {
				return err
			}
		}

	}

	if o.PartyID != nil {

		// query param party_id
		var qrPartyID string
		if o.PartyID != nil {
			qrPartyID = *o.PartyID
		}
		qPartyID := qrPartyID
		if qPartyID != "" {
			if err := r.SetQueryParam("party_id", qPartyID); err != nil {
				return err
			}
		}

	}

	if o.PodName != nil {

		// query param pod_name
		var qrPodName string
		if o.PodName != nil {
			qrPodName = *o.PodName
		}
		qPodName := qrPodName
		if qPodName != "" {
			if err := r.SetQueryParam("pod_name", qPodName); err != nil {
				return err
			}
		}

	}

	if o.Previous != nil {

		// query param previous
		var qrPrevious string
		if o.Previous != nil {
			qrPrevious = *o.Previous
		}
		qPrevious := qrPrevious
		if qPrevious != "" {
			if err := r.SetQueryParam("previous", qPrevious); err != nil {
				return err
			}
		}

	}

	if o.Provider != nil {

		// query param provider
		var qrProvider string
		if o.Provider != nil {
			qrProvider = *o.Provider
		}
		qProvider := qrProvider
		if qProvider != "" {
			if err := r.SetQueryParam("provider", qProvider); err != nil {
				return err
			}
		}

	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

	}

	if o.SessionID != nil {

		// query param session_id
		var qrSessionID string
		if o.SessionID != nil {
			qrSessionID = *o.SessionID
		}
		qSessionID := qrSessionID
		if qSessionID != "" {
			if err := r.SetQueryParam("session_id", qSessionID); err != nil {
				return err
			}
		}

	}

	if o.StartDate != nil {

		// query param start_date
		var qrStartDate string
		if o.StartDate != nil {
			qrStartDate = *o.StartDate
		}
		qStartDate := qrStartDate
		if qStartDate != "" {
			if err := r.SetQueryParam("start_date", qStartDate); err != nil {
				return err
			}
		}

	}

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param user_id
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("user_id", qUserID); err != nil {
				return err
			}
		}

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
