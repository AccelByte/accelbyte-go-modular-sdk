// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package images

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new images API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for images API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ImageListShort(params *ImageListParams, authInfo runtime.ClientAuthInfoWriter) (*ImageListResponse, error)
	ImagesStorageShort(params *ImagesStorageParams, authInfo runtime.ClientAuthInfoWriter) (*ImagesStorageResponse, error)
	ImageGetShort(params *ImageGetParams, authInfo runtime.ClientAuthInfoWriter) (*ImageGetResponse, error)
	ImageMarkForDeletionShort(params *ImageMarkForDeletionParams, authInfo runtime.ClientAuthInfoWriter) (*ImageMarkForDeletionResponse, error)
	ImagePatchShort(params *ImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*ImagePatchResponse, error)
	ImageUnmarkForDeletionShort(params *ImageUnmarkForDeletionParams, authInfo runtime.ClientAuthInfoWriter) (*ImageUnmarkForDeletionResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ImageListShort get a list of existing images
Returns images which exist (uploaded, uploading, or building) in the linked account. This route fails if no account is linked

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]
*/
func (a *Client) ImageListShort(params *ImageListParams, authInfo runtime.ClientAuthInfoWriter) (*ImageListResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageListParams()
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
		ID:                 "ImageList",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImageListOK:
		response := &ImageListResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ImageListUnauthorized:
		response := &ImageListResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageListForbidden:
		response := &ImageListResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageListNotFound:
		response := &ImageListResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageListInternalServerError:
		response := &ImageListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImagesStorageShort get current usage for images storage
Returns information regarding the account's usage for images storage including the free tier quota

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]
*/
func (a *Client) ImagesStorageShort(params *ImagesStorageParams, authInfo runtime.ClientAuthInfoWriter) (*ImagesStorageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImagesStorageParams()
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
		ID:                 "ImagesStorage",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images-storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImagesStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImagesStorageOK:
		response := &ImagesStorageResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ImagesStorageUnauthorized:
		response := &ImagesStorageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImagesStorageForbidden:
		response := &ImagesStorageResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImagesStorageNotFound:
		response := &ImagesStorageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImagesStorageInternalServerError:
		response := &ImagesStorageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImageGetShort get image details.
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]
*/
func (a *Client) ImageGetShort(params *ImageGetParams, authInfo runtime.ClientAuthInfoWriter) (*ImageGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageGetParams()
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
		ID:                 "ImageGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images/{imageID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImageGetOK:
		response := &ImageGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ImageGetUnauthorized:
		response := &ImageGetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageGetForbidden:
		response := &ImageGetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageGetNotFound:
		response := &ImageGetResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageGetInternalServerError:
		response := &ImageGetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImageMarkForDeletionShort mark the image for deletion
Marks an image for deletion. The image will stop being available for fleets and will eventually be deleted.

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [DELETE]
*/
func (a *Client) ImageMarkForDeletionShort(params *ImageMarkForDeletionParams, authInfo runtime.ClientAuthInfoWriter) (*ImageMarkForDeletionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageMarkForDeletionParams()
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
		ID:                 "ImageMarkForDeletion",
		Method:             "DELETE",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images/{imageID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageMarkForDeletionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImageMarkForDeletionAccepted:
		response := &ImageMarkForDeletionResponse{}

		response.IsSuccess = true

		return response, nil
	case *ImageMarkForDeletionUnauthorized:
		response := &ImageMarkForDeletionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageMarkForDeletionForbidden:
		response := &ImageMarkForDeletionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageMarkForDeletionNotFound:
		response := &ImageMarkForDeletionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageMarkForDeletionPreconditionFailed:
		response := &ImageMarkForDeletionResponse{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageMarkForDeletionInternalServerError:
		response := &ImageMarkForDeletionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImagePatchShort edit the image
This allows editing of the image name, toggling `IsProtected`, or adding & removal of tags

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [UPDATE]
*/
func (a *Client) ImagePatchShort(params *ImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*ImagePatchResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImagePatchParams()
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
		ID:                 "ImagePatch",
		Method:             "PATCH",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images/{imageID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImagePatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImagePatchOK:
		response := &ImagePatchResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ImagePatchUnauthorized:
		response := &ImagePatchResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImagePatchForbidden:
		response := &ImagePatchResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImagePatchNotFound:
		response := &ImagePatchResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImagePatchInternalServerError:
		response := &ImagePatchResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImageUnmarkForDeletionShort unmarks the image for deletion
Unmarks an image for deletion. The image will be available for fleets.

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [DELETE]
*/
func (a *Client) ImageUnmarkForDeletionShort(params *ImageUnmarkForDeletionParams, authInfo runtime.ClientAuthInfoWriter) (*ImageUnmarkForDeletionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageUnmarkForDeletionParams()
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
		ID:                 "ImageUnmarkForDeletion",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageUnmarkForDeletionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImageUnmarkForDeletionAccepted:
		response := &ImageUnmarkForDeletionResponse{}

		response.IsSuccess = true

		return response, nil
	case *ImageUnmarkForDeletionUnauthorized:
		response := &ImageUnmarkForDeletionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageUnmarkForDeletionForbidden:
		response := &ImageUnmarkForDeletionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageUnmarkForDeletionNotFound:
		response := &ImageUnmarkForDeletionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageUnmarkForDeletionPreconditionFailed:
		response := &ImageUnmarkForDeletionResponse{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImageUnmarkForDeletionInternalServerError:
		response := &ImageUnmarkForDeletionResponse{}
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
