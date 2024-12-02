// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package image_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new image config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for image config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	UpdateImageShort(params *UpdateImageParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateImageResponse, error)
	CreateImageShort(params *CreateImageParams, authInfo runtime.ClientAuthInfoWriter) (*CreateImageResponse, error)
	CreateImagePatchShort(params *CreateImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*CreateImagePatchResponse, error)
	ListImagesShort(params *ListImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ListImagesResponse, error)
	DeleteImageShort(params *DeleteImageParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteImageResponse, error)
	GetImageLimitShort(params *GetImageLimitParams, authInfo runtime.ClientAuthInfoWriter) (*GetImageLimitResponse, error)
	DeleteImagePatchShort(params *DeleteImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteImagePatchResponse, error)
	GetImageDetailShort(params *GetImageDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetImageDetailResponse, error)
	GetImagePatchesShort(params *GetImagePatchesParams, authInfo runtime.ClientAuthInfoWriter) (*GetImagePatchesResponse, error)
	GetImagePatchDetailShort(params *GetImagePatchDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetImagePatchDetailResponse, error)
	GetRepositoryShort(params *GetRepositoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetRepositoryResponse, error)
	CreateRepositoryShort(params *CreateRepositoryParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRepositoryResponse, error)
	ListImagesClientShort(params *ListImagesClientParams, authInfo runtime.ClientAuthInfoWriter) (*ListImagesClientResponse, error)
	ImageLimitClientShort(params *ImageLimitClientParams, authInfo runtime.ClientAuthInfoWriter) (*ImageLimitClientResponse, error)
	ImageDetailClientShort(params *ImageDetailClientParams, authInfo runtime.ClientAuthInfoWriter) (*ImageDetailClientResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
UpdateImageShort update image
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]
Required scope: social

This endpoint will update an image name and/or image persistent flag.

