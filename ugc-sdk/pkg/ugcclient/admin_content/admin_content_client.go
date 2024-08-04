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
	AdminUploadContentDirectShort(params *AdminUploadContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentDirectCreated, error)
	AdminUploadContentS3Short(params *AdminUploadContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentS3Created, error)
	SingleAdminUpdateContentS3Short(params *SingleAdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentS3OK, error)
	AdminSearchChannelSpecificContentShort(params *AdminSearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchChannelSpecificContentOK, error)
	SingleAdminUpdateContentDirectShort(params *SingleAdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentDirectOK, error)
	SingleAdminDeleteContentShort(params *SingleAdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteContentNoContent, error)
	SingleAdminGetContentShort(params *SingleAdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetContentOK, error)
	AdminGetContentBulkShort(params *AdminGetContentBulkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkOK, error)
	AdminSearchContentShort(params *AdminSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchContentOK, error)
	AdminGetContentBulkByShareCodesShort(params *AdminGetContentBulkByShareCodesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesOK, error)
	AdminGetUserContentByShareCodeShort(params *AdminGetUserContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserContentByShareCodeOK, error)
	AdminGetSpecificContentShort(params *AdminGetSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSpecificContentOK, error)
	AdminDownloadContentPreviewShort(params *AdminDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDownloadContentPreviewOK, error)
	RollbackContentVersionShort(params *RollbackContentVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionOK, error)
	AdminUpdateScreenshotsShort(params *AdminUpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsOK, error)
	AdminUploadContentScreenshotShort(params *AdminUploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotCreated, error)
	AdminDeleteContentScreenshotShort(params *AdminDeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotNoContent, error)
	ListContentVersionsShort(params *ListContentVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsOK, error)
	AdminUpdateContentS3ByShareCodeShort(params *AdminUpdateContentS3ByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3ByShareCodeOK, error)
	AdminUpdateContentS3Short(params *AdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3OK, error)
	DeleteContentByShareCodeShort(params *DeleteContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentByShareCodeNoContent, error)
	AdminUpdateContentDirectShort(params *AdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentDirectOK, error)
	AdminDeleteContentShort(params *AdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentNoContent, error)
	AdminGetContentShort(params *AdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentOK, error)
	AdminHideUserContentShort(params *AdminHideUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminHideUserContentOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminUploadContentDirectShort upload content to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) AdminUploadContentDirectShort(params *AdminUploadContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentDirectCreated, error) {
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
		return v, nil
	case *AdminUploadContentDirectBadRequest:
		return nil, v
	case *AdminUploadContentDirectUnauthorized:
		return nil, v
	case *AdminUploadContentDirectForbidden:
		return nil, v
	case *AdminUploadContentDirectConflict:
		return nil, v
	case *AdminUploadContentDirectInternalServerError:
		return nil, v

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
func (a *Client) AdminUploadContentS3Short(params *AdminUploadContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentS3Created, error) {
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
		return v, nil
	case *AdminUploadContentS3BadRequest:
		return nil, v
	case *AdminUploadContentS3Unauthorized:
		return nil, v
	case *AdminUploadContentS3Forbidden:
		return nil, v
	case *AdminUploadContentS3Conflict:
		return nil, v
	case *AdminUploadContentS3InternalServerError:
		return nil, v

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
func (a *Client) SingleAdminUpdateContentS3Short(params *SingleAdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentS3OK, error) {
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
		return v, nil
	case *SingleAdminUpdateContentS3BadRequest:
		return nil, v
	case *SingleAdminUpdateContentS3Unauthorized:
		return nil, v
	case *SingleAdminUpdateContentS3Forbidden:
		return nil, v
	case *SingleAdminUpdateContentS3NotFound:
		return nil, v
	case *SingleAdminUpdateContentS3Conflict:
		return nil, v
	case *SingleAdminUpdateContentS3InternalServerError:
		return nil, v

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
func (a *Client) AdminSearchChannelSpecificContentShort(params *AdminSearchChannelSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchChannelSpecificContentOK, error) {
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
		return v, nil
	case *AdminSearchChannelSpecificContentBadRequest:
		return nil, v
	case *AdminSearchChannelSpecificContentUnauthorized:
		return nil, v
	case *AdminSearchChannelSpecificContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminUpdateContentDirectShort update content to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) SingleAdminUpdateContentDirectShort(params *SingleAdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateContentDirectOK, error) {
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
		return v, nil
	case *SingleAdminUpdateContentDirectBadRequest:
		return nil, v
	case *SingleAdminUpdateContentDirectUnauthorized:
		return nil, v
	case *SingleAdminUpdateContentDirectForbidden:
		return nil, v
	case *SingleAdminUpdateContentDirectNotFound:
		return nil, v
	case *SingleAdminUpdateContentDirectInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminDeleteContentShort delete content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) SingleAdminDeleteContentShort(params *SingleAdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteContentNoContent, error) {
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
		return v, nil
	case *SingleAdminDeleteContentUnauthorized:
		return nil, v
	case *SingleAdminDeleteContentNotFound:
		return nil, v
	case *SingleAdminDeleteContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminGetContentShort get user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) SingleAdminGetContentShort(params *SingleAdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetContentOK, error) {
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
		return v, nil
	case *SingleAdminGetContentBadRequest:
		return nil, v
	case *SingleAdminGetContentUnauthorized:
		return nil, v
	case *SingleAdminGetContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentBulkShort bulk get content by content ids
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
Maximum contentId per request 100
*/
func (a *Client) AdminGetContentBulkShort(params *AdminGetContentBulkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkOK, error) {
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
		return v, nil
	case *AdminGetContentBulkBadRequest:
		return nil, v
	case *AdminGetContentBulkUnauthorized:
		return nil, v
	case *AdminGetContentBulkForbidden:
		return nil, v
	case *AdminGetContentBulkInternalServerError:
		return nil, v

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
func (a *Client) AdminSearchContentShort(params *AdminSearchContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchContentOK, error) {
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
		return v, nil
	case *AdminSearchContentBadRequest:
		return nil, v
	case *AdminSearchContentUnauthorized:
		return nil, v
	case *AdminSearchContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentBulkByShareCodesShort bulk get content by content sharecodes
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
Maximum sharecodes per request 100
*/
func (a *Client) AdminGetContentBulkByShareCodesShort(params *AdminGetContentBulkByShareCodesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesOK, error) {
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
		return v, nil
	case *AdminGetContentBulkByShareCodesBadRequest:
		return nil, v
	case *AdminGetContentBulkByShareCodesUnauthorized:
		return nil, v
	case *AdminGetContentBulkByShareCodesForbidden:
		return nil, v
	case *AdminGetContentBulkByShareCodesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserContentByShareCodeShort get content by sharecode
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
*/
func (a *Client) AdminGetUserContentByShareCodeShort(params *AdminGetUserContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserContentByShareCodeOK, error) {
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
		return v, nil
	case *AdminGetUserContentByShareCodeUnauthorized:
		return nil, v
	case *AdminGetUserContentByShareCodeNotFound:
		return nil, v
	case *AdminGetUserContentByShareCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetSpecificContentShort get user specific content
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
*/
func (a *Client) AdminGetSpecificContentShort(params *AdminGetSpecificContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSpecificContentOK, error) {
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
		return v, nil
	case *AdminGetSpecificContentUnauthorized:
		return nil, v
	case *AdminGetSpecificContentNotFound:
		return nil, v
	case *AdminGetSpecificContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDownloadContentPreviewShort get content preview
Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

 NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content
*/
func (a *Client) AdminDownloadContentPreviewShort(params *AdminDownloadContentPreviewParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDownloadContentPreviewOK, error) {
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
		return v, nil
	case *AdminDownloadContentPreviewUnauthorized:
		return nil, v
	case *AdminDownloadContentPreviewNotFound:
		return nil, v
	case *AdminDownloadContentPreviewInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RollbackContentVersionShort rollback content's payload version
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]
Rollback content's payload to specified version.
*/
func (a *Client) RollbackContentVersionShort(params *RollbackContentVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionOK, error) {
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
		return v, nil
	case *RollbackContentVersionUnauthorized:
		return nil, v
	case *RollbackContentVersionNotFound:
		return nil, v
	case *RollbackContentVersionUnprocessableEntity:
		return nil, v
	case *RollbackContentVersionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateScreenshotsShort update screenshot of content
Maximum description length: 1024
*/
func (a *Client) AdminUpdateScreenshotsShort(params *AdminUpdateScreenshotsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsOK, error) {
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
		return v, nil
	case *AdminUpdateScreenshotsBadRequest:
		return nil, v
	case *AdminUpdateScreenshotsUnauthorized:
		return nil, v
	case *AdminUpdateScreenshotsForbidden:
		return nil, v
	case *AdminUpdateScreenshotsNotFound:
		return nil, v
	case *AdminUpdateScreenshotsInternalServerError:
		return nil, v

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
func (a *Client) AdminUploadContentScreenshotShort(params *AdminUploadContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotCreated, error) {
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
		return v, nil
	case *AdminUploadContentScreenshotBadRequest:
		return nil, v
	case *AdminUploadContentScreenshotUnauthorized:
		return nil, v
	case *AdminUploadContentScreenshotForbidden:
		return nil, v
	case *AdminUploadContentScreenshotNotFound:
		return nil, v
	case *AdminUploadContentScreenshotInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteContentScreenshotShort delete content's screenshot
Delete existing screenshot from a content
*/
func (a *Client) AdminDeleteContentScreenshotShort(params *AdminDeleteContentScreenshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotNoContent, error) {
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
		return v, nil
	case *AdminDeleteContentScreenshotBadRequest:
		return nil, v
	case *AdminDeleteContentScreenshotUnauthorized:
		return nil, v
	case *AdminDeleteContentScreenshotForbidden:
		return nil, v
	case *AdminDeleteContentScreenshotNotFound:
		return nil, v
	case *AdminDeleteContentScreenshotInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListContentVersionsShort list content's payload versions
Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]
Content's payload versions created when UGC is created or updated with `updateContentFile` set to true. Only list up to 10 latest versions.
*/
func (a *Client) ListContentVersionsShort(params *ListContentVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsOK, error) {
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
		return v, nil
	case *ListContentVersionsUnauthorized:
		return nil, v
	case *ListContentVersionsNotFound:
		return nil, v
	case *ListContentVersionsInternalServerError:
		return nil, v

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
func (a *Client) AdminUpdateContentS3ByShareCodeShort(params *AdminUpdateContentS3ByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3ByShareCodeOK, error) {
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
		return v, nil
	case *AdminUpdateContentS3ByShareCodeBadRequest:
		return nil, v
	case *AdminUpdateContentS3ByShareCodeUnauthorized:
		return nil, v
	case *AdminUpdateContentS3ByShareCodeForbidden:
		return nil, v
	case *AdminUpdateContentS3ByShareCodeNotFound:
		return nil, v
	case *AdminUpdateContentS3ByShareCodeConflict:
		return nil, v
	case *AdminUpdateContentS3ByShareCodeInternalServerError:
		return nil, v

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
func (a *Client) AdminUpdateContentS3Short(params *AdminUpdateContentS3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentS3OK, error) {
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
		return v, nil
	case *AdminUpdateContentS3BadRequest:
		return nil, v
	case *AdminUpdateContentS3Unauthorized:
		return nil, v
	case *AdminUpdateContentS3Forbidden:
		return nil, v
	case *AdminUpdateContentS3NotFound:
		return nil, v
	case *AdminUpdateContentS3Conflict:
		return nil, v
	case *AdminUpdateContentS3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteContentByShareCodeShort delete content by share code
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) DeleteContentByShareCodeShort(params *DeleteContentByShareCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentByShareCodeNoContent, error) {
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
		return v, nil
	case *DeleteContentByShareCodeUnauthorized:
		return nil, v
	case *DeleteContentByShareCodeNotFound:
		return nil, v
	case *DeleteContentByShareCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateContentDirectShort update content to a channel
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

All request body are required except preview, tags and customAttributes.
*/
func (a *Client) AdminUpdateContentDirectShort(params *AdminUpdateContentDirectParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentDirectOK, error) {
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
		return v, nil
	case *AdminUpdateContentDirectBadRequest:
		return nil, v
	case *AdminUpdateContentDirectUnauthorized:
		return nil, v
	case *AdminUpdateContentDirectForbidden:
		return nil, v
	case *AdminUpdateContentDirectNotFound:
		return nil, v
	case *AdminUpdateContentDirectInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteContentShort delete content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteContentShort(params *AdminDeleteContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentNoContent, error) {
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
		return v, nil
	case *AdminDeleteContentUnauthorized:
		return nil, v
	case *AdminDeleteContentNotFound:
		return nil, v
	case *AdminDeleteContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentShort get user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) AdminGetContentShort(params *AdminGetContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentOK, error) {
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
		return v, nil
	case *AdminGetContentBadRequest:
		return nil, v
	case *AdminGetContentUnauthorized:
		return nil, v
	case *AdminGetContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminHideUserContentShort hide/unhide user's generated contents
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
*/
func (a *Client) AdminHideUserContentShort(params *AdminHideUserContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminHideUserContentOK, error) {
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
		return v, nil
	case *AdminHideUserContentBadRequest:
		return nil, v
	case *AdminHideUserContentUnauthorized:
		return nil, v
	case *AdminHideUserContentNotFound:
		return nil, v
	case *AdminHideUserContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
