// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package artifact_upload_process_queue

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new artifact upload process queue API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for artifact upload process queue API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListNodesIPAddressShort(params *ListNodesIPAddressParams, authInfo runtime.ClientAuthInfoWriter) (*ListNodesIPAddressResponse, error)
	DeleteNodeByIDShort(params *DeleteNodeByIDParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNodeByIDResponse, error)
	ListQueueShort(params *ListQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListQueueResponse, error)
	GetActiveQueueShort(params *GetActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveQueueResponse, error)
	SetActiveQueueShort(params *SetActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*SetActiveQueueResponse, error)
	DeleteActiveQueueShort(params *DeleteActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteActiveQueueResponse, error)
	ReportFailedUploadShort(params *ReportFailedUploadParams, authInfo runtime.ClientAuthInfoWriter) (*ReportFailedUploadResponse, error)
	DeleteQueueShort(params *DeleteQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteQueueResponse, error)
	ListAllActiveQueueShort(params *ListAllActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllActiveQueueResponse, error)
	ListAllQueueShort(params *ListAllQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllQueueResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListNodesIPAddressShort get ip address of all nodes that all artifact in queue resides. this ip address is the ip address of nomad client
Required permission: ADMIN:DSAM:ARTIFACT:NODES [READ]

Required scope: social

This endpoint will list IP Address of all artifact queue
*/
func (a *Client) ListNodesIPAddressShort(params *ListNodesIPAddressParams, authInfo runtime.ClientAuthInfoWriter) (*ListNodesIPAddressResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListNodesIPAddressParams()
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
		ID:                 "listNodesIPAddress",
		Method:             "GET",
		PathPattern:        "/dsartifact/artifacts/nodes/ipaddresses",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListNodesIPAddressReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListNodesIPAddressOK:
		response := &ListNodesIPAddressResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListNodesIPAddressBadRequest:
		response := &ListNodesIPAddressResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListNodesIPAddressInternalServerError:
		response := &ListNodesIPAddressResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNodeByIDShort delete a node that previously held artifact queue by ip address
Required permission: ADMIN:DSAM:ARTIFACT:NODES [DELETE]

Required scope: social

This endpoint will delete a node by IP
*/
func (a *Client) DeleteNodeByIDShort(params *DeleteNodeByIDParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNodeByIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNodeByIDParams()
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
		ID:                 "deleteNodeByID",
		Method:             "DELETE",
		PathPattern:        "/dsartifact/artifacts/nodes/ipaddresses",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNodeByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNodeByIDNoContent:
		response := &DeleteNodeByIDResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteNodeByIDBadRequest:
		response := &DeleteNodeByIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteNodeByIDInternalServerError:
		response := &DeleteNodeByIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListQueueShort get list of queues on a node
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [READ]

This endpoint is used to get the list of queues on a node
```
*/
func (a *Client) ListQueueShort(params *ListQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListQueueResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListQueueParams()
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
		ID:                 "listQueue",
		Method:             "GET",
		PathPattern:        "/dsartifact/artifacts/queues",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListQueueOK:
		response := &ListQueueResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListQueueBadRequest:
		response := &ListQueueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListQueueUnauthorized:
		response := &ListQueueResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListQueueNotFound:
		response := &ListQueueResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListQueueInternalServerError:
		response := &ListQueueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetActiveQueueShort get active queue process on a node
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [READ]

This endpoint is used to get an active queue process on a node
```
*/
func (a *Client) GetActiveQueueShort(params *GetActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveQueueResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetActiveQueueParams()
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
		ID:                 "getActiveQueue",
		Method:             "GET",
		PathPattern:        "/dsartifact/artifacts/queues/active",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetActiveQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetActiveQueueOK:
		response := &GetActiveQueueResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetActiveQueueBadRequest:
		response := &GetActiveQueueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetActiveQueueUnauthorized:
		response := &GetActiveQueueResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetActiveQueueNotFound:
		response := &GetActiveQueueResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetActiveQueueInternalServerError:
		response := &GetActiveQueueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetActiveQueueShort set a queue as active queue
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [UPDATE]

This endpoint is used to set a queue entry as the current active queue
for artifact uploading process on a node
```
*/
func (a *Client) SetActiveQueueShort(params *SetActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*SetActiveQueueResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetActiveQueueParams()
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
		ID:                 "setActiveQueue",
		Method:             "PUT",
		PathPattern:        "/dsartifact/artifacts/queues/active",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetActiveQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetActiveQueueNoContent:
		response := &SetActiveQueueResponse{}

		response.IsSuccess = true

		return response, nil
	case *SetActiveQueueBadRequest:
		response := &SetActiveQueueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SetActiveQueueUnauthorized:
		response := &SetActiveQueueResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SetActiveQueueInternalServerError:
		response := &SetActiveQueueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteActiveQueueShort delete active queue process on a node
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [DELETE]

This endpoint is used to delete active queue process on a node
```
*/
func (a *Client) DeleteActiveQueueShort(params *DeleteActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteActiveQueueResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteActiveQueueParams()
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
		ID:                 "deleteActiveQueue",
		Method:             "DELETE",
		PathPattern:        "/dsartifact/artifacts/queues/active",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteActiveQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteActiveQueueNoContent:
		response := &DeleteActiveQueueResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteActiveQueueBadRequest:
		response := &DeleteActiveQueueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteActiveQueueUnauthorized:
		response := &DeleteActiveQueueResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteActiveQueueInternalServerError:
		response := &DeleteActiveQueueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ReportFailedUploadShort report failed artifact upload
```
Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [UPDATE]

This endpoint is used to report a failed artifact upload
```
*/
func (a *Client) ReportFailedUploadShort(params *ReportFailedUploadParams, authInfo runtime.ClientAuthInfoWriter) (*ReportFailedUploadResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewReportFailedUploadParams()
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
		ID:                 "reportFailedUpload",
		Method:             "PUT",
		PathPattern:        "/dsartifact/artifacts/queues/failed",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ReportFailedUploadReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ReportFailedUploadNoContent:
		response := &ReportFailedUploadResponse{}

		response.IsSuccess = true

		return response, nil
	case *ReportFailedUploadBadRequest:
		response := &ReportFailedUploadResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ReportFailedUploadUnauthorized:
		response := &ReportFailedUploadResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ReportFailedUploadInternalServerError:
		response := &ReportFailedUploadResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteQueueShort delete a queue entry
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [DELETE]

Required scope: social

This endpoint will delete a queue entry
*/
func (a *Client) DeleteQueueShort(params *DeleteQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteQueueResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteQueueParams()
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
		ID:                 "deleteQueue",
		Method:             "DELETE",
		PathPattern:        "/dsartifact/namespaces/{namespace}/artifacts/queues",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteQueueNoContent:
		response := &DeleteQueueResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteQueueBadRequest:
		response := &DeleteQueueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteQueueInternalServerError:
		response := &DeleteQueueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListAllActiveQueueShort get all currently uploading artifact queue
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [READ]

Required scope: social

This endpoint will list all DSes which artifact is currently in uploading process.
*/
func (a *Client) ListAllActiveQueueShort(params *ListAllActiveQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllActiveQueueResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAllActiveQueueParams()
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
		ID:                 "listAllActiveQueue",
		Method:             "GET",
		PathPattern:        "/dsartifact/namespaces/{namespace}/artifacts/queues/active/all",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAllActiveQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListAllActiveQueueOK:
		response := &ListAllActiveQueueResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListAllActiveQueueBadRequest:
		response := &ListAllActiveQueueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListAllActiveQueueNotFound:
		response := &ListAllActiveQueueResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListAllActiveQueueInternalServerError:
		response := &ListAllActiveQueueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListAllQueueShort get all artifact upload process queues
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [READ]

Required scope: social

This endpoint will list all DSes which has artifact in upload queue.
*/
func (a *Client) ListAllQueueShort(params *ListAllQueueParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllQueueResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAllQueueParams()
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
		ID:                 "listAllQueue",
		Method:             "GET",
		PathPattern:        "/dsartifact/namespaces/{namespace}/artifacts/queues/all",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAllQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListAllQueueOK:
		response := &ListAllQueueResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListAllQueueBadRequest:
		response := &ListAllQueueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListAllQueueNotFound:
		response := &ListAllQueueResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListAllQueueInternalServerError:
		response := &ListAllQueueResponse{}
		response.Error500 = v.Payload

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
