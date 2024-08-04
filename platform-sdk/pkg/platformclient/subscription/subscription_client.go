// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package subscription

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new subscription API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for subscription API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QuerySubscriptionsShort(params *QuerySubscriptionsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySubscriptionsOK, error)
	RecurringChargeSubscriptionShort(params *RecurringChargeSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*RecurringChargeSubscriptionOK, error)
	QueryUserSubscriptionsShort(params *QueryUserSubscriptionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserSubscriptionsOK, error)
	GetUserSubscriptionActivitiesShort(params *GetUserSubscriptionActivitiesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSubscriptionActivitiesOK, error)
	PlatformSubscribeSubscriptionShort(params *PlatformSubscribeSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformSubscribeSubscriptionOK, error)
	CheckUserSubscriptionSubscribableByItemIDShort(params *CheckUserSubscriptionSubscribableByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*CheckUserSubscriptionSubscribableByItemIDOK, error)
	GetUserSubscriptionShort(params *GetUserSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSubscriptionOK, error)
	DeleteUserSubscriptionShort(params *DeleteUserSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserSubscriptionNoContent, error)
	CancelSubscriptionShort(params *CancelSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*CancelSubscriptionOK, error)
	GrantDaysToSubscriptionShort(params *GrantDaysToSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*GrantDaysToSubscriptionOK, error)
	GetUserSubscriptionBillingHistoriesShort(params *GetUserSubscriptionBillingHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSubscriptionBillingHistoriesOK, error)
	ProcessUserSubscriptionNotificationShort(params *ProcessUserSubscriptionNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*ProcessUserSubscriptionNotificationNoContent, error)
	PublicQueryUserSubscriptionsShort(params *PublicQueryUserSubscriptionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserSubscriptionsOK, error)
	PublicSubscribeSubscriptionShort(params *PublicSubscribeSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubscribeSubscriptionCreated, error)
	PublicCheckUserSubscriptionSubscribableByItemIDShort(params *PublicCheckUserSubscriptionSubscribableByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCheckUserSubscriptionSubscribableByItemIDOK, error)
	PublicGetUserSubscriptionShort(params *PublicGetUserSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserSubscriptionOK, error)
	PublicChangeSubscriptionBillingAccountShort(params *PublicChangeSubscriptionBillingAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicChangeSubscriptionBillingAccountOK, error)
	PublicCancelSubscriptionShort(params *PublicCancelSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelSubscriptionOK, error)
	PublicGetUserSubscriptionBillingHistoriesShort(params *PublicGetUserSubscriptionBillingHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserSubscriptionBillingHistoriesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QuerySubscriptionsShort query subscriptions
Query subscriptions.
Other detail info:

  * Returns : paginated subscriptions
*/
func (a *Client) QuerySubscriptionsShort(params *QuerySubscriptionsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySubscriptionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySubscriptionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "querySubscriptions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySubscriptionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QuerySubscriptionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RecurringChargeSubscriptionShort recurring charge subscription
 [TEST FACILITY ONLY] Forbidden in live environment. Recurring charge subscription, it will trigger recurring charge if the USER subscription status is ACTIVE, nextBillingDate is before now and no fail recurring charge within X(default 12) hours.
Other detail info:

  * Returns : recurring charge result
*/
func (a *Client) RecurringChargeSubscriptionShort(params *RecurringChargeSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*RecurringChargeSubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRecurringChargeSubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "recurringChargeSubscription",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/subscriptions/{subscriptionId}/recurring",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RecurringChargeSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RecurringChargeSubscriptionOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserSubscriptionsShort query user subscriptions
Query user subscriptions.
Other detail info:

  * Returns : paginated subscription
*/
func (a *Client) QueryUserSubscriptionsShort(params *QueryUserSubscriptionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserSubscriptionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserSubscriptionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryUserSubscriptions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserSubscriptionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserSubscriptionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserSubscriptionActivitiesShort get user subscription activity
Get user subscription activity.
Other detail info:

  * Returns : paginated subscription activity
*/
func (a *Client) GetUserSubscriptionActivitiesShort(params *GetUserSubscriptionActivitiesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSubscriptionActivitiesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserSubscriptionActivitiesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserSubscriptionActivities",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/activities",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserSubscriptionActivitiesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserSubscriptionActivitiesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PlatformSubscribeSubscriptionShort free subscribe by platform
Free subscribe by platform, can used by other justice service to redeem/reward the subscription.
Other detail info:

  * Returns : result subscription
*/
func (a *Client) PlatformSubscribeSubscriptionShort(params *PlatformSubscribeSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformSubscribeSubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformSubscribeSubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "platformSubscribeSubscription",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/platformSubscribe",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformSubscribeSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformSubscribeSubscriptionOK:
		return v, nil
	case *PlatformSubscribeSubscriptionCreated:
		return nil, v
	case *PlatformSubscribeSubscriptionBadRequest:
		return nil, v
	case *PlatformSubscribeSubscriptionNotFound:
		return nil, v
	case *PlatformSubscribeSubscriptionUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckUserSubscriptionSubscribableByItemIDShort check user subscription subscribable
Check user subscription subscribable by itemId, ACTIVE USER subscription can't do subscribe again.

Other detail info:

  * Returns : subscribable info
*/
func (a *Client) CheckUserSubscriptionSubscribableByItemIDShort(params *CheckUserSubscriptionSubscribableByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*CheckUserSubscriptionSubscribableByItemIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckUserSubscriptionSubscribableByItemIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "checkUserSubscriptionSubscribableByItemId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/subscribable/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckUserSubscriptionSubscribableByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckUserSubscriptionSubscribableByItemIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserSubscriptionShort get user subscription
Get user subscription.
Other detail info:

  * Returns : subscription
*/
func (a *Client) GetUserSubscriptionShort(params *GetUserSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserSubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserSubscription",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserSubscriptionOK:
		return v, nil
	case *GetUserSubscriptionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserSubscriptionShort delete user subscription
 [TEST FACILITY ONLY] Forbidden in live environment. Delete user subscription.
*/
func (a *Client) DeleteUserSubscriptionShort(params *DeleteUserSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserSubscriptionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserSubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteUserSubscription",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserSubscriptionNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CancelSubscriptionShort cancel a subscription
Cancel a subscription, only ACTIVE subscription can be cancelled. Ensure successfully cancel, recommend at least 1 day before current period ends, otherwise it may be charging or charged.
Set immediate true, the subscription will be terminated immediately, otherwise till the end of current billing cycle.
Set force true, will ignore the error if subscription is during recurring charging.
Other detail info:

  * Returns : cancelled subscription
*/
func (a *Client) CancelSubscriptionShort(params *CancelSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*CancelSubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCancelSubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "cancelSubscription",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CancelSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CancelSubscriptionOK:
		return v, nil
	case *CancelSubscriptionNotFound:
		return nil, v
	case *CancelSubscriptionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GrantDaysToSubscriptionShort grant days to a subscription
Grant days to a subscription, if grantDays is positive, it will add free days and push the next billing date by the amount of day.
if the grantDays is negative or zero, it only apply to active/cancelled subscription, remove days will decrease current period end, and move the next billing date closer.
Other detail info:

  * Returns : updated subscription
*/
func (a *Client) GrantDaysToSubscriptionShort(params *GrantDaysToSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*GrantDaysToSubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantDaysToSubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "grantDaysToSubscription",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/grant",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantDaysToSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GrantDaysToSubscriptionOK:
		return v, nil
	case *GrantDaysToSubscriptionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserSubscriptionBillingHistoriesShort get user subscription billing histories
Get user subscription billing histories.
Other detail info:

  * Returns : paginated subscription billing history
*/
func (a *Client) GetUserSubscriptionBillingHistoriesShort(params *GetUserSubscriptionBillingHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSubscriptionBillingHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserSubscriptionBillingHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserSubscriptionBillingHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserSubscriptionBillingHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserSubscriptionBillingHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ProcessUserSubscriptionNotificationShort web hook for payment notification
 [SERVICE COMMUNICATION ONLY] This API is used as a web hook for payment notification from justice payment service.
Other detail info:

  * Returns : Process result
*/
func (a *Client) ProcessUserSubscriptionNotificationShort(params *ProcessUserSubscriptionNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*ProcessUserSubscriptionNotificationNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProcessUserSubscriptionNotificationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "processUserSubscriptionNotification",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/notifications",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProcessUserSubscriptionNotificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ProcessUserSubscriptionNotificationNoContent:
		return v, nil
	case *ProcessUserSubscriptionNotificationBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserSubscriptionsShort query user subscriptions
Query user subscriptions.
Other detail info:

  * Returns : paginated subscription
*/
func (a *Client) PublicQueryUserSubscriptionsShort(params *PublicQueryUserSubscriptionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserSubscriptionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserSubscriptionsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicQueryUserSubscriptions",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserSubscriptionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserSubscriptionsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSubscribeSubscriptionShort subscribe a subscription
Subscribe a subscription. Support both real and virtual payment. Need go through payment flow using the paymentOrderNo if paymentFlowRequired true.
 ACTIVE USER subscription can't do subscribe again.
 The next billing date will be X(default 4) hours before the current period ends if correctly subscribed.
User with permission SANDBOX will create sandbox subscription that not real paid.
Other detail info:

  * Optional permission(user with this permission will create sandbox subscription) : resource="SANDBOX", action=1 (CREATE)
  * It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
  *  Returns : created subscription
*/
func (a *Client) PublicSubscribeSubscriptionShort(params *PublicSubscribeSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubscribeSubscriptionCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubscribeSubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicSubscribeSubscription",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubscribeSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSubscribeSubscriptionCreated:
		return v, nil
	case *PublicSubscribeSubscriptionBadRequest:
		return nil, v
	case *PublicSubscribeSubscriptionForbidden:
		return nil, v
	case *PublicSubscribeSubscriptionNotFound:
		return nil, v
	case *PublicSubscribeSubscriptionConflict:
		return nil, v
	case *PublicSubscribeSubscriptionUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCheckUserSubscriptionSubscribableByItemIDShort check user subscription subscribable
Check user subscription subscribable by itemId, ACTIVE USER subscription can't do subscribe again.

Other detail info:

  * Returns : subscribable info
*/
func (a *Client) PublicCheckUserSubscriptionSubscribableByItemIDShort(params *PublicCheckUserSubscriptionSubscribableByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCheckUserSubscriptionSubscribableByItemIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCheckUserSubscriptionSubscribableByItemIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCheckUserSubscriptionSubscribableByItemId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/subscriptions/subscribable/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCheckUserSubscriptionSubscribableByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCheckUserSubscriptionSubscribableByItemIDOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserSubscriptionShort get user subscription
Get user subscription.
Other detail info:

  * Returns : subscription
*/
func (a *Client) PublicGetUserSubscriptionShort(params *PublicGetUserSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserSubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserSubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserSubscription",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserSubscriptionOK:
		return v, nil
	case *PublicGetUserSubscriptionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicChangeSubscriptionBillingAccountShort request to change a subscription billing account
Request to change a subscription billing account, this will guide user to payment station. The actual change will happen at the 0 payment notification successfully handled.
Only ACTIVE USER subscription with real currency billing account can be changed.
Other detail info:

  * Returns : updated subscription
*/
func (a *Client) PublicChangeSubscriptionBillingAccountShort(params *PublicChangeSubscriptionBillingAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicChangeSubscriptionBillingAccountOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicChangeSubscriptionBillingAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicChangeSubscriptionBillingAccount",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/billingAccount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicChangeSubscriptionBillingAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicChangeSubscriptionBillingAccountOK:
		return v, nil
	case *PublicChangeSubscriptionBillingAccountBadRequest:
		return nil, v
	case *PublicChangeSubscriptionBillingAccountNotFound:
		return nil, v
	case *PublicChangeSubscriptionBillingAccountConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCancelSubscriptionShort cancel a subscription
Cancel a subscription, only ACTIVE subscription can be cancelled. Ensure successfully cancel, recommend at least 1 day before current period ends, otherwise it may be charging or charged.
Set immediate true, the subscription will be terminated immediately, otherwise till the end of current billing cycle.
Other detail info:

  * Returns : cancelled subscription
*/
func (a *Client) PublicCancelSubscriptionShort(params *PublicCancelSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelSubscriptionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelSubscriptionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicCancelSubscription",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCancelSubscriptionOK:
		return v, nil
	case *PublicCancelSubscriptionNotFound:
		return nil, v
	case *PublicCancelSubscriptionConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserSubscriptionBillingHistoriesShort get user subscription billing histories
Get user subscription billing histories.
Other detail info:

  * Returns : paginated subscription history
*/
func (a *Client) PublicGetUserSubscriptionBillingHistoriesShort(params *PublicGetUserSubscriptionBillingHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserSubscriptionBillingHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserSubscriptionBillingHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicGetUserSubscriptionBillingHistories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserSubscriptionBillingHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserSubscriptionBillingHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