Sample image:
{
"namespace":"dewa",
"version":"1.0.0",
"image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0",
"persistent":false
}
```
*/
func (a *Client) UpdateImageShort(params *UpdateImageParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateImageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateImageParams()
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
		ID:                 "UpdateImage",
		Method:             "PUT",
		PathPattern:        "/dsmcontroller/admin/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateImageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateImageNoContent:
		response := &UpdateImageResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateImageBadRequest:
		response := &UpdateImageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateImageUnauthorized:
		response := &UpdateImageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateImageInternalServerError:
		response := &UpdateImageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateImageShort create image
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint will create image.

Sample image:
{
"namespace":"dewa",
"version":"1.0.0",
"image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0",
"persistent":false
}
```
*/
func (a *Client) CreateImageShort(params *CreateImageParams, authInfo runtime.ClientAuthInfoWriter) (*CreateImageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateImageParams()
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
		ID:                 "CreateImage",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateImageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateImageNoContent:
		response := &CreateImageResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateImageBadRequest:
		response := &CreateImageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateImageUnauthorized:
		response := &CreateImageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateImageNotFound:
		response := &CreateImageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateImageConflict:
		response := &CreateImageResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateImageInternalServerError:
		response := &CreateImageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateImagePatchShort create image patch
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint will create image patch.

Sample image:
{
"namespace":"dewa",
"version":"1.0.0",
"patchVersion":"1.0.0-patch",
"image":"144436415367.dkr.ecr.us-west-2.amazonaws.com/dewa:1.0.0-patch",
"persistent":false
}
```
*/
func (a *Client) CreateImagePatchShort(params *CreateImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*CreateImagePatchResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateImagePatchParams()
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
		ID:                 "CreateImagePatch",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/images/patches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateImagePatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateImagePatchCreated:
		response := &CreateImagePatchResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateImagePatchBadRequest:
		response := &CreateImagePatchResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateImagePatchUnauthorized:
		response := &CreateImagePatchResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateImagePatchConflict:
		response := &CreateImagePatchResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateImagePatchInternalServerError:
		response := &CreateImagePatchResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListImagesShort list all ds images
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint lists all of dedicated servers images.

Parameter Offset and Count is Required
*/
func (a *Client) ListImagesShort(params *ListImagesParams, authInfo runtime.ClientAuthInfoWriter) (*ListImagesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListImagesParams()
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
		ID:                 "ListImages",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListImagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListImagesOK:
		response := &ListImagesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListImagesBadRequest:
		response := &ListImagesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListImagesUnauthorized:
		response := &ListImagesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListImagesInternalServerError:
		response := &ListImagesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteImageShort delete an image
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social.

This endpoint will delete an image that specified in the request parameter.

Default image is cannot be deleted and will throw error 422 (Unprocessable entity).
*/
func (a *Client) DeleteImageShort(params *DeleteImageParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteImageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteImageParams()
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
		ID:                 "DeleteImage",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteImageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteImageNoContent:
		response := &DeleteImageResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteImageBadRequest:
		response := &DeleteImageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteImageUnauthorized:
		response := &DeleteImageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteImageNotFound:
		response := &DeleteImageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteImageUnprocessableEntity:
		response := &DeleteImageResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteImageInternalServerError:
		response := &DeleteImageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetImageLimitShort ds image limit
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get ds image limit for specific namespace
*/
func (a *Client) GetImageLimitShort(params *GetImageLimitParams, authInfo runtime.ClientAuthInfoWriter) (*GetImageLimitResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetImageLimitParams()
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
		ID:                 "GetImageLimit",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/limit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetImageLimitReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetImageLimitOK:
		response := &GetImageLimitResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetImageLimitBadRequest:
		response := &GetImageLimitResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetImageLimitUnauthorized:
		response := &GetImageLimitResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetImageLimitInternalServerError:
		response := &GetImageLimitResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteImagePatchShort delete an image patch
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint will delete an image patch that specified in the request parameter
*/
func (a *Client) DeleteImagePatchShort(params *DeleteImagePatchParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteImagePatchResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteImagePatchParams()
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
		ID:                 "DeleteImagePatch",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/patches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteImagePatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteImagePatchNoContent:
		response := &DeleteImagePatchResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteImagePatchBadRequest:
		response := &DeleteImagePatchResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteImagePatchUnauthorized:
		response := &DeleteImagePatchResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteImagePatchNotFound:
		response := &DeleteImagePatchResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteImagePatchUnprocessableEntity:
		response := &DeleteImagePatchResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteImagePatchInternalServerError:
		response := &DeleteImagePatchResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetImageDetailShort ds image detail
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get specific version of dedicated servers images.
*/
func (a *Client) GetImageDetailShort(params *GetImageDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetImageDetailResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetImageDetailParams()
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
		ID:                 "GetImageDetail",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetImageDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetImageDetailOK:
		response := &GetImageDetailResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetImageDetailUnauthorized:
		response := &GetImageDetailResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetImageDetailNotFound:
		response := &GetImageDetailResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetImageDetailInternalServerError:
		response := &GetImageDetailResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetImagePatchesShort get all image patches by version
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get image patches by version.

Image Size unit is byte.
*/
func (a *Client) GetImagePatchesShort(params *GetImagePatchesParams, authInfo runtime.ClientAuthInfoWriter) (*GetImagePatchesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetImagePatchesParams()
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
		ID:                 "GetImagePatches",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetImagePatchesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetImagePatchesOK:
		response := &GetImagePatchesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetImagePatchesUnauthorized:
		response := &GetImagePatchesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetImagePatchesInternalServerError:
		response := &GetImagePatchesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetImagePatchDetailShort ds image patch detail
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get specific image patch version of dedicated servers version.
*/
func (a *Client) GetImagePatchDetailShort(params *GetImagePatchDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetImagePatchDetailResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetImagePatchDetailParams()
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
		ID:                 "GetImagePatchDetail",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches/{versionPatch}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetImagePatchDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetImagePatchDetailOK:
		response := &GetImagePatchDetailResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetImagePatchDetailUnauthorized:
		response := &GetImagePatchDetailResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetImagePatchDetailNotFound:
		response := &GetImagePatchDetailResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetImagePatchDetailInternalServerError:
		response := &GetImagePatchDetailResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRepositoryShort get repository for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a dedicated servers repository name in a namespace.
*/
func (a *Client) GetRepositoryShort(params *GetRepositoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetRepositoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRepositoryParams()
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
		ID:                 "GetRepository",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/repository",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRepositoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRepositoryOK:
		response := &GetRepositoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetRepositoryUnauthorized:
		response := &GetRepositoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetRepositoryNotFound:
		response := &GetRepositoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetRepositoryInternalServerError:
		response := &GetRepositoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateRepositoryShort create repository
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint will create image repository.

Sample repository:
{
"namespace":"testing",
"repository":"ds-testing-924623",
}
```
*/
func (a *Client) CreateRepositoryShort(params *CreateRepositoryParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRepositoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateRepositoryParams()
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
		ID:                 "CreateRepository",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/repository",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateRepositoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateRepositoryNoContent:
		response := &CreateRepositoryResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateRepositoryBadRequest:
		response := &CreateRepositoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRepositoryUnauthorized:
		response := &CreateRepositoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRepositoryInternalServerError:
		response := &CreateRepositoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListImagesClientShort list all ds images for client credential authorization type
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint lists all of dedicated servers images.

Parameter Offset and Count is Required
*/
func (a *Client) ListImagesClientShort(params *ListImagesClientParams, authInfo runtime.ClientAuthInfoWriter) (*ListImagesClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListImagesClientParams()
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
		ID:                 "ListImagesClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListImagesClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListImagesClientOK:
		response := &ListImagesClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListImagesClientBadRequest:
		response := &ListImagesClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListImagesClientUnauthorized:
		response := &ListImagesClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListImagesClientInternalServerError:
		response := &ListImagesClientResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImageLimitClientShort ds image limit for client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get DS image limit for specific namespace.This endpoint also give the non-persistent image which is used by any deployments
*/
func (a *Client) ImageLimitClientShort(params *ImageLimitClientParams, authInfo runtime.ClientAuthInfoWriter) (*ImageLimitClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageLimitClientParams()
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
		ID:                 "ImageLimitClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/images/limit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageLimitClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImageLimitClientOK:
		response := &ImageLimitClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ImageLimitClientBadRequest:
		response := &ImageLimitClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImageLimitClientUnauthorized:
		response := &ImageLimitClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImageLimitClientInternalServerError:
		response := &ImageLimitClientResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImageDetailClientShort ds image detail client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get specific version of dedicated servers images.
*/
func (a *Client) ImageDetailClientShort(params *ImageDetailClientParams, authInfo runtime.ClientAuthInfoWriter) (*ImageDetailClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImageDetailClientParams()
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
		ID:                 "ImageDetailClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/images/versions/{version}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImageDetailClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImageDetailClientOK:
		response := &ImageDetailClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ImageDetailClientUnauthorized:
		response := &ImageDetailClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImageDetailClientNotFound:
		response := &ImageDetailClientResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImageDetailClientInternalServerError:
		response := &ImageDetailClientResponse{}
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
