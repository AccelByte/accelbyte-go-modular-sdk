// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package bans

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new bans API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for bans API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetBansTypeShort(params *GetBansTypeParams, authInfo runtime.ClientAuthInfoWriter) (*GetBansTypeResponse, error)
	GetListBanReasonShort(params *GetListBanReasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetListBanReasonResponse, error)
	AdminGetBansTypeV3Short(params *AdminGetBansTypeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeV3Response, error)
	AdminGetListBanReasonV3Short(params *AdminGetListBanReasonV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListBanReasonV3Response, error)
	AdminGetBannedUsersV3Short(params *AdminGetBannedUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedUsersV3Response, error)
	AdminBanUserBulkV3Short(params *AdminBanUserBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserBulkV3Response, error)
	AdminUnbanUserBulkV3Short(params *AdminUnbanUserBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanUserBulkV3Response, error)
	AdminGetBansTypeWithNamespaceV3Short(params *AdminGetBansTypeWithNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeWithNamespaceV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetBansTypeShort get list of ban types
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/bans [GET]_**
*/
func (a *Client) GetBansTypeShort(params *GetBansTypeParams, authInfo runtime.ClientAuthInfoWriter) (*GetBansTypeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBansTypeParams()
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
		ID:                 "GetBansType",
		Method:             "GET",
		PathPattern:        "/iam/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBansTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetBansTypeOK:
		response := &GetBansTypeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetBansTypeUnauthorized:
		response := &GetBansTypeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetBansTypeForbidden:
		response := &GetBansTypeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListBanReasonShort get list of ban reasons
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/bans/reasons [GET]_**
*/
func (a *Client) GetListBanReasonShort(params *GetListBanReasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetListBanReasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListBanReasonParams()
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
		ID:                 "GetListBanReason",
		Method:             "GET",
		PathPattern:        "/iam/bans/reasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListBanReasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListBanReasonOK:
		response := &GetListBanReasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetListBanReasonUnauthorized:
		response := &GetListBanReasonResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListBanReasonForbidden:
		response := &GetListBanReasonResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBansTypeV3Short get list of ban types
Ban type is the code
available for ban assignment. It is applicable globally for any namespace.
action code : 10201
*/
func (a *Client) AdminGetBansTypeV3Short(params *AdminGetBansTypeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBansTypeV3Params()
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
		ID:                 "AdminGetBansTypeV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBansTypeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBansTypeV3OK:
		response := &AdminGetBansTypeV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetBansTypeV3Unauthorized:
		response := &AdminGetBansTypeV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBansTypeV3Forbidden:
		response := &AdminGetBansTypeV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBansTypeV3InternalServerError:
		response := &AdminGetBansTypeV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetListBanReasonV3Short get list of ban reasons
Ban reasons is the code available to justify ban assignment. It is applicable globally for any namespace.
action code : 10202
*/
func (a *Client) AdminGetListBanReasonV3Short(params *AdminGetListBanReasonV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListBanReasonV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListBanReasonV3Params()
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
		ID:                 "AdminGetListBanReasonV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/bans/reasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListBanReasonV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetListBanReasonV3OK:
		response := &AdminGetListBanReasonV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetListBanReasonV3Unauthorized:
		response := &AdminGetListBanReasonV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListBanReasonV3Forbidden:
		response := &AdminGetListBanReasonV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListBanReasonV3InternalServerError:
		response := &AdminGetListBanReasonV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBannedUsersV3Short get list of user filtered by ban types
Ban type is the code
available for ban assignment. It is applicable globally for any namespace.
action code : 10201
*/
func (a *Client) AdminGetBannedUsersV3Short(params *AdminGetBannedUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedUsersV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBannedUsersV3Params()
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
		ID:                 "AdminGetBannedUsersV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/bans/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBannedUsersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBannedUsersV3OK:
		response := &AdminGetBannedUsersV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetBannedUsersV3Unauthorized:
		response := &AdminGetBannedUsersV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBannedUsersV3Forbidden:
		response := &AdminGetBannedUsersV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBannedUsersV3InternalServerError:
		response := &AdminGetBannedUsersV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBanUserBulkV3Short bulk ban user
Bulk ban user with specific type of ban. Ban types and reason can be queried. The maximum limit value is 100 userIDs
action code : 10141
*/
func (a *Client) AdminBanUserBulkV3Short(params *AdminBanUserBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserBulkV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanUserBulkV3Params()
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
		ID:                 "AdminBanUserBulkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/bans/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanUserBulkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBanUserBulkV3Created:
		response := &AdminBanUserBulkV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBanUserBulkV3BadRequest:
		response := &AdminBanUserBulkV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanUserBulkV3Unauthorized:
		response := &AdminBanUserBulkV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanUserBulkV3Forbidden:
		response := &AdminBanUserBulkV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanUserBulkV3NotFound:
		response := &AdminBanUserBulkV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanUserBulkV3InternalServerError:
		response := &AdminBanUserBulkV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUnbanUserBulkV3Short bulk unban user
disable bulk ban user. The maximum limit value is 100
action code : 10142
*/
func (a *Client) AdminUnbanUserBulkV3Short(params *AdminUnbanUserBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanUserBulkV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUnbanUserBulkV3Params()
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
		ID:                 "AdminUnbanUserBulkV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/bans/users/disabled",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUnbanUserBulkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUnbanUserBulkV3Created:
		response := &AdminUnbanUserBulkV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUnbanUserBulkV3BadRequest:
		response := &AdminUnbanUserBulkV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnbanUserBulkV3Unauthorized:
		response := &AdminUnbanUserBulkV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnbanUserBulkV3Forbidden:
		response := &AdminUnbanUserBulkV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnbanUserBulkV3NotFound:
		response := &AdminUnbanUserBulkV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnbanUserBulkV3InternalServerError:
		response := &AdminUnbanUserBulkV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBansTypeWithNamespaceV3Short get list of ban types
Ban type is the code
available for ban assignment. It is applicable globally for any namespace.
action code : 10201
*/
func (a *Client) AdminGetBansTypeWithNamespaceV3Short(params *AdminGetBansTypeWithNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBansTypeWithNamespaceV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBansTypeWithNamespaceV3Params()
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
		ID:                 "AdminGetBansTypeWithNamespaceV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/bantypes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBansTypeWithNamespaceV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBansTypeWithNamespaceV3OK:
		response := &AdminGetBansTypeWithNamespaceV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetBansTypeWithNamespaceV3Unauthorized:
		response := &AdminGetBansTypeWithNamespaceV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBansTypeWithNamespaceV3Forbidden:
		response := &AdminGetBansTypeWithNamespaceV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBansTypeWithNamespaceV3InternalServerError:
		response := &AdminGetBansTypeWithNamespaceV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
