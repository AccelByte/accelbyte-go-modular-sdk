// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_content_legacy

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public content legacy API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public content legacy API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	SearchChannelSpecificContentShort(params *SearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*SearchChannelSpecificContentResponse, error)
	PublicSearchContentShort(params *PublicSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchContentResponse, error)
	PublicGetContentBulkShort(params *PublicGetContentBulkParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentBulkResponse, error)
	PublicGetContentBulkByShareCodesShort(params *PublicGetContentBulkByShareCodesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentBulkByShareCodesResponse, error)
	PublicDownloadContentByShareCodeShort(params *PublicDownloadContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDownloadContentByShareCodeResponse, error)
	PublicDownloadContentByContentIDShort(params *PublicDownloadContentByContentIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDownloadContentByContentIDResponse, error)
	PublicDownloadContentPreviewShort(params *PublicDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDownloadContentPreviewResponse, error)
	CreateContentDirectShort(params *CreateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*CreateContentDirectResponse, error)
	CreateContentS3Short(params *CreateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateContentS3Response, error)
	PublicUpdateContentByShareCodeShort(params *PublicUpdateContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentByShareCodeResponse, error)
	UpdateContentS3Short(params *UpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentS3Response, error)
	PublicDeleteContentByShareCodeShort(params *PublicDeleteContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteContentByShareCodeResponse, error)
	UpdateContentDirectShort(params *UpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentDirectResponse, error)
	DeleteContentShort(params *DeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentResponse, error)
	UpdateContentShareCodeShort(params *UpdateContentShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentShareCodeResponse, error)
	PublicGetUserContentShort(params *PublicGetUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserContentResponse, error)
	UpdateScreenshotsShort(params *UpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateScreenshotsResponse, error)
	UploadContentScreenshotShort(params *UploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*UploadContentScreenshotResponse, error)
	DeleteContentScreenshotShort(params *DeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentScreenshotResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
SearchChannelSpecificContentShort search contents specific to a channel
Requires valid user token.

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
func (a *Client) SearchChannelSpecificContentShort(params *SearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*SearchChannelSpecificContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchChannelSpecificContentParams()
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
		ID:                 "SearchChannelSpecificContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchChannelSpecificContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SearchChannelSpecificContentOK:
		response := &SearchChannelSpecificContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SearchChannelSpecificContentBadRequest:
		response := &SearchChannelSpecificContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SearchChannelSpecificContentUnauthorized:
		response := &SearchChannelSpecificContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SearchChannelSpecificContentInternalServerError:
		response := &SearchChannelSpecificContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSearchContentShort search contents
Public user can access without token or if token specified, requires valid user token.

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
func (a *Client) PublicSearchContentShort(params *PublicSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSearchContentParams()
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
		ID:                 "PublicSearchContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSearchContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSearchContentOK:
		response := &PublicSearchContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicSearchContentBadRequest:
		response := &PublicSearchContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSearchContentUnauthorized:
		response := &PublicSearchContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSearchContentInternalServerError:
		response := &PublicSearchContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetContentBulkShort get contents by content ids
Maximum requested Ids: 100.
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicGetContentBulkShort(params *PublicGetContentBulkParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentBulkResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetContentBulkParams()
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
		ID:                 "PublicGetContentBulk",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetContentBulkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetContentBulkOK:
		response := &PublicGetContentBulkResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetContentBulkBadRequest:
		response := &PublicGetContentBulkResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentBulkUnauthorized:
		response := &PublicGetContentBulkResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentBulkInternalServerError:
		response := &PublicGetContentBulkResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetContentBulkByShareCodesShort bulk get content by content sharecodes
Require valid user token.
Maximum sharecodes per request 100
*/
func (a *Client) PublicGetContentBulkByShareCodesShort(params *PublicGetContentBulkByShareCodesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentBulkByShareCodesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetContentBulkByShareCodesParams()
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
		ID:                 "PublicGetContentBulkByShareCodes",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/sharecodes/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetContentBulkByShareCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetContentBulkByShareCodesOK:
		response := &PublicGetContentBulkByShareCodesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetContentBulkByShareCodesBadRequest:
		response := &PublicGetContentBulkByShareCodesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentBulkByShareCodesUnauthorized:
		response := &PublicGetContentBulkByShareCodesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentBulkByShareCodesForbidden:
		response := &PublicGetContentBulkByShareCodesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentBulkByShareCodesInternalServerError:
		response := &PublicGetContentBulkByShareCodesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDownloadContentByShareCodeShort get content by sharecode
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicDownloadContentByShareCodeShort(params *PublicDownloadContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDownloadContentByShareCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDownloadContentByShareCodeParams()
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
		ID:                 "PublicDownloadContentByShareCode",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDownloadContentByShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDownloadContentByShareCodeOK:
		response := &PublicDownloadContentByShareCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicDownloadContentByShareCodeUnauthorized:
		response := &PublicDownloadContentByShareCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDownloadContentByShareCodeNotFound:
		response := &PublicDownloadContentByShareCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDownloadContentByShareCodeInternalServerError:
		response := &PublicDownloadContentByShareCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDownloadContentByContentIDShort get user specific content
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicDownloadContentByContentIDShort(params *PublicDownloadContentByContentIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDownloadContentByContentIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDownloadContentByContentIDParams()
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
		ID:                 "PublicDownloadContentByContentID",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDownloadContentByContentIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDownloadContentByContentIDOK:
		response := &PublicDownloadContentByContentIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicDownloadContentByContentIDUnauthorized:
		response := &PublicDownloadContentByContentIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDownloadContentByContentIDNotFound:
		response := &PublicDownloadContentByContentIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDownloadContentByContentIDInternalServerError:
		response := &PublicDownloadContentByContentIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDownloadContentPreviewShort get content preview


Requires valid user token

 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) PublicDownloadContentPreviewShort(params *PublicDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDownloadContentPreviewResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDownloadContentPreviewParams()
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
		ID:                 "PublicDownloadContentPreview",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/{contentId}/preview",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDownloadContentPreviewReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDownloadContentPreviewOK:
		response := &PublicDownloadContentPreviewResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicDownloadContentPreviewUnauthorized:
		response := &PublicDownloadContentPreviewResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDownloadContentPreviewNotFound:
		response := &PublicDownloadContentPreviewResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDownloadContentPreviewInternalServerError:
		response := &PublicDownloadContentPreviewResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateContentDirectShort upload content to a channel
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) CreateContentDirectShort(params *CreateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*CreateContentDirectResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateContentDirectParams()
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
		ID:                 "CreateContentDirect",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateContentDirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateContentDirectCreated:
		response := &CreateContentDirectResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateContentDirectBadRequest:
		response := &CreateContentDirectResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateContentDirectUnauthorized:
		response := &CreateContentDirectResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateContentDirectForbidden:
		response := &CreateContentDirectResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateContentDirectInternalServerError:
		response := &CreateContentDirectResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateContentS3Short upload content to s3 bucket
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

All request body are required except payload, preview, tags, contentType and customAttributes.
contentType values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.
If not specified, it will use fileExtension value.



NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) CreateContentS3Short(params *CreateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateContentS3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateContentS3Params()
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
		ID:                 "CreateContentS3",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateContentS3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateContentS3Created:
		response := &CreateContentS3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateContentS3BadRequest:
		response := &CreateContentS3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateContentS3Unauthorized:
		response := &CreateContentS3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateContentS3Forbidden:
		response := &CreateContentS3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateContentS3InternalServerError:
		response := &CreateContentS3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateContentByShareCodeShort update content to s3 bucket by share code
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

`contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

If not specified, it will use `fileExtension` value.

To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.




 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) PublicUpdateContentByShareCodeShort(params *PublicUpdateContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentByShareCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateContentByShareCodeParams()
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
		ID:                 "PublicUpdateContentByShareCode",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateContentByShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateContentByShareCodeOK:
		response := &PublicUpdateContentByShareCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateContentByShareCodeBadRequest:
		response := &PublicUpdateContentByShareCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentByShareCodeUnauthorized:
		response := &PublicUpdateContentByShareCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentByShareCodeForbidden:
		response := &PublicUpdateContentByShareCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentByShareCodeNotFound:
		response := &PublicUpdateContentByShareCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentByShareCodeConflict:
		response := &PublicUpdateContentByShareCodeResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentByShareCodeInternalServerError:
		response := &PublicUpdateContentByShareCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateContentS3Short update content to s3 bucket
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
All request body are required except payload, preview, tags, contentType, updateContentFile and customAttributes.
contentType values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.
If not specified, it will use fileExtension value.
To update content's file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.



NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) UpdateContentS3Short(params *UpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentS3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateContentS3Params()
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
		ID:                 "UpdateContentS3",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateContentS3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateContentS3OK:
		response := &UpdateContentS3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateContentS3BadRequest:
		response := &UpdateContentS3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentS3Unauthorized:
		response := &UpdateContentS3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentS3Forbidden:
		response := &UpdateContentS3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentS3NotFound:
		response := &UpdateContentS3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentS3InternalServerError:
		response := &UpdateContentS3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeleteContentByShareCodeShort delete content by share code
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) PublicDeleteContentByShareCodeShort(params *PublicDeleteContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteContentByShareCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeleteContentByShareCodeParams()
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
		ID:                 "PublicDeleteContentByShareCode",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeleteContentByShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteContentByShareCodeNoContent:
		response := &PublicDeleteContentByShareCodeResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicDeleteContentByShareCodeUnauthorized:
		response := &PublicDeleteContentByShareCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeleteContentByShareCodeNotFound:
		response := &PublicDeleteContentByShareCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeleteContentByShareCodeInternalServerError:
		response := &PublicDeleteContentByShareCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateContentDirectShort update content to a channel
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) UpdateContentDirectShort(params *UpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentDirectResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateContentDirectParams()
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
		ID:                 "UpdateContentDirect",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateContentDirectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateContentDirectOK:
		response := &UpdateContentDirectResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateContentDirectBadRequest:
		response := &UpdateContentDirectResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentDirectUnauthorized:
		response := &UpdateContentDirectResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentDirectForbidden:
		response := &UpdateContentDirectResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentDirectNotFound:
		response := &UpdateContentDirectResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentDirectInternalServerError:
		response := &UpdateContentDirectResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteContentShort delete content
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) DeleteContentShort(params *DeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteContentParams()
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
		ID:                 "DeleteContent",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteContentNoContent:
		response := &DeleteContentResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteContentUnauthorized:
		response := &DeleteContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteContentNotFound:
		response := &DeleteContentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteContentInternalServerError:
		response := &DeleteContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateContentShareCodeShort update content sharecode
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT:SHARECODE [UPDATE].

This endpoint is used to modify the shareCode of a content. However, this operation is restricted by default and requires the above permission to be granted to the User role.

`shareCode` format should follows:
Max length: 7
Available characters: abcdefhkpqrstuxyz
*/
func (a *Client) UpdateContentShareCodeShort(params *UpdateContentShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentShareCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateContentShareCodeParams()
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
		ID:                 "UpdateContentShareCode",
		Method:             "PATCH",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateContentShareCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateContentShareCodeOK:
		response := &UpdateContentShareCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateContentShareCodeBadRequest:
		response := &UpdateContentShareCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentShareCodeUnauthorized:
		response := &UpdateContentShareCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentShareCodeForbidden:
		response := &UpdateContentShareCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentShareCodeNotFound:
		response := &UpdateContentShareCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentShareCodeConflict:
		response := &UpdateContentShareCodeResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentShareCodeInternalServerError:
		response := &UpdateContentShareCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserContentShort get user's generated contents
Public user can access without token or if token specified, required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) PublicGetUserContentShort(params *PublicGetUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserContentParams()
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
		ID:                 "PublicGetUserContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserContentOK:
		response := &PublicGetUserContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserContentBadRequest:
		response := &PublicGetUserContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserContentUnauthorized:
		response := &PublicGetUserContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserContentInternalServerError:
		response := &PublicGetUserContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateScreenshotsShort update screenshot of content
Maximum description length: 1024
*/
func (a *Client) UpdateScreenshotsShort(params *UpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateScreenshotsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateScreenshotsParams()
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
		ID:                 "UpdateScreenshots",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateScreenshotsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateScreenshotsOK:
		response := &UpdateScreenshotsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateScreenshotsBadRequest:
		response := &UpdateScreenshotsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateScreenshotsUnauthorized:
		response := &UpdateScreenshotsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateScreenshotsForbidden:
		response := &UpdateScreenshotsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateScreenshotsNotFound:
		response := &UpdateScreenshotsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateScreenshotsInternalServerError:
		response := &UpdateScreenshotsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UploadContentScreenshotShort upload screenshots for content
All request body are required except for *contentType* field.
*contentType* values is used to enforce the *Content-Type* header needed by the client to upload the content using the presigned URL.
If not specified, it will use *fileExtension* value.
Supported file extensions: *pjp*, *jpg*, *jpeg*, *jfif*, *bmp*, *png*.
Maximum description length: 1024
*/
func (a *Client) UploadContentScreenshotShort(params *UploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*UploadContentScreenshotResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadContentScreenshotParams()
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
		ID:                 "UploadContentScreenshot",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadContentScreenshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadContentScreenshotCreated:
		response := &UploadContentScreenshotResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UploadContentScreenshotBadRequest:
		response := &UploadContentScreenshotResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UploadContentScreenshotUnauthorized:
		response := &UploadContentScreenshotResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UploadContentScreenshotForbidden:
		response := &UploadContentScreenshotResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UploadContentScreenshotNotFound:
		response := &UploadContentScreenshotResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UploadContentScreenshotInternalServerError:
		response := &UploadContentScreenshotResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteContentScreenshotShort delete content's screenshot
Delete existing screenshot from a content
*/
func (a *Client) DeleteContentScreenshotShort(params *DeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentScreenshotResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteContentScreenshotParams()
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
		ID:                 "DeleteContentScreenshot",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteContentScreenshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteContentScreenshotNoContent:
		response := &DeleteContentScreenshotResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteContentScreenshotBadRequest:
		response := &DeleteContentScreenshotResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteContentScreenshotUnauthorized:
		response := &DeleteContentScreenshotResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteContentScreenshotForbidden:
		response := &DeleteContentScreenshotResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteContentScreenshotNotFound:
		response := &DeleteContentScreenshotResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteContentScreenshotInternalServerError:
		response := &DeleteContentScreenshotResponse{}
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
