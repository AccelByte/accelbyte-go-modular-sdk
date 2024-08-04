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
	BulkGetPlayerPublicBinaryRecordsV1Short(params *BulkGetPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerPublicBinaryRecordsV1OK, error)
	ListMyBinaryRecordsV1Short(params *ListMyBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListMyBinaryRecordsV1OK, error)
	BulkGetMyBinaryRecordV1Short(params *BulkGetMyBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetMyBinaryRecordV1OK, error)
	PostPlayerBinaryRecordV1Short(params *PostPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerBinaryRecordV1Created, error)
	ListOtherPlayerPublicBinaryRecordsV1Short(params *ListOtherPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListOtherPlayerPublicBinaryRecordsV1OK, error)
	BulkGetOtherPlayerPublicBinaryRecordsV1Short(params *BulkGetOtherPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetOtherPlayerPublicBinaryRecordsV1OK, error)
	GetPlayerBinaryRecordV1Short(params *GetPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerBinaryRecordV1OK, error)
	PutPlayerBinaryRecordV1Short(params *PutPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerBinaryRecordV1OK, error)
	DeletePlayerBinaryRecordV1Short(params *DeletePlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeletePlayerBinaryRecordV1NoContent, error)
	PutPlayerBinaryRecorMetadataV1Short(params *PutPlayerBinaryRecorMetadataV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerBinaryRecorMetadataV1OK, error)
	PostPlayerBinaryPresignedURLV1Short(params *PostPlayerBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerBinaryPresignedURLV1Created, error)
	GetPlayerPublicBinaryRecordsV1Short(params *GetPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerPublicBinaryRecordsV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
BulkGetPlayerPublicBinaryRecordsV1Short bulk get player public records
Bulk get other player's public binary record by userIds, max allowed 20 at a time. Only record with `isPublic=true` can be
retrieved using this endpoint.
*/
func (a *Client) BulkGetPlayerPublicBinaryRecordsV1Short(params *BulkGetPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerPublicBinaryRecordsV1OK, error) {
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
		return v, nil
	case *BulkGetPlayerPublicBinaryRecordsV1BadRequest:
		return nil, v
	case *BulkGetPlayerPublicBinaryRecordsV1Unauthorized:
		return nil, v
	case *BulkGetPlayerPublicBinaryRecordsV1Forbidden:
		return nil, v
	case *BulkGetPlayerPublicBinaryRecordsV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListMyBinaryRecordsV1Short query my binary records
Retrieve list of my binary records by namespace.
*/
func (a *Client) ListMyBinaryRecordsV1Short(params *ListMyBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListMyBinaryRecordsV1OK, error) {
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
		return v, nil
	case *ListMyBinaryRecordsV1BadRequest:
		return nil, v
	case *ListMyBinaryRecordsV1Unauthorized:
		return nil, v
	case *ListMyBinaryRecordsV1Forbidden:
		return nil, v
	case *ListMyBinaryRecordsV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetMyBinaryRecordV1Short get player records bulk
Retrieve player record key and payload in bulk under given namespace.
Maximum bulk key limit per request 20
*/
func (a *Client) BulkGetMyBinaryRecordV1Short(params *BulkGetMyBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetMyBinaryRecordV1OK, error) {
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
		return v, nil
	case *BulkGetMyBinaryRecordV1BadRequest:
		return nil, v
	case *BulkGetMyBinaryRecordV1Unauthorized:
		return nil, v
	case *BulkGetMyBinaryRecordV1Forbidden:
		return nil, v
	case *BulkGetMyBinaryRecordV1InternalServerError:
		return nil, v

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
func (a *Client) PostPlayerBinaryRecordV1Short(params *PostPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerBinaryRecordV1Created, error) {
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
		return v, nil
	case *PostPlayerBinaryRecordV1BadRequest:
		return nil, v
	case *PostPlayerBinaryRecordV1Unauthorized:
		return nil, v
	case *PostPlayerBinaryRecordV1Forbidden:
		return nil, v
	case *PostPlayerBinaryRecordV1Conflict:
		return nil, v
	case *PostPlayerBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListOtherPlayerPublicBinaryRecordsV1Short query other player public binary record
Retrieve list of other player public binary records under given namespace.
*/
func (a *Client) ListOtherPlayerPublicBinaryRecordsV1Short(params *ListOtherPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListOtherPlayerPublicBinaryRecordsV1OK, error) {
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
		return v, nil
	case *ListOtherPlayerPublicBinaryRecordsV1BadRequest:
		return nil, v
	case *ListOtherPlayerPublicBinaryRecordsV1Unauthorized:
		return nil, v
	case *ListOtherPlayerPublicBinaryRecordsV1Forbidden:
		return nil, v
	case *ListOtherPlayerPublicBinaryRecordsV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetOtherPlayerPublicBinaryRecordsV1Short bulk get other player public binary record
Retrieve other player public binary record in bulk under given namespace.
Maximum bulk key limit per request 20
*/
func (a *Client) BulkGetOtherPlayerPublicBinaryRecordsV1Short(params *BulkGetOtherPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetOtherPlayerPublicBinaryRecordsV1OK, error) {
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
		return v, nil
	case *BulkGetOtherPlayerPublicBinaryRecordsV1BadRequest:
		return nil, v
	case *BulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized:
		return nil, v
	case *BulkGetOtherPlayerPublicBinaryRecordsV1Forbidden:
		return nil, v
	case *BulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerBinaryRecordV1Short get player binary record
Get a player binary record by its key.
**Private Record**: Only user who own the record could retrieve it.
*/
func (a *Client) GetPlayerBinaryRecordV1Short(params *GetPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerBinaryRecordV1OK, error) {
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
		return v, nil
	case *GetPlayerBinaryRecordV1Unauthorized:
		return nil, v
	case *GetPlayerBinaryRecordV1Forbidden:
		return nil, v
	case *GetPlayerBinaryRecordV1NotFound:
		return nil, v
	case *GetPlayerBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutPlayerBinaryRecordV1Short update player binary record file
Update a player binary record file by its key
*/
func (a *Client) PutPlayerBinaryRecordV1Short(params *PutPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerBinaryRecordV1OK, error) {
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
		return v, nil
	case *PutPlayerBinaryRecordV1BadRequest:
		return nil, v
	case *PutPlayerBinaryRecordV1Unauthorized:
		return nil, v
	case *PutPlayerBinaryRecordV1Forbidden:
		return nil, v
	case *PutPlayerBinaryRecordV1NotFound:
		return nil, v
	case *PutPlayerBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePlayerBinaryRecordV1Short delete player binary record
Delete a player binary record. Only player who own the record can delete it
*/
func (a *Client) DeletePlayerBinaryRecordV1Short(params *DeletePlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeletePlayerBinaryRecordV1NoContent, error) {
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
		return v, nil
	case *DeletePlayerBinaryRecordV1BadRequest:
		return nil, v
	case *DeletePlayerBinaryRecordV1Unauthorized:
		return nil, v
	case *DeletePlayerBinaryRecordV1Forbidden:
		return nil, v
	case *DeletePlayerBinaryRecordV1NotFound:
		return nil, v
	case *DeletePlayerBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutPlayerBinaryRecorMetadataV1Short update player binary record metadata
Update a player binary record metadata by its key
*/
func (a *Client) PutPlayerBinaryRecorMetadataV1Short(params *PutPlayerBinaryRecorMetadataV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerBinaryRecorMetadataV1OK, error) {
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
		return v, nil
	case *PutPlayerBinaryRecorMetadataV1BadRequest:
		return nil, v
	case *PutPlayerBinaryRecorMetadataV1Unauthorized:
		return nil, v
	case *PutPlayerBinaryRecorMetadataV1Forbidden:
		return nil, v
	case *PutPlayerBinaryRecorMetadataV1NotFound:
		return nil, v
	case *PutPlayerBinaryRecorMetadataV1InternalServerError:
		return nil, v

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
func (a *Client) PostPlayerBinaryPresignedURLV1Short(params *PostPlayerBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerBinaryPresignedURLV1Created, error) {
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
		return v, nil
	case *PostPlayerBinaryPresignedURLV1BadRequest:
		return nil, v
	case *PostPlayerBinaryPresignedURLV1Unauthorized:
		return nil, v
	case *PostPlayerBinaryPresignedURLV1Forbidden:
		return nil, v
	case *PostPlayerBinaryPresignedURLV1NotFound:
		return nil, v
	case *PostPlayerBinaryPresignedURLV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerPublicBinaryRecordsV1Short get player public binary record
Get other player's public binary record. Only record with `isPublic=true` can be
retrieved using this endpoint.
*/
func (a *Client) GetPlayerPublicBinaryRecordsV1Short(params *GetPlayerPublicBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerPublicBinaryRecordsV1OK, error) {
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
		return v, nil
	case *GetPlayerPublicBinaryRecordsV1Unauthorized:
		return nil, v
	case *GetPlayerPublicBinaryRecordsV1Forbidden:
		return nil, v
	case *GetPlayerPublicBinaryRecordsV1NotFound:
		return nil, v
	case *GetPlayerPublicBinaryRecordsV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
