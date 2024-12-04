// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_content

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin content API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin content API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminUploadContentDirectShort(params *AdminUploadContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentDirectResponse, error)
	AdminUploadContentS3Short(params *AdminUploadContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentS3Response, error)
	SingleAdminUpdateContentS3Short(params *SingleAdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentS3Response, error)
	AdminSearchChannelSpecificContentShort(params *AdminSearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchChannelSpecificContentResponse, error)
	SingleAdminUpdateContentDirectShort(params *SingleAdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentDirectResponse, error)
	SingleAdminDeleteContentShort(params *SingleAdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteContentResponse, error)
	SingleAdminGetContentShort(params *SingleAdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetContentResponse, error)
	AdminGetContentBulkShort(params *AdminGetContentBulkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkResponse, error)
	AdminSearchContentShort(params *AdminSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchContentResponse, error)
	AdminGetContentBulkByShareCodesShort(params *AdminGetContentBulkByShareCodesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesResponse, error)
	AdminGetUserContentByShareCodeShort(params *AdminGetUserContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserContentByShareCodeResponse, error)
	AdminGetSpecificContentShort(params *AdminGetSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSpecificContentResponse, error)
	AdminDownloadContentPreviewShort(params *AdminDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDownloadContentPreviewResponse, error)
	RollbackContentVersionShort(params *RollbackContentVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionResponse, error)
	AdminUpdateScreenshotsShort(params *AdminUpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsResponse, error)
	AdminUploadContentScreenshotShort(params *AdminUploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotResponse, error)
	AdminDeleteContentScreenshotShort(params *AdminDeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotResponse, error)
	ListContentVersionsShort(params *ListContentVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsResponse, error)
	AdminUpdateContentS3ByShareCodeShort(params *AdminUpdateContentS3ByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3ByShareCodeResponse, error)
	AdminUpdateContentS3Short(params *AdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3Response, error)
	DeleteContentByShareCodeShort(params *DeleteContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentByShareCodeResponse, error)
	AdminUpdateContentDirectShort(params *AdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentDirectResponse, error)
	AdminDeleteContentShort(params *AdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentResponse, error)
	AdminGetContentShort(params *AdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentResponse, error)
	AdminHideUserContentShort(params *AdminHideUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminHideUserContentResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminUploadContentDirectShort upload content to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) AdminUploadContentDirectShort(params *AdminUploadContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentDirectResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadContentDirectParams()
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
		ID:                 "AdminUploadContentDirect",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadContentDirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUploadContentDirectCreated:
		response := &AdminUploadContentDirectResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUploadContentDirectBadRequest:
		response := &AdminUploadContentDirectResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentDirectUnauthorized:
		response := &AdminUploadContentDirectResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentDirectForbidden:
		response := &AdminUploadContentDirectResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentDirectConflict:
		response := &AdminUploadContentDirectResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentDirectInternalServerError:
		response := &AdminUploadContentDirectResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUploadContentS3Short upload content to s3 bucket
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

All request body are required except `preview`, `tags`, `contentType`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client when uploading the content using the S3 presigned URL. If not specified, it will use fileExtension value.

`shareCode` format should follows:

Length: 7
Available characters: abcdefhkpqrstuxyz




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminUploadContentS3Short(params *AdminUploadContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentS3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadContentS3Params()
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
		ID:                 "AdminUploadContentS3",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadContentS3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUploadContentS3Created:
		response := &AdminUploadContentS3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUploadContentS3BadRequest:
		response := &AdminUploadContentS3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentS3Unauthorized:
		response := &AdminUploadContentS3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentS3Forbidden:
		response := &AdminUploadContentS3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentS3Conflict:
		response := &AdminUploadContentS3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentS3InternalServerError:
		response := &AdminUploadContentS3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminUpdateContentS3Short update content to s3 bucket
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

If not specified, it will use `fileExtension` value.

To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

`shareCode` format should follows:

Max length: 7
Available characters: abcdefhkpqrstuxyz




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) SingleAdminUpdateContentS3Short(params *SingleAdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentS3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateContentS3Params()
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
		ID:                 "SingleAdminUpdateContentS3",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminUpdateContentS3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminUpdateContentS3OK:
		response := &SingleAdminUpdateContentS3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SingleAdminUpdateContentS3BadRequest:
		response := &SingleAdminUpdateContentS3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateContentS3Unauthorized:
		response := &SingleAdminUpdateContentS3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateContentS3Forbidden:
		response := &SingleAdminUpdateContentS3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateContentS3NotFound:
		response := &SingleAdminUpdateContentS3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateContentS3Conflict:
		response := &SingleAdminUpdateContentS3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateContentS3InternalServerError:
		response := &SingleAdminUpdateContentS3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSearchChannelSpecificContentShort search contents specific to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

`tags=red`

`tags=red&animal;`

`tags=red|animal`

`tags=red&animal;|wild`

`tags=red&(animal|wild)`

The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

Allowed character for operand: alphanumeric, underscore `_` and dash `-`

Allowed character for operator: `&` `|` `(` `)`

 Please note that value of tags query param should be URL encoded
*/
func (a *Client) AdminSearchChannelSpecificContentShort(params *AdminSearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchChannelSpecificContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchChannelSpecificContentParams()
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
		ID:                 "AdminSearchChannelSpecificContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchChannelSpecificContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSearchChannelSpecificContentOK:
		response := &AdminSearchChannelSpecificContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSearchChannelSpecificContentBadRequest:
		response := &AdminSearchChannelSpecificContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSearchChannelSpecificContentUnauthorized:
		response := &AdminSearchChannelSpecificContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSearchChannelSpecificContentInternalServerError:
		response := &AdminSearchChannelSpecificContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminUpdateContentDirectShort update content to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) SingleAdminUpdateContentDirectShort(params *SingleAdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentDirectResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateContentDirectParams()
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
		ID:                 "SingleAdminUpdateContentDirect",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminUpdateContentDirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminUpdateContentDirectOK:
		response := &SingleAdminUpdateContentDirectResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SingleAdminUpdateContentDirectBadRequest:
		response := &SingleAdminUpdateContentDirectResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateContentDirectUnauthorized:
		response := &SingleAdminUpdateContentDirectResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateContentDirectForbidden:
		response := &SingleAdminUpdateContentDirectResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateContentDirectNotFound:
		response := &SingleAdminUpdateContentDirectResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateContentDirectInternalServerError:
		response := &SingleAdminUpdateContentDirectResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminDeleteContentShort delete content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) SingleAdminDeleteContentShort(params *SingleAdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminDeleteContentParams()
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
		ID:                 "SingleAdminDeleteContent",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminDeleteContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminDeleteContentNoContent:
		response := &SingleAdminDeleteContentResponse{}

		response.IsSuccess = true

		return response, nil
	case *SingleAdminDeleteContentUnauthorized:
		response := &SingleAdminDeleteContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminDeleteContentNotFound:
		response := &SingleAdminDeleteContentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminDeleteContentInternalServerError:
		response := &SingleAdminDeleteContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminGetContentShort get user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) SingleAdminGetContentShort(params *SingleAdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetContentParams()
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
		ID:                 "SingleAdminGetContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetContentOK:
		response := &SingleAdminGetContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SingleAdminGetContentBadRequest:
		response := &SingleAdminGetContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminGetContentUnauthorized:
		response := &SingleAdminGetContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminGetContentInternalServerError:
		response := &SingleAdminGetContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentBulkShort bulk get content by content ids
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
Maximum contentId per request 100
*/
func (a *Client) AdminGetContentBulkShort(params *AdminGetContentBulkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentBulkParams()
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
		ID:                 "AdminGetContentBulk",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentBulkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentBulkOK:
		response := &AdminGetContentBulkResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetContentBulkBadRequest:
		response := &AdminGetContentBulkResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentBulkUnauthorized:
		response := &AdminGetContentBulkResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentBulkForbidden:
		response := &AdminGetContentBulkResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentBulkInternalServerError:
		response := &AdminGetContentBulkResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSearchContentShort search contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

`tags=red`

`tags=red&animal;`

`tags=red|animal`

`tags=red&animal;|wild`

`tags=red&(animal|wild)`

The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

Allowed character for operand: alphanumeric, underscore `_` and dash `-`

Allowed character for operator: `&` `|` `(` `)`

 Please note that value of tags query param should be URL encoded
*/
func (a *Client) AdminSearchContentShort(params *AdminSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchContentParams()
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
		ID:                 "AdminSearchContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSearchContentOK:
		response := &AdminSearchContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSearchContentBadRequest:
		response := &AdminSearchContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSearchContentUnauthorized:
		response := &AdminSearchContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSearchContentInternalServerError:
		response := &AdminSearchContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentBulkByShareCodesShort bulk get content by content sharecodes
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
Maximum sharecodes per request 100
*/
func (a *Client) AdminGetContentBulkByShareCodesShort(params *AdminGetContentBulkByShareCodesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentBulkByShareCodesParams()
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
		ID:                 "AdminGetContentBulkByShareCodes",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentBulkByShareCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentBulkByShareCodesOK:
		response := &AdminGetContentBulkByShareCodesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetContentBulkByShareCodesBadRequest:
		response := &AdminGetContentBulkByShareCodesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentBulkByShareCodesUnauthorized:
		response := &AdminGetContentBulkByShareCodesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentBulkByShareCodesForbidden:
		response := &AdminGetContentBulkByShareCodesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentBulkByShareCodesInternalServerError:
		response := &AdminGetContentBulkByShareCodesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserContentByShareCodeShort get content by sharecode
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
*/
func (a *Client) AdminGetUserContentByShareCodeShort(params *AdminGetUserContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserContentByShareCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserContentByShareCodeParams()
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
		ID:                 "AdminGetUserContentByShareCode",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserContentByShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserContentByShareCodeOK:
		response := &AdminGetUserContentByShareCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserContentByShareCodeUnauthorized:
		response := &AdminGetUserContentByShareCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserContentByShareCodeNotFound:
		response := &AdminGetUserContentByShareCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserContentByShareCodeInternalServerError:
		response := &AdminGetUserContentByShareCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetSpecificContentShort get user specific content
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
*/
func (a *Client) AdminGetSpecificContentShort(params *AdminGetSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSpecificContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetSpecificContentParams()
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
		ID:                 "AdminGetSpecificContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetSpecificContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetSpecificContentOK:
		response := &AdminGetSpecificContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetSpecificContentUnauthorized:
		response := &AdminGetSpecificContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetSpecificContentNotFound:
		response := &AdminGetSpecificContentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetSpecificContentInternalServerError:
		response := &AdminGetSpecificContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDownloadContentPreviewShort get content preview
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminDownloadContentPreviewShort(params *AdminDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDownloadContentPreviewResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDownloadContentPreviewParams()
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
		ID:                 "AdminDownloadContentPreview",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/preview",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDownloadContentPreviewReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDownloadContentPreviewOK:
		response := &AdminDownloadContentPreviewResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminDownloadContentPreviewUnauthorized:
		response := &AdminDownloadContentPreviewResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDownloadContentPreviewNotFound:
		response := &AdminDownloadContentPreviewResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDownloadContentPreviewInternalServerError:
		response := &AdminDownloadContentPreviewResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RollbackContentVersionShort rollback content's payload version
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]
Rollback content's payload to specified version.
*/
func (a *Client) RollbackContentVersionShort(params *RollbackContentVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRollbackContentVersionParams()
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
		ID:                 "RollbackContentVersion",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RollbackContentVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RollbackContentVersionOK:
		response := &RollbackContentVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RollbackContentVersionUnauthorized:
		response := &RollbackContentVersionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RollbackContentVersionNotFound:
		response := &RollbackContentVersionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RollbackContentVersionUnprocessableEntity:
		response := &RollbackContentVersionResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RollbackContentVersionInternalServerError:
		response := &RollbackContentVersionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateScreenshotsShort update screenshot of content
Maximum description length: 1024
*/
func (a *Client) AdminUpdateScreenshotsShort(params *AdminUpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateScreenshotsParams()
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
		ID:                 "AdminUpdateScreenshots",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateScreenshotsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateScreenshotsOK:
		response := &AdminUpdateScreenshotsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateScreenshotsBadRequest:
		response := &AdminUpdateScreenshotsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateScreenshotsUnauthorized:
		response := &AdminUpdateScreenshotsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateScreenshotsForbidden:
		response := &AdminUpdateScreenshotsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateScreenshotsNotFound:
		response := &AdminUpdateScreenshotsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateScreenshotsInternalServerError:
		response := &AdminUpdateScreenshotsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUploadContentScreenshotShort upload screenshots for official content
All request body are required except for *contentType* field.
*contentType* values is used to enforce the *Content-Type* header needed by the client to upload the content using the presigned URL.
If not specified, it will use *fileExtension* value.
Supported file extensions: *pjp*, *jpg*, *jpeg*, *jfif*, *bmp*, *png*.
Maximum description length: 1024
*/
func (a *Client) AdminUploadContentScreenshotShort(params *AdminUploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadContentScreenshotParams()
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
		ID:                 "AdminUploadContentScreenshot",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadContentScreenshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUploadContentScreenshotCreated:
		response := &AdminUploadContentScreenshotResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUploadContentScreenshotBadRequest:
		response := &AdminUploadContentScreenshotResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentScreenshotUnauthorized:
		response := &AdminUploadContentScreenshotResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentScreenshotForbidden:
		response := &AdminUploadContentScreenshotResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentScreenshotNotFound:
		response := &AdminUploadContentScreenshotResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentScreenshotInternalServerError:
		response := &AdminUploadContentScreenshotResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteContentScreenshotShort delete content's screenshot
Delete existing screenshot from a content
*/
func (a *Client) AdminDeleteContentScreenshotShort(params *AdminDeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteContentScreenshotParams()
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
		ID:                 "AdminDeleteContentScreenshot",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteContentScreenshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteContentScreenshotNoContent:
		response := &AdminDeleteContentScreenshotResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteContentScreenshotBadRequest:
		response := &AdminDeleteContentScreenshotResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteContentScreenshotUnauthorized:
		response := &AdminDeleteContentScreenshotResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteContentScreenshotForbidden:
		response := &AdminDeleteContentScreenshotResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteContentScreenshotNotFound:
		response := &AdminDeleteContentScreenshotResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteContentScreenshotInternalServerError:
		response := &AdminDeleteContentScreenshotResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListContentVersionsShort list content's payload versions
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]
Content's payload versions created when UGC is created or updated with `updateContentFile` set to true. Only list up to 10 latest versions.
*/
func (a *Client) ListContentVersionsShort(params *ListContentVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListContentVersionsParams()
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
		ID:                 "ListContentVersions",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListContentVersionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListContentVersionsOK:
		response := &ListContentVersionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListContentVersionsUnauthorized:
		response := &ListContentVersionsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListContentVersionsNotFound:
		response := &ListContentVersionsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListContentVersionsInternalServerError:
		response := &ListContentVersionsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateContentS3ByShareCodeShort update content to s3 bucket by share code
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

If not specified, it will use `fileExtension` value.

To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

`shareCode` format should follows:

Max length: 7
Available characters: abcdefhkpqrstuxyz




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminUpdateContentS3ByShareCodeShort(params *AdminUpdateContentS3ByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3ByShareCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentS3ByShareCodeParams()
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
		ID:                 "AdminUpdateContentS3ByShareCode",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentS3ByShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentS3ByShareCodeOK:
		response := &AdminUpdateContentS3ByShareCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateContentS3ByShareCodeBadRequest:
		response := &AdminUpdateContentS3ByShareCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentS3ByShareCodeUnauthorized:
		response := &AdminUpdateContentS3ByShareCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentS3ByShareCodeForbidden:
		response := &AdminUpdateContentS3ByShareCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentS3ByShareCodeNotFound:
		response := &AdminUpdateContentS3ByShareCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentS3ByShareCodeConflict:
		response := &AdminUpdateContentS3ByShareCodeResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentS3ByShareCodeInternalServerError:
		response := &AdminUpdateContentS3ByShareCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateContentS3Short update content to s3 bucket
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

If not specified, it will use `fileExtension` value.

To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

`shareCode` format should follows:

Max length: 7
Available characters: abcdefhkpqrstuxyz




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminUpdateContentS3Short(params *AdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentS3Params()
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
		ID:                 "AdminUpdateContentS3",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentS3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentS3OK:
		response := &AdminUpdateContentS3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateContentS3BadRequest:
		response := &AdminUpdateContentS3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentS3Unauthorized:
		response := &AdminUpdateContentS3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentS3Forbidden:
		response := &AdminUpdateContentS3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentS3NotFound:
		response := &AdminUpdateContentS3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentS3Conflict:
		response := &AdminUpdateContentS3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentS3InternalServerError:
		response := &AdminUpdateContentS3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteContentByShareCodeShort delete content by share code
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) DeleteContentByShareCodeShort(params *DeleteContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentByShareCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteContentByShareCodeParams()
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
		ID:                 "DeleteContentByShareCode",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteContentByShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteContentByShareCodeNoContent:
		response := &DeleteContentByShareCodeResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteContentByShareCodeUnauthorized:
		response := &DeleteContentByShareCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteContentByShareCodeNotFound:
		response := &DeleteContentByShareCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteContentByShareCodeInternalServerError:
		response := &DeleteContentByShareCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateContentDirectShort update content to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) AdminUpdateContentDirectShort(params *AdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentDirectResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentDirectParams()
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
		ID:                 "AdminUpdateContentDirect",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentDirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentDirectOK:
		response := &AdminUpdateContentDirectResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateContentDirectBadRequest:
		response := &AdminUpdateContentDirectResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentDirectUnauthorized:
		response := &AdminUpdateContentDirectResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentDirectForbidden:
		response := &AdminUpdateContentDirectResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentDirectNotFound:
		response := &AdminUpdateContentDirectResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentDirectInternalServerError:
		response := &AdminUpdateContentDirectResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteContentShort delete content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteContentShort(params *AdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteContentParams()
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
		ID:                 "AdminDeleteContent",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteContentNoContent:
		response := &AdminDeleteContentResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteContentUnauthorized:
		response := &AdminDeleteContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteContentNotFound:
		response := &AdminDeleteContentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteContentInternalServerError:
		response := &AdminDeleteContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentShort get user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetContentShort(params *AdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentParams()
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
		ID:                 "AdminGetContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentOK:
		response := &AdminGetContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetContentBadRequest:
		response := &AdminGetContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentUnauthorized:
		response := &AdminGetContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentInternalServerError:
		response := &AdminGetContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminHideUserContentShort hide/unhide user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminHideUserContentShort(params *AdminHideUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminHideUserContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminHideUserContentParams()
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
		ID:                 "AdminHideUserContent",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminHideUserContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminHideUserContentOK:
		response := &AdminHideUserContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminHideUserContentBadRequest:
		response := &AdminHideUserContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminHideUserContentUnauthorized:
		response := &AdminHideUserContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminHideUserContentNotFound:
		response := &AdminHideUserContentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminHideUserContentInternalServerError:
		response := &AdminHideUserContentResponse{}
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
