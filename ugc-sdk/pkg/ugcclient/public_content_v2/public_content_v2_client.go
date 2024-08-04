// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_content_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public content v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public content v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicGetContentByChannelIDV2Short(params *PublicGetContentByChannelIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByChannelIDV2OK, error)
	PublicListContentV2Short(params *PublicListContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListContentV2OK, error)
	PublicBulkGetContentByIDV2Short(params *PublicBulkGetContentByIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetContentByIDV2OK, error)
	PublicGetContentBulkByShareCodesV2Short(params *PublicGetContentBulkByShareCodesV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentBulkByShareCodesV2OK, error)
	PublicGetContentByShareCodeV2Short(params *PublicGetContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByShareCodeV2OK, error)
	PublicGetContentByIDV2Short(params *PublicGetContentByIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByIDV2OK, error)
	PublicCreateContentV2Short(params *PublicCreateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateContentV2Created, error)
	PublicUpdateContentByShareCodeV2Short(params *PublicUpdateContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentByShareCodeV2OK, error)
	PublicDeleteContentByShareCodeV2Short(params *PublicDeleteContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteContentByShareCodeV2NoContent, error)
	PublicDeleteContentV2Short(params *PublicDeleteContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteContentV2NoContent, error)
	PublicUpdateContentV2Short(params *PublicUpdateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentV2OK, error)
	PublicUpdateContentFileLocationShort(params *PublicUpdateContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentFileLocationOK, error)
	UpdateContentShareCodeV2Short(params *UpdateContentShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentShareCodeV2OK, error)
	PublicGenerateContentUploadURLV2Short(params *PublicGenerateContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateContentUploadURLV2OK, error)
	PublicGetContentByUserIDV2Short(params *PublicGetContentByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByUserIDV2OK, error)
	UpdateScreenshotsV2Short(params *UpdateScreenshotsV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateScreenshotsV2OK, error)
	UploadContentScreenshotV2Short(params *UploadContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*UploadContentScreenshotV2Created, error)
	DeleteContentScreenshotV2Short(params *DeleteContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentScreenshotV2NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicGetContentByChannelIDV2Short list contents specific to a channel
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicGetContentByChannelIDV2Short(params *PublicGetContentByChannelIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByChannelIDV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetContentByChannelIDV2Params()
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
		ID:                 "PublicGetContentByChannelIDV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetContentByChannelIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetContentByChannelIDV2OK:
		return v, nil
	case *PublicGetContentByChannelIDV2BadRequest:
		return nil, v
	case *PublicGetContentByChannelIDV2Unauthorized:
		return nil, v
	case *PublicGetContentByChannelIDV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListContentV2Short list contents
For advance tag filtering supports & as AND operator and | as OR operator and parentheses ( ) for priority. e.g:


*tags=red*
*tags=red&animal;*
*tags=red|animal*
*tags=red&animal;|wild*
*tags=red&(animal|wild)*

The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

Allowed character for operand: alphanumeric, underscore _ and dash -

Allowed character for operator: & | ( )


**Please note that value of tags query param should be URL encoded**
*/
func (a *Client) PublicListContentV2Short(params *PublicListContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListContentV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListContentV2Params()
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
		ID:                 "PublicListContentV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListContentV2OK:
		return v, nil
	case *PublicListContentV2BadRequest:
		return nil, v
	case *PublicListContentV2Unauthorized:
		return nil, v
	case *PublicListContentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkGetContentByIDV2Short get contents by content ids
Maximum requested Ids: 100.
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicBulkGetContentByIDV2Short(params *PublicBulkGetContentByIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetContentByIDV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkGetContentByIDV2Params()
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
		ID:                 "PublicBulkGetContentByIDV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkGetContentByIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkGetContentByIDV2OK:
		return v, nil
	case *PublicBulkGetContentByIDV2BadRequest:
		return nil, v
	case *PublicBulkGetContentByIDV2Unauthorized:
		return nil, v
	case *PublicBulkGetContentByIDV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetContentBulkByShareCodesV2Short bulk get content by content sharecodes
Require valid user token.
Maximum sharecodes per request 100
*/
func (a *Client) PublicGetContentBulkByShareCodesV2Short(params *PublicGetContentBulkByShareCodesV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentBulkByShareCodesV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetContentBulkByShareCodesV2Params()
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
		ID:                 "PublicGetContentBulkByShareCodesV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents/sharecodes/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetContentBulkByShareCodesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetContentBulkByShareCodesV2OK:
		return v, nil
	case *PublicGetContentBulkByShareCodesV2BadRequest:
		return nil, v
	case *PublicGetContentBulkByShareCodesV2Unauthorized:
		return nil, v
	case *PublicGetContentBulkByShareCodesV2Forbidden:
		return nil, v
	case *PublicGetContentBulkByShareCodesV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetContentByShareCodeV2Short get content by sharecode
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicGetContentByShareCodeV2Short(params *PublicGetContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByShareCodeV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetContentByShareCodeV2Params()
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
		ID:                 "PublicGetContentByShareCodeV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetContentByShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetContentByShareCodeV2OK:
		return v, nil
	case *PublicGetContentByShareCodeV2Unauthorized:
		return nil, v
	case *PublicGetContentByShareCodeV2NotFound:
		return nil, v
	case *PublicGetContentByShareCodeV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetContentByIDV2Short get content by content id
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicGetContentByIDV2Short(params *PublicGetContentByIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByIDV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetContentByIDV2Params()
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
		ID:                 "PublicGetContentByIDV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetContentByIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetContentByIDV2OK:
		return v, nil
	case *PublicGetContentByIDV2Unauthorized:
		return nil, v
	case *PublicGetContentByIDV2NotFound:
		return nil, v
	case *PublicGetContentByIDV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateContentV2Short create a content
Create a new content
*/
func (a *Client) PublicCreateContentV2Short(params *PublicCreateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateContentV2Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateContentV2Params()
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
		ID:                 "PublicCreateContentV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateContentV2Created:
		return v, nil
	case *PublicCreateContentV2BadRequest:
		return nil, v
	case *PublicCreateContentV2Unauthorized:
		return nil, v
	case *PublicCreateContentV2NotFound:
		return nil, v
	case *PublicCreateContentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateContentByShareCodeV2Short update content to s3 bucket by share code
Update content by share code
*/
func (a *Client) PublicUpdateContentByShareCodeV2Short(params *PublicUpdateContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentByShareCodeV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateContentByShareCodeV2Params()
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
		ID:                 "PublicUpdateContentByShareCodeV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateContentByShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateContentByShareCodeV2OK:
		return v, nil
	case *PublicUpdateContentByShareCodeV2BadRequest:
		return nil, v
	case *PublicUpdateContentByShareCodeV2Unauthorized:
		return nil, v
	case *PublicUpdateContentByShareCodeV2Forbidden:
		return nil, v
	case *PublicUpdateContentByShareCodeV2NotFound:
		return nil, v
	case *PublicUpdateContentByShareCodeV2Conflict:
		return nil, v
	case *PublicUpdateContentByShareCodeV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeleteContentByShareCodeV2Short delete content by share code
Delete existing content by share code
*/
func (a *Client) PublicDeleteContentByShareCodeV2Short(params *PublicDeleteContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteContentByShareCodeV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeleteContentByShareCodeV2Params()
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
		ID:                 "PublicDeleteContentByShareCodeV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeleteContentByShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteContentByShareCodeV2NoContent:
		return v, nil
	case *PublicDeleteContentByShareCodeV2Unauthorized:
		return nil, v
	case *PublicDeleteContentByShareCodeV2NotFound:
		return nil, v
	case *PublicDeleteContentByShareCodeV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeleteContentV2Short delete content
Delete existing content
*/
func (a *Client) PublicDeleteContentV2Short(params *PublicDeleteContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteContentV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeleteContentV2Params()
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
		ID:                 "PublicDeleteContentV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeleteContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteContentV2NoContent:
		return v, nil
	case *PublicDeleteContentV2Unauthorized:
		return nil, v
	case *PublicDeleteContentV2NotFound:
		return nil, v
	case *PublicDeleteContentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateContentV2Short update content
Update existing content
*/
func (a *Client) PublicUpdateContentV2Short(params *PublicUpdateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateContentV2Params()
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
		ID:                 "PublicUpdateContentV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateContentV2OK:
		return v, nil
	case *PublicUpdateContentV2BadRequest:
		return nil, v
	case *PublicUpdateContentV2Unauthorized:
		return nil, v
	case *PublicUpdateContentV2Forbidden:
		return nil, v
	case *PublicUpdateContentV2NotFound:
		return nil, v
	case *PublicUpdateContentV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateContentFileLocationShort update content file location
This endpoint should be used after calling generate upload url endpoint to commit the changes
*/
func (a *Client) PublicUpdateContentFileLocationShort(params *PublicUpdateContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentFileLocationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateContentFileLocationParams()
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
		ID:                 "PublicUpdateContentFileLocation",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateContentFileLocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateContentFileLocationOK:
		return v, nil
	case *PublicUpdateContentFileLocationBadRequest:
		return nil, v
	case *PublicUpdateContentFileLocationUnauthorized:
		return nil, v
	case *PublicUpdateContentFileLocationForbidden:
		return nil, v
	case *PublicUpdateContentFileLocationNotFound:
		return nil, v
	case *PublicUpdateContentFileLocationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateContentShareCodeV2Short update content share code
This endpoint is used to modify the shareCode of a content. However, this operation is restricted by default and requires the above permission to be granted to the User role.

`shareCode` format should follows:
Max length: 7
Available characters: abcdefhkpqrstuxyz
*/
func (a *Client) UpdateContentShareCodeV2Short(params *UpdateContentShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentShareCodeV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateContentShareCodeV2Params()
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
		ID:                 "UpdateContentShareCodeV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateContentShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateContentShareCodeV2OK:
		return v, nil
	case *UpdateContentShareCodeV2BadRequest:
		return nil, v
	case *UpdateContentShareCodeV2Unauthorized:
		return nil, v
	case *UpdateContentShareCodeV2Forbidden:
		return nil, v
	case *UpdateContentShareCodeV2NotFound:
		return nil, v
	case *UpdateContentShareCodeV2Conflict:
		return nil, v
	case *UpdateContentShareCodeV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGenerateContentUploadURLV2Short generate content upload url
Generate content upload URL
*/
func (a *Client) PublicGenerateContentUploadURLV2Short(params *PublicGenerateContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateContentUploadURLV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGenerateContentUploadURLV2Params()
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
		ID:                 "PublicGenerateContentUploadURLV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGenerateContentUploadURLV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGenerateContentUploadURLV2OK:
		return v, nil
	case *PublicGenerateContentUploadURLV2BadRequest:
		return nil, v
	case *PublicGenerateContentUploadURLV2Unauthorized:
		return nil, v
	case *PublicGenerateContentUploadURLV2Forbidden:
		return nil, v
	case *PublicGenerateContentUploadURLV2NotFound:
		return nil, v
	case *PublicGenerateContentUploadURLV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetContentByUserIDV2Short get content by user id
Public user can access without token or if token specified, required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) PublicGetContentByUserIDV2Short(params *PublicGetContentByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByUserIDV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetContentByUserIDV2Params()
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
		ID:                 "PublicGetContentByUserIDV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetContentByUserIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetContentByUserIDV2OK:
		return v, nil
	case *PublicGetContentByUserIDV2BadRequest:
		return nil, v
	case *PublicGetContentByUserIDV2Unauthorized:
		return nil, v
	case *PublicGetContentByUserIDV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateScreenshotsV2Short update screenshot of content
Maximum description length: 1024
*/
func (a *Client) UpdateScreenshotsV2Short(params *UpdateScreenshotsV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateScreenshotsV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateScreenshotsV2Params()
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
		ID:                 "UpdateScreenshotsV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateScreenshotsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateScreenshotsV2OK:
		return v, nil
	case *UpdateScreenshotsV2BadRequest:
		return nil, v
	case *UpdateScreenshotsV2Unauthorized:
		return nil, v
	case *UpdateScreenshotsV2Forbidden:
		return nil, v
	case *UpdateScreenshotsV2NotFound:
		return nil, v
	case *UpdateScreenshotsV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UploadContentScreenshotV2Short upload screenshots for content
This endpoint used to request upload URL from content's screenshot.
If *contentType* is not specified, it will use *fileExtension* value.
Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.
Maximum description length: 1024
*/
func (a *Client) UploadContentScreenshotV2Short(params *UploadContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*UploadContentScreenshotV2Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadContentScreenshotV2Params()
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
		ID:                 "UploadContentScreenshotV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadContentScreenshotV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadContentScreenshotV2Created:
		return v, nil
	case *UploadContentScreenshotV2BadRequest:
		return nil, v
	case *UploadContentScreenshotV2Unauthorized:
		return nil, v
	case *UploadContentScreenshotV2Forbidden:
		return nil, v
	case *UploadContentScreenshotV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteContentScreenshotV2Short delete screenshots content
Delete screenshot from a content
*/
func (a *Client) DeleteContentScreenshotV2Short(params *DeleteContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentScreenshotV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteContentScreenshotV2Params()
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
		ID:                 "DeleteContentScreenshotV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteContentScreenshotV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteContentScreenshotV2NoContent:
		return v, nil
	case *DeleteContentScreenshotV2BadRequest:
		return nil, v
	case *DeleteContentScreenshotV2Unauthorized:
		return nil, v
	case *DeleteContentScreenshotV2Forbidden:
		return nil, v
	case *DeleteContentScreenshotV2NotFound:
		return nil, v
	case *DeleteContentScreenshotV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
