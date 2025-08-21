// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_player_binary_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public player binary record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public player binary record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	BulkGetPlayerPublicBinaryRecordsV1Short(params *BulkGetPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerPublicBinaryRecordsV1Response, error)
	ListMyBinaryRecordsV1Short(params *ListMyBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListMyBinaryRecordsV1Response, error)
	BulkGetMyBinaryRecordV1Short(params *BulkGetMyBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetMyBinaryRecordV1Response, error)
	PostPlayerBinaryRecordV1Short(params *PostPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerBinaryRecordV1Response, error)
	ListOtherPlayerPublicBinaryRecordsV1Short(params *ListOtherPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListOtherPlayerPublicBinaryRecordsV1Response, error)
	BulkGetOtherPlayerPublicBinaryRecordsV1Short(params *BulkGetOtherPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetOtherPlayerPublicBinaryRecordsV1Response, error)
	GetPlayerBinaryRecordV1Short(params *GetPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerBinaryRecordV1Response, error)
	PutPlayerBinaryRecordV1Short(params *PutPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerBinaryRecordV1Response, error)
	DeletePlayerBinaryRecordV1Short(params *DeletePlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeletePlayerBinaryRecordV1Response, error)
	PutPlayerBinaryRecorMetadataV1Short(params *PutPlayerBinaryRecorMetadataV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerBinaryRecorMetadataV1Response, error)
	PostPlayerBinaryPresignedURLV1Short(params *PostPlayerBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerBinaryPresignedURLV1Response, error)
	GetPlayerPublicBinaryRecordsV1Short(params *GetPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerPublicBinaryRecordsV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
BulkGetPlayerPublicBinaryRecordsV1Short bulk get player public records
Bulk get other player's public binary record by userIds, max allowed 20 at a time. Only record with `isPublic=true` can be
retrieved using this endpoint.
*/
func (a *Client) BulkGetPlayerPublicBinaryRecordsV1Short(params *BulkGetPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerPublicBinaryRecordsV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetPlayerPublicBinaryRecordsV1Params()
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
		ID:                 "bulkGetPlayerPublicBinaryRecordsV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/bulk/binaries/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetPlayerPublicBinaryRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetPlayerPublicBinaryRecordsV1OK:
		response := &BulkGetPlayerPublicBinaryRecordsV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetPlayerPublicBinaryRecordsV1BadRequest:
		response := &BulkGetPlayerPublicBinaryRecordsV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetPlayerPublicBinaryRecordsV1Unauthorized:
		response := &BulkGetPlayerPublicBinaryRecordsV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetPlayerPublicBinaryRecordsV1Forbidden:
		response := &BulkGetPlayerPublicBinaryRecordsV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetPlayerPublicBinaryRecordsV1InternalServerError:
		response := &BulkGetPlayerPublicBinaryRecordsV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListMyBinaryRecordsV1Short query my binary records
Retrieve list of my binary records by namespace.
*/
func (a *Client) ListMyBinaryRecordsV1Short(params *ListMyBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListMyBinaryRecordsV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListMyBinaryRecordsV1Params()
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
		ID:                 "listMyBinaryRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/me/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListMyBinaryRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListMyBinaryRecordsV1OK:
		response := &ListMyBinaryRecordsV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListMyBinaryRecordsV1BadRequest:
		response := &ListMyBinaryRecordsV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListMyBinaryRecordsV1Unauthorized:
		response := &ListMyBinaryRecordsV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListMyBinaryRecordsV1Forbidden:
		response := &ListMyBinaryRecordsV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListMyBinaryRecordsV1InternalServerError:
		response := &ListMyBinaryRecordsV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetMyBinaryRecordV1Short get player records bulk
Retrieve player record key and payload in bulk under given namespace.
Maximum bulk key limit per request 20
*/
func (a *Client) BulkGetMyBinaryRecordV1Short(params *BulkGetMyBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetMyBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetMyBinaryRecordV1Params()
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
		ID:                 "bulkGetMyBinaryRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/me/binaries/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetMyBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetMyBinaryRecordV1OK:
		response := &BulkGetMyBinaryRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetMyBinaryRecordV1BadRequest:
		response := &BulkGetMyBinaryRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetMyBinaryRecordV1Unauthorized:
		response := &BulkGetMyBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetMyBinaryRecordV1Forbidden:
		response := &BulkGetMyBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetMyBinaryRecordV1InternalServerError:
		response := &BulkGetMyBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostPlayerBinaryRecordV1Short create player binary record
Create a player binary record.

Other detail info:

`key` should follow these rules:
1. support uppercase and lowercase letters, numbers, and separators **"-"**, **"_"**, **"."** are allowed
2. begin and end with letters or numbers
3. spaces are not allowed
4. separators must not appears twice in a row

Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) PostPlayerBinaryRecordV1Short(params *PostPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostPlayerBinaryRecordV1Params()
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
		ID:                 "postPlayerBinaryRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostPlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostPlayerBinaryRecordV1Created:
		response := &PostPlayerBinaryRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PostPlayerBinaryRecordV1BadRequest:
		response := &PostPlayerBinaryRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerBinaryRecordV1Unauthorized:
		response := &PostPlayerBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerBinaryRecordV1Forbidden:
		response := &PostPlayerBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerBinaryRecordV1Conflict:
		response := &PostPlayerBinaryRecordV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerBinaryRecordV1InternalServerError:
		response := &PostPlayerBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListOtherPlayerPublicBinaryRecordsV1Short query other player public binary record
Retrieve list of other player public binary records under given namespace.
*/
func (a *Client) ListOtherPlayerPublicBinaryRecordsV1Short(params *ListOtherPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListOtherPlayerPublicBinaryRecordsV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListOtherPlayerPublicBinaryRecordsV1Params()
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
		ID:                 "listOtherPlayerPublicBinaryRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListOtherPlayerPublicBinaryRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListOtherPlayerPublicBinaryRecordsV1OK:
		response := &ListOtherPlayerPublicBinaryRecordsV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListOtherPlayerPublicBinaryRecordsV1BadRequest:
		response := &ListOtherPlayerPublicBinaryRecordsV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListOtherPlayerPublicBinaryRecordsV1Unauthorized:
		response := &ListOtherPlayerPublicBinaryRecordsV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListOtherPlayerPublicBinaryRecordsV1Forbidden:
		response := &ListOtherPlayerPublicBinaryRecordsV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListOtherPlayerPublicBinaryRecordsV1InternalServerError:
		response := &ListOtherPlayerPublicBinaryRecordsV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetOtherPlayerPublicBinaryRecordsV1Short bulk get other player public binary record
Retrieve other player public binary record in bulk under given namespace.
Maximum bulk key limit per request 20
*/
func (a *Client) BulkGetOtherPlayerPublicBinaryRecordsV1Short(params *BulkGetOtherPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetOtherPlayerPublicBinaryRecordsV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetOtherPlayerPublicBinaryRecordsV1Params()
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
		ID:                 "bulkGetOtherPlayerPublicBinaryRecordsV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetOtherPlayerPublicBinaryRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetOtherPlayerPublicBinaryRecordsV1OK:
		response := &BulkGetOtherPlayerPublicBinaryRecordsV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetOtherPlayerPublicBinaryRecordsV1BadRequest:
		response := &BulkGetOtherPlayerPublicBinaryRecordsV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized:
		response := &BulkGetOtherPlayerPublicBinaryRecordsV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetOtherPlayerPublicBinaryRecordsV1Forbidden:
		response := &BulkGetOtherPlayerPublicBinaryRecordsV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError:
		response := &BulkGetOtherPlayerPublicBinaryRecordsV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerBinaryRecordV1Short get player binary record
Get a player binary record by its key.
**Private Record**: Only user who own the record could retrieve it.
*/
func (a *Client) GetPlayerBinaryRecordV1Short(params *GetPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerBinaryRecordV1Params()
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
		ID:                 "getPlayerBinaryRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayerBinaryRecordV1OK:
		response := &GetPlayerBinaryRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPlayerBinaryRecordV1Unauthorized:
		response := &GetPlayerBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerBinaryRecordV1Forbidden:
		response := &GetPlayerBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerBinaryRecordV1NotFound:
		response := &GetPlayerBinaryRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerBinaryRecordV1InternalServerError:
		response := &GetPlayerBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutPlayerBinaryRecordV1Short update player binary record file
Update a player binary record file by its key
*/
func (a *Client) PutPlayerBinaryRecordV1Short(params *PutPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerBinaryRecordV1Params()
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
		ID:                 "putPlayerBinaryRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutPlayerBinaryRecordV1OK:
		response := &PutPlayerBinaryRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PutPlayerBinaryRecordV1BadRequest:
		response := &PutPlayerBinaryRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerBinaryRecordV1Unauthorized:
		response := &PutPlayerBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerBinaryRecordV1Forbidden:
		response := &PutPlayerBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerBinaryRecordV1NotFound:
		response := &PutPlayerBinaryRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerBinaryRecordV1InternalServerError:
		response := &PutPlayerBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePlayerBinaryRecordV1Short delete player binary record
Delete a player binary record. Only player who own the record can delete it
*/
func (a *Client) DeletePlayerBinaryRecordV1Short(params *DeletePlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeletePlayerBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePlayerBinaryRecordV1Params()
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
		ID:                 "deletePlayerBinaryRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePlayerBinaryRecordV1NoContent:
		response := &DeletePlayerBinaryRecordV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeletePlayerBinaryRecordV1BadRequest:
		response := &DeletePlayerBinaryRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePlayerBinaryRecordV1Unauthorized:
		response := &DeletePlayerBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePlayerBinaryRecordV1Forbidden:
		response := &DeletePlayerBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePlayerBinaryRecordV1NotFound:
		response := &DeletePlayerBinaryRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePlayerBinaryRecordV1InternalServerError:
		response := &DeletePlayerBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutPlayerBinaryRecorMetadataV1Short update player binary record metadata
Update a player binary record metadata by its key
*/
func (a *Client) PutPlayerBinaryRecorMetadataV1Short(params *PutPlayerBinaryRecorMetadataV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerBinaryRecorMetadataV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerBinaryRecorMetadataV1Params()
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
		ID:                 "putPlayerBinaryRecorMetadataV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerBinaryRecorMetadataV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutPlayerBinaryRecorMetadataV1OK:
		response := &PutPlayerBinaryRecorMetadataV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PutPlayerBinaryRecorMetadataV1BadRequest:
		response := &PutPlayerBinaryRecorMetadataV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerBinaryRecorMetadataV1Unauthorized:
		response := &PutPlayerBinaryRecorMetadataV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerBinaryRecorMetadataV1Forbidden:
		response := &PutPlayerBinaryRecorMetadataV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerBinaryRecorMetadataV1NotFound:
		response := &PutPlayerBinaryRecorMetadataV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerBinaryRecorMetadataV1InternalServerError:
		response := &PutPlayerBinaryRecorMetadataV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostPlayerBinaryPresignedURLV1Short request presigned url for upload player binary records
Request presigned URL to upload the binary record to s3.

Other detail info:

Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) PostPlayerBinaryPresignedURLV1Short(params *PostPlayerBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerBinaryPresignedURLV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostPlayerBinaryPresignedURLV1Params()
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
		ID:                 "postPlayerBinaryPresignedURLV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostPlayerBinaryPresignedURLV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostPlayerBinaryPresignedURLV1Created:
		response := &PostPlayerBinaryPresignedURLV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PostPlayerBinaryPresignedURLV1BadRequest:
		response := &PostPlayerBinaryPresignedURLV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerBinaryPresignedURLV1Unauthorized:
		response := &PostPlayerBinaryPresignedURLV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerBinaryPresignedURLV1Forbidden:
		response := &PostPlayerBinaryPresignedURLV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerBinaryPresignedURLV1NotFound:
		response := &PostPlayerBinaryPresignedURLV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerBinaryPresignedURLV1InternalServerError:
		response := &PostPlayerBinaryPresignedURLV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerPublicBinaryRecordsV1Short get player public binary record
Get other player's public binary record. Only record with `isPublic=true` can be
retrieved using this endpoint.
*/
func (a *Client) GetPlayerPublicBinaryRecordsV1Short(params *GetPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerPublicBinaryRecordsV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerPublicBinaryRecordsV1Params()
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
		ID:                 "getPlayerPublicBinaryRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerPublicBinaryRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayerPublicBinaryRecordsV1OK:
		response := &GetPlayerPublicBinaryRecordsV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPlayerPublicBinaryRecordsV1Unauthorized:
		response := &GetPlayerPublicBinaryRecordsV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerPublicBinaryRecordsV1Forbidden:
		response := &GetPlayerPublicBinaryRecordsV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerPublicBinaryRecordsV1NotFound:
		response := &GetPlayerPublicBinaryRecordsV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerPublicBinaryRecordsV1InternalServerError:
		response := &GetPlayerPublicBinaryRecordsV1Response{}
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
