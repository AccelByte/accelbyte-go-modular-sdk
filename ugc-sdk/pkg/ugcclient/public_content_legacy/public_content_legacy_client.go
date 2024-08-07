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
	SearchChannelSpecificContentShort(params *SearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*SearchChannelSpecificContentOK, error)
	PublicSearchContentShort(params *PublicSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchContentOK, error)
	PublicGetContentBulkShort(params *PublicGetContentBulkParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentBulkOK, error)
	PublicGetContentBulkByShareCodesShort(params *PublicGetContentBulkByShareCodesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentBulkByShareCodesOK, error)
	PublicDownloadContentByShareCodeShort(params *PublicDownloadContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDownloadContentByShareCodeOK, error)
	PublicDownloadContentByContentIDShort(params *PublicDownloadContentByContentIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDownloadContentByContentIDOK, error)
	PublicDownloadContentPreviewShort(params *PublicDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDownloadContentPreviewOK, error)
	CreateContentDirectShort(params *CreateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*CreateContentDirectCreated, error)
	CreateContentS3Short(params *CreateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateContentS3Created, error)
	PublicUpdateContentByShareCodeShort(params *PublicUpdateContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentByShareCodeOK, error)
	UpdateContentS3Short(params *UpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentS3OK, error)
	PublicDeleteContentByShareCodeShort(params *PublicDeleteContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteContentByShareCodeNoContent, error)
	UpdateContentDirectShort(params *UpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentDirectOK, error)
	DeleteContentShort(params *DeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentNoContent, error)
	UpdateContentShareCodeShort(params *UpdateContentShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentShareCodeOK, error)
	PublicGetUserContentShort(params *PublicGetUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserContentOK, error)
	UpdateScreenshotsShort(params *UpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateScreenshotsOK, error)
	UploadContentScreenshotShort(params *UploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*UploadContentScreenshotCreated, error)
	DeleteContentScreenshotShort(params *DeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentScreenshotNoContent, error)

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
func (a *Client) SearchChannelSpecificContentShort(params *SearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*SearchChannelSpecificContentOK, error) {
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
		return v, nil
	case *SearchChannelSpecificContentBadRequest:
		return nil, v
	case *SearchChannelSpecificContentUnauthorized:
		return nil, v
	case *SearchChannelSpecificContentInternalServerError:
		return nil, v

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
func (a *Client) PublicSearchContentShort(params *PublicSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchContentOK, error) {
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
		return v, nil
	case *PublicSearchContentBadRequest:
		return nil, v
	case *PublicSearchContentUnauthorized:
		return nil, v
	case *PublicSearchContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetContentBulkShort get contents by content ids
Maximum requested Ids: 100.
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicGetContentBulkShort(params *PublicGetContentBulkParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentBulkOK, error) {
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
		return v, nil
	case *PublicGetContentBulkBadRequest:
		return nil, v
	case *PublicGetContentBulkUnauthorized:
		return nil, v
	case *PublicGetContentBulkInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetContentBulkByShareCodesShort bulk get content by content sharecodes
Require valid user token.
Maximum sharecodes per request 100
*/
func (a *Client) PublicGetContentBulkByShareCodesShort(params *PublicGetContentBulkByShareCodesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentBulkByShareCodesOK, error) {
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
		return v, nil
	case *PublicGetContentBulkByShareCodesBadRequest:
		return nil, v
	case *PublicGetContentBulkByShareCodesUnauthorized:
		return nil, v
	case *PublicGetContentBulkByShareCodesForbidden:
		return nil, v
	case *PublicGetContentBulkByShareCodesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDownloadContentByShareCodeShort get content by sharecode
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicDownloadContentByShareCodeShort(params *PublicDownloadContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDownloadContentByShareCodeOK, error) {
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
		return v, nil
	case *PublicDownloadContentByShareCodeUnauthorized:
		return nil, v
	case *PublicDownloadContentByShareCodeNotFound:
		return nil, v
	case *PublicDownloadContentByShareCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDownloadContentByContentIDShort get user specific content
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicDownloadContentByContentIDShort(params *PublicDownloadContentByContentIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDownloadContentByContentIDOK, error) {
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
		return v, nil
	case *PublicDownloadContentByContentIDUnauthorized:
		return nil, v
	case *PublicDownloadContentByContentIDNotFound:
		return nil, v
	case *PublicDownloadContentByContentIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDownloadContentPreviewShort get content preview


Requires valid user token

 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) PublicDownloadContentPreviewShort(params *PublicDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDownloadContentPreviewOK, error) {
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
		return v, nil
	case *PublicDownloadContentPreviewUnauthorized:
		return nil, v
	case *PublicDownloadContentPreviewNotFound:
		return nil, v
	case *PublicDownloadContentPreviewInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateContentDirectShort upload content to a channel
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) CreateContentDirectShort(params *CreateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*CreateContentDirectCreated, error) {
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
		return v, nil
	case *CreateContentDirectBadRequest:
		return nil, v
	case *CreateContentDirectUnauthorized:
		return nil, v
	case *CreateContentDirectForbidden:
		return nil, v
	case *CreateContentDirectInternalServerError:
		return nil, v

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
func (a *Client) CreateContentS3Short(params *CreateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateContentS3Created, error) {
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
		return v, nil
	case *CreateContentS3BadRequest:
		return nil, v
	case *CreateContentS3Unauthorized:
		return nil, v
	case *CreateContentS3Forbidden:
		return nil, v
	case *CreateContentS3InternalServerError:
		return nil, v

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
func (a *Client) PublicUpdateContentByShareCodeShort(params *PublicUpdateContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentByShareCodeOK, error) {
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
		return v, nil
	case *PublicUpdateContentByShareCodeBadRequest:
		return nil, v
	case *PublicUpdateContentByShareCodeUnauthorized:
		return nil, v
	case *PublicUpdateContentByShareCodeForbidden:
		return nil, v
	case *PublicUpdateContentByShareCodeNotFound:
		return nil, v
	case *PublicUpdateContentByShareCodeConflict:
		return nil, v
	case *PublicUpdateContentByShareCodeInternalServerError:
		return nil, v

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
func (a *Client) UpdateContentS3Short(params *UpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentS3OK, error) {
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
		return v, nil
	case *UpdateContentS3BadRequest:
		return nil, v
	case *UpdateContentS3Unauthorized:
		return nil, v
	case *UpdateContentS3Forbidden:
		return nil, v
	case *UpdateContentS3NotFound:
		return nil, v
	case *UpdateContentS3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeleteContentByShareCodeShort delete content by share code
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) PublicDeleteContentByShareCodeShort(params *PublicDeleteContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteContentByShareCodeNoContent, error) {
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
		return v, nil
	case *PublicDeleteContentByShareCodeUnauthorized:
		return nil, v
	case *PublicDeleteContentByShareCodeNotFound:
		return nil, v
	case *PublicDeleteContentByShareCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateContentDirectShort update content to a channel
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) UpdateContentDirectShort(params *UpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentDirectOK, error) {
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
		return v, nil
	case *UpdateContentDirectBadRequest:
		return nil, v
	case *UpdateContentDirectUnauthorized:
		return nil, v
	case *UpdateContentDirectForbidden:
		return nil, v
	case *UpdateContentDirectNotFound:
		return nil, v
	case *UpdateContentDirectInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteContentShort delete content
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) DeleteContentShort(params *DeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentNoContent, error) {
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
		return v, nil
	case *DeleteContentUnauthorized:
		return nil, v
	case *DeleteContentNotFound:
		return nil, v
	case *DeleteContentInternalServerError:
		return nil, v

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
func (a *Client) UpdateContentShareCodeShort(params *UpdateContentShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentShareCodeOK, error) {
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
		return v, nil
	case *UpdateContentShareCodeBadRequest:
		return nil, v
	case *UpdateContentShareCodeUnauthorized:
		return nil, v
	case *UpdateContentShareCodeForbidden:
		return nil, v
	case *UpdateContentShareCodeNotFound:
		return nil, v
	case *UpdateContentShareCodeConflict:
		return nil, v
	case *UpdateContentShareCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserContentShort get user's generated contents
Public user can access without token or if token specified, required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) PublicGetUserContentShort(params *PublicGetUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserContentOK, error) {
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
		return v, nil
	case *PublicGetUserContentBadRequest:
		return nil, v
	case *PublicGetUserContentUnauthorized:
		return nil, v
	case *PublicGetUserContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateScreenshotsShort update screenshot of content
Maximum description length: 1024
*/
func (a *Client) UpdateScreenshotsShort(params *UpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateScreenshotsOK, error) {
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
		return v, nil
	case *UpdateScreenshotsBadRequest:
		return nil, v
	case *UpdateScreenshotsUnauthorized:
		return nil, v
	case *UpdateScreenshotsForbidden:
		return nil, v
	case *UpdateScreenshotsNotFound:
		return nil, v
	case *UpdateScreenshotsInternalServerError:
		return nil, v

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
func (a *Client) UploadContentScreenshotShort(params *UploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*UploadContentScreenshotCreated, error) {
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
		return v, nil
	case *UploadContentScreenshotBadRequest:
		return nil, v
	case *UploadContentScreenshotUnauthorized:
		return nil, v
	case *UploadContentScreenshotForbidden:
		return nil, v
	case *UploadContentScreenshotNotFound:
		return nil, v
	case *UploadContentScreenshotInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteContentScreenshotShort delete content's screenshot
Delete existing screenshot from a content
*/
func (a *Client) DeleteContentScreenshotShort(params *DeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentScreenshotNoContent, error) {
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
		return v, nil
	case *DeleteContentScreenshotBadRequest:
		return nil, v
	case *DeleteContentScreenshotUnauthorized:
		return nil, v
	case *DeleteContentScreenshotForbidden:
		return nil, v
	case *DeleteContentScreenshotNotFound:
		return nil, v
	case *DeleteContentScreenshotInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
