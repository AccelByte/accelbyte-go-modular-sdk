// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new slot API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for slot API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserNamespaceSlotsShort(params *GetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserNamespaceSlotsResponse, error)
	GetSlotDataShort(params *GetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*GetSlotDataResponse, error)
	PublicGetUserNamespaceSlotsShort(params *PublicGetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserNamespaceSlotsResponse, error)
	PublicCreateUserNamespaceSlotShort(params *PublicCreateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserNamespaceSlotResponse, error)
	PublicGetSlotDataShort(params *PublicGetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicGetSlotDataResponse, error)
	PublicUpdateUserNamespaceSlotShort(params *PublicUpdateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotResponse, error)
	PublicDeleteUserNamespaceSlotShort(params *PublicDeleteUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteUserNamespaceSlotResponse, error)
	PublicUpdateUserNamespaceSlotMetadataShort(params *PublicUpdateUserNamespaceSlotMetadataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotMetadataResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetUserNamespaceSlotsShort returns list of slots for given user


## The endpoint is going to be deprecated


Get slots for a given user.
Other detail info:
        *  Returns : list of slots
*/
func (a *Client) GetUserNamespaceSlotsShort(params *GetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserNamespaceSlotsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserNamespaceSlotsParams()
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
		ID:                 "getUserNamespaceSlots",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/slots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserNamespaceSlotsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserNamespaceSlotsOK:
		response := &GetUserNamespaceSlotsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSlotDataShort returns slot data


## The endpoint is going to be deprecated


Get slot data.
Other detail info:
        *  Returns : slot data
*/
func (a *Client) GetSlotDataShort(params *GetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*GetSlotDataResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSlotDataParams()
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
		ID:                 "getSlotData",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/slots/{slotId}",
		ProducesMediaTypes: []string{"application/octet-stream"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSlotDataReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSlotDataOK:
		response := &GetSlotDataResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSlotDataNotFound:
		response := &GetSlotDataResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserNamespaceSlotsShort returns slots for given user


## The endpoint is going to be deprecated


Get list of slots for a given user in namespace.
Other detail info:
        *  Returns : list of slots
*/
func (a *Client) PublicGetUserNamespaceSlotsShort(params *PublicGetUserNamespaceSlotsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserNamespaceSlotsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserNamespaceSlotsParams()
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
		ID:                 "publicGetUserNamespaceSlots",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserNamespaceSlotsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserNamespaceSlotsOK:
		response := &PublicGetUserNamespaceSlotsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserNamespaceSlotShort creates a slot


## The endpoint is going to be deprecated


Creates a slot.
Other detail info:
        *  Returns : created slot info
*/
func (a *Client) PublicCreateUserNamespaceSlotShort(params *PublicCreateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserNamespaceSlotResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserNamespaceSlotParams()
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
		ID:                 "publicCreateUserNamespaceSlot",
		Method:             "POST",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserNamespaceSlotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserNamespaceSlotCreated:
		response := &PublicCreateUserNamespaceSlotResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicCreateUserNamespaceSlotBadRequest:
		response := &PublicCreateUserNamespaceSlotResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserNamespaceSlotConflict:
		response := &PublicCreateUserNamespaceSlotResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetSlotDataShort returns slot data


## The endpoint is going to be deprecated


Get slot data.
Other detail info:
        *  Returns : slot data
*/
func (a *Client) PublicGetSlotDataShort(params *PublicGetSlotDataParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicGetSlotDataResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetSlotDataParams()
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
		ID:                 "publicGetSlotData",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}",
		ProducesMediaTypes: []string{"application/octet-stream"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetSlotDataReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetSlotDataOK:
		response := &PublicGetSlotDataResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetSlotDataNotFound:
		response := &PublicGetSlotDataResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateUserNamespaceSlotShort updates a slot


## The endpoint is going to be deprecated


Updates a slot.
Other detail info:
        *  Returns : updated slot
*/
func (a *Client) PublicUpdateUserNamespaceSlotShort(params *PublicUpdateUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserNamespaceSlotParams()
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
		ID:                 "publicUpdateUserNamespaceSlot",
		Method:             "PUT",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserNamespaceSlotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserNamespaceSlotOK:
		response := &PublicUpdateUserNamespaceSlotResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateUserNamespaceSlotBadRequest:
		response := &PublicUpdateUserNamespaceSlotResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserNamespaceSlotNotFound:
		response := &PublicUpdateUserNamespaceSlotResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeleteUserNamespaceSlotShort deletes the slot


## The endpoint is going to be deprecated


Deletes the slot.
Other detail info:
*/
func (a *Client) PublicDeleteUserNamespaceSlotShort(params *PublicDeleteUserNamespaceSlotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteUserNamespaceSlotResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeleteUserNamespaceSlotParams()
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
		ID:                 "publicDeleteUserNamespaceSlot",
		Method:             "DELETE",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeleteUserNamespaceSlotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteUserNamespaceSlotNoContent:
		response := &PublicDeleteUserNamespaceSlotResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicDeleteUserNamespaceSlotNotFound:
		response := &PublicDeleteUserNamespaceSlotResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateUserNamespaceSlotMetadataShort updates the slot metadata


## The endpoint is going to be deprecated


Updates the slot metadata.
Other detail info:
        *  Returns : updated slot
*/
func (a *Client) PublicUpdateUserNamespaceSlotMetadataShort(params *PublicUpdateUserNamespaceSlotMetadataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserNamespaceSlotMetadataResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserNamespaceSlotMetadataParams()
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
		ID:                 "publicUpdateUserNamespaceSlotMetadata",
		Method:             "PUT",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}/metadata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserNamespaceSlotMetadataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserNamespaceSlotMetadataOK:
		response := &PublicUpdateUserNamespaceSlotMetadataResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateUserNamespaceSlotMetadataNotFound:
		response := &PublicUpdateUserNamespaceSlotMetadataResponse{}
		response.Error404 = v.Payload

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
