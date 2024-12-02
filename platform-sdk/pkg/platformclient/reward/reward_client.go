// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new reward API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for reward API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateRewardShort(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardResponse, error)
	QueryRewardsShort(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsResponse, error)
	ExportRewardsShort(params *ExportRewardsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportRewardsResponse, error)
	ImportRewardsShort(params *ImportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportRewardsResponse, error)
	GetRewardShort(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardResponse, error)
	UpdateRewardShort(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardResponse, error)
	DeleteRewardShort(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardResponse, error)
	CheckEventConditionShort(params *CheckEventConditionParams, authInfo runtime.ClientAuthInfoWriter) (*CheckEventConditionResponse, error)
	DeleteRewardConditionRecordShort(params *DeleteRewardConditionRecordParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardConditionRecordResponse, error)
	GetRewardByCodeShort(params *GetRewardByCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardByCodeResponse, error)
	QueryRewards1Short(params *QueryRewards1Params, authInfo runtime.ClientAuthInfoWriter) (*QueryRewards1Response, error)
	GetReward1Short(params *GetReward1Params, authInfo runtime.ClientAuthInfoWriter) (*GetReward1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateRewardShort create a reward
This API is used to create a reward.
Other detail info:

  * Returns : created reward data
  *  Acceptable values for rewardItem's identityType are : ITEM_ID or ITEM_SKU
*/
func (a *Client) CreateRewardShort(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateRewardParams()
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
		ID:                 "createReward",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateRewardCreated:
		response := &CreateRewardResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateRewardBadRequest:
		response := &CreateRewardResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRewardNotFound:
		response := &CreateRewardResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRewardConflict:
		response := &CreateRewardResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRewardUnprocessableEntity:
		response := &CreateRewardResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryRewardsShort query rewards by criteria
This API is used to query rewards by criteria.

Other detail info:

  * Returns : the list of rewards
*/
func (a *Client) QueryRewardsShort(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRewardsParams()
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
		ID:                 "queryRewards",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRewardsOK:
		response := &QueryRewardsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryRewardsUnprocessableEntity:
		response := &QueryRewardsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportRewardsShort export all reward configurations
Export reward configurations for a given namespace into file. At current, only JSON file is supported.
*/
func (a *Client) ExportRewardsShort(params *ExportRewardsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportRewardsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportRewardsParams()
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
		ID:                 "exportRewards",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportRewardsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportRewardsOK:
		response := &ExportRewardsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportRewardsShort import reward configurations
Import reward configurations for a given namespace from file. At current, only JSON file is supported.
*/
func (a *Client) ImportRewardsShort(params *ImportRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportRewardsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportRewardsParams()
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
		ID:                 "importRewards",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportRewardsOK:
		response := &ImportRewardsResponse{}

		response.IsSuccess = true

		return response, nil
	case *ImportRewardsBadRequest:
		response := &ImportRewardsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportRewardsConflict:
		response := &ImportRewardsResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRewardShort get a reward
This API is used to get reward by reward Id.
Other detail info:

  * Returns : reward instance
*/
func (a *Client) GetRewardShort(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRewardParams()
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
		ID:                 "getReward",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRewardOK:
		response := &GetRewardResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetRewardNotFound:
		response := &GetRewardResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRewardShort update a reward
This API is used to update a reward.
Other detail info:

  * Returns : reward instance
  *  Acceptable values for rewardItem's identityType are : ITEM_ID or ITEM_SKU
*/
func (a *Client) UpdateRewardShort(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRewardParams()
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
		ID:                 "updateReward",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRewardOK:
		response := &UpdateRewardResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateRewardBadRequest:
		response := &UpdateRewardResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateRewardNotFound:
		response := &UpdateRewardResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateRewardConflict:
		response := &UpdateRewardResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRewardShort delete a reward
This API is used to delete a reward by reward Id.

Other detail info:

  * Returns : the deleted reward data
*/
func (a *Client) DeleteRewardShort(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRewardParams()
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
		ID:                 "deleteReward",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRewardOK:
		response := &DeleteRewardResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteRewardNotFound:
		response := &DeleteRewardResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckEventConditionShort check if event payload match reward condition
 [TEST FACILITY ONLY] Forbidden in live environment. Other detail info:

  * Returns : match result
*/
func (a *Client) CheckEventConditionShort(params *CheckEventConditionParams, authInfo runtime.ClientAuthInfoWriter) (*CheckEventConditionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckEventConditionParams()
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
		ID:                 "checkEventCondition",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}/match",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckEventConditionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckEventConditionOK:
		response := &CheckEventConditionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CheckEventConditionNotFound:
		response := &CheckEventConditionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRewardConditionRecordShort delete a reward condition record
 [TEST FACILITY ONLY] Forbidden in live environment. This API is used to delete a reward condition record by reward Id and condition Name (optional).

Other detail info:

  * Returns : 204 No Content
*/
func (a *Client) DeleteRewardConditionRecordShort(params *DeleteRewardConditionRecordParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardConditionRecordResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRewardConditionRecordParams()
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
		ID:                 "deleteRewardConditionRecord",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/rewards/{rewardId}/record",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRewardConditionRecordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRewardConditionRecordNoContent:
		response := &DeleteRewardConditionRecordResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRewardByCodeShort get a reward by code
This API is used to get reward by reward code.
Other detail info:

  * Returns : reward instance
*/
func (a *Client) GetRewardByCodeShort(params *GetRewardByCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardByCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRewardByCodeParams()
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
		ID:                 "getRewardByCode",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/rewards/byCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRewardByCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRewardByCodeOK:
		response := &GetRewardByCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetRewardByCodeNotFound:
		response := &GetRewardByCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryRewards1Short query rewards by criteria
This API is used to query rewards by criteria.

Other detail info:

  * Returns : the list of rewards
*/
func (a *Client) QueryRewards1Short(params *QueryRewards1Params, authInfo runtime.ClientAuthInfoWriter) (*QueryRewards1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRewards1Params()
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
		ID:                 "queryRewards_1",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/rewards/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRewards1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRewards1OK:
		response := &QueryRewards1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryRewards1UnprocessableEntity:
		response := &QueryRewards1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetReward1Short get a reward
This API is used to get reward by reward Id.
Other detail info:

  * Returns : reward instance
*/
func (a *Client) GetReward1Short(params *GetReward1Params, authInfo runtime.ClientAuthInfoWriter) (*GetReward1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetReward1Params()
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
		ID:                 "getReward_1",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/rewards/{rewardId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetReward1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetReward1OK:
		response := &GetReward1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetReward1NotFound:
		response := &GetReward1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
