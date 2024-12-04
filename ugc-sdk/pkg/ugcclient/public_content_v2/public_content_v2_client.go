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
	PublicGetContentByChannelIDV2Short(params *PublicGetContentByChannelIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByChannelIDV2Response, error)
	PublicListContentV2Short(params *PublicListContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListContentV2Response, error)
	PublicBulkGetContentByIDV2Short(params *PublicBulkGetContentByIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetContentByIDV2Response, error)
	PublicGetContentBulkByShareCodesV2Short(params *PublicGetContentBulkByShareCodesV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentBulkByShareCodesV2Response, error)
	PublicGetContentByShareCodeV2Short(params *PublicGetContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByShareCodeV2Response, error)
	PublicGetContentByIDV2Short(params *PublicGetContentByIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByIDV2Response, error)
	PublicCreateContentV2Short(params *PublicCreateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateContentV2Response, error)
	PublicUpdateContentByShareCodeV2Short(params *PublicUpdateContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentByShareCodeV2Response, error)
	PublicDeleteContentByShareCodeV2Short(params *PublicDeleteContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteContentByShareCodeV2Response, error)
	PublicDeleteContentV2Short(params *PublicDeleteContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteContentV2Response, error)
	PublicUpdateContentV2Short(params *PublicUpdateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentV2Response, error)
	PublicUpdateContentFileLocationShort(params *PublicUpdateContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentFileLocationResponse, error)
	UpdateContentShareCodeV2Short(params *UpdateContentShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentShareCodeV2Response, error)
	PublicGenerateContentUploadURLV2Short(params *PublicGenerateContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateContentUploadURLV2Response, error)
	PublicGetContentByUserIDV2Short(params *PublicGetContentByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByUserIDV2Response, error)
	UpdateScreenshotsV2Short(params *UpdateScreenshotsV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateScreenshotsV2Response, error)
	UploadContentScreenshotV2Short(params *UploadContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*UploadContentScreenshotV2Response, error)
	DeleteContentScreenshotV2Short(params *DeleteContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentScreenshotV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicGetContentByChannelIDV2Short list contents specific to a channel
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicGetContentByChannelIDV2Short(params *PublicGetContentByChannelIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByChannelIDV2Response, error) {
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
		response := &PublicGetContentByChannelIDV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetContentByChannelIDV2BadRequest:
		response := &PublicGetContentByChannelIDV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentByChannelIDV2Unauthorized:
		response := &PublicGetContentByChannelIDV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentByChannelIDV2InternalServerError:
		response := &PublicGetContentByChannelIDV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) PublicListContentV2Short(params *PublicListContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListContentV2Response, error) {
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
		response := &PublicListContentV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListContentV2BadRequest:
		response := &PublicListContentV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListContentV2Unauthorized:
		response := &PublicListContentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListContentV2InternalServerError:
		response := &PublicListContentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkGetContentByIDV2Short get contents by content ids
Maximum requested Ids: 100.
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicBulkGetContentByIDV2Short(params *PublicBulkGetContentByIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetContentByIDV2Response, error) {
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
		response := &PublicBulkGetContentByIDV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicBulkGetContentByIDV2BadRequest:
		response := &PublicBulkGetContentByIDV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkGetContentByIDV2Unauthorized:
		response := &PublicBulkGetContentByIDV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkGetContentByIDV2InternalServerError:
		response := &PublicBulkGetContentByIDV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetContentBulkByShareCodesV2Short bulk get content by content sharecodes
Require valid user token.
Maximum sharecodes per request 100
*/
func (a *Client) PublicGetContentBulkByShareCodesV2Short(params *PublicGetContentBulkByShareCodesV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentBulkByShareCodesV2Response, error) {
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
		response := &PublicGetContentBulkByShareCodesV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetContentBulkByShareCodesV2BadRequest:
		response := &PublicGetContentBulkByShareCodesV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentBulkByShareCodesV2Unauthorized:
		response := &PublicGetContentBulkByShareCodesV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentBulkByShareCodesV2Forbidden:
		response := &PublicGetContentBulkByShareCodesV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentBulkByShareCodesV2InternalServerError:
		response := &PublicGetContentBulkByShareCodesV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetContentByShareCodeV2Short get content by sharecode
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicGetContentByShareCodeV2Short(params *PublicGetContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByShareCodeV2Response, error) {
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
		response := &PublicGetContentByShareCodeV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetContentByShareCodeV2Unauthorized:
		response := &PublicGetContentByShareCodeV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentByShareCodeV2NotFound:
		response := &PublicGetContentByShareCodeV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentByShareCodeV2InternalServerError:
		response := &PublicGetContentByShareCodeV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetContentByIDV2Short get content by content id
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicGetContentByIDV2Short(params *PublicGetContentByIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByIDV2Response, error) {
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
		response := &PublicGetContentByIDV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetContentByIDV2Unauthorized:
		response := &PublicGetContentByIDV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentByIDV2NotFound:
		response := &PublicGetContentByIDV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentByIDV2InternalServerError:
		response := &PublicGetContentByIDV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateContentV2Short create a content
Create a new content
*/
func (a *Client) PublicCreateContentV2Short(params *PublicCreateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateContentV2Response, error) {
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
		response := &PublicCreateContentV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicCreateContentV2BadRequest:
		response := &PublicCreateContentV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateContentV2Unauthorized:
		response := &PublicCreateContentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateContentV2NotFound:
		response := &PublicCreateContentV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateContentV2InternalServerError:
		response := &PublicCreateContentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateContentByShareCodeV2Short update content to s3 bucket by share code
Update content by share code
*/
func (a *Client) PublicUpdateContentByShareCodeV2Short(params *PublicUpdateContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentByShareCodeV2Response, error) {
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
		response := &PublicUpdateContentByShareCodeV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateContentByShareCodeV2BadRequest:
		response := &PublicUpdateContentByShareCodeV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentByShareCodeV2Unauthorized:
		response := &PublicUpdateContentByShareCodeV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentByShareCodeV2Forbidden:
		response := &PublicUpdateContentByShareCodeV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentByShareCodeV2NotFound:
		response := &PublicUpdateContentByShareCodeV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentByShareCodeV2Conflict:
		response := &PublicUpdateContentByShareCodeV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentByShareCodeV2InternalServerError:
		response := &PublicUpdateContentByShareCodeV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeleteContentByShareCodeV2Short delete content by share code
Delete existing content by share code
*/
func (a *Client) PublicDeleteContentByShareCodeV2Short(params *PublicDeleteContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteContentByShareCodeV2Response, error) {
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
		response := &PublicDeleteContentByShareCodeV2Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicDeleteContentByShareCodeV2Unauthorized:
		response := &PublicDeleteContentByShareCodeV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeleteContentByShareCodeV2NotFound:
		response := &PublicDeleteContentByShareCodeV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeleteContentByShareCodeV2InternalServerError:
		response := &PublicDeleteContentByShareCodeV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeleteContentV2Short delete content
Delete existing content
*/
func (a *Client) PublicDeleteContentV2Short(params *PublicDeleteContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteContentV2Response, error) {
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
		response := &PublicDeleteContentV2Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicDeleteContentV2Unauthorized:
		response := &PublicDeleteContentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeleteContentV2NotFound:
		response := &PublicDeleteContentV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeleteContentV2InternalServerError:
		response := &PublicDeleteContentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateContentV2Short update content
Update existing content
*/
func (a *Client) PublicUpdateContentV2Short(params *PublicUpdateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentV2Response, error) {
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
		response := &PublicUpdateContentV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateContentV2BadRequest:
		response := &PublicUpdateContentV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentV2Unauthorized:
		response := &PublicUpdateContentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentV2Forbidden:
		response := &PublicUpdateContentV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentV2NotFound:
		response := &PublicUpdateContentV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentV2InternalServerError:
		response := &PublicUpdateContentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateContentFileLocationShort update content file location
This endpoint should be used after calling generate upload url endpoint to commit the changes
*/
func (a *Client) PublicUpdateContentFileLocationShort(params *PublicUpdateContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateContentFileLocationResponse, error) {
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
		response := &PublicUpdateContentFileLocationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateContentFileLocationBadRequest:
		response := &PublicUpdateContentFileLocationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentFileLocationUnauthorized:
		response := &PublicUpdateContentFileLocationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentFileLocationForbidden:
		response := &PublicUpdateContentFileLocationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentFileLocationNotFound:
		response := &PublicUpdateContentFileLocationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateContentFileLocationInternalServerError:
		response := &PublicUpdateContentFileLocationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) UpdateContentShareCodeV2Short(params *UpdateContentShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentShareCodeV2Response, error) {
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
		response := &UpdateContentShareCodeV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateContentShareCodeV2BadRequest:
		response := &UpdateContentShareCodeV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentShareCodeV2Unauthorized:
		response := &UpdateContentShareCodeV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentShareCodeV2Forbidden:
		response := &UpdateContentShareCodeV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentShareCodeV2NotFound:
		response := &UpdateContentShareCodeV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentShareCodeV2Conflict:
		response := &UpdateContentShareCodeV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentShareCodeV2InternalServerError:
		response := &UpdateContentShareCodeV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGenerateContentUploadURLV2Short generate content upload url
Generate content upload URL
*/
func (a *Client) PublicGenerateContentUploadURLV2Short(params *PublicGenerateContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateContentUploadURLV2Response, error) {
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
		response := &PublicGenerateContentUploadURLV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGenerateContentUploadURLV2BadRequest:
		response := &PublicGenerateContentUploadURLV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateContentUploadURLV2Unauthorized:
		response := &PublicGenerateContentUploadURLV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateContentUploadURLV2Forbidden:
		response := &PublicGenerateContentUploadURLV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateContentUploadURLV2NotFound:
		response := &PublicGenerateContentUploadURLV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateContentUploadURLV2InternalServerError:
		response := &PublicGenerateContentUploadURLV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetContentByUserIDV2Short get content by user id
Public user can access without token or if token specified, required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].
*/
func (a *Client) PublicGetContentByUserIDV2Short(params *PublicGetContentByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetContentByUserIDV2Response, error) {
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
		response := &PublicGetContentByUserIDV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetContentByUserIDV2BadRequest:
		response := &PublicGetContentByUserIDV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentByUserIDV2Unauthorized:
		response := &PublicGetContentByUserIDV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetContentByUserIDV2InternalServerError:
		response := &PublicGetContentByUserIDV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateScreenshotsV2Short update screenshot of content
Maximum description length: 1024
*/
func (a *Client) UpdateScreenshotsV2Short(params *UpdateScreenshotsV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateScreenshotsV2Response, error) {
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
		response := &UpdateScreenshotsV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateScreenshotsV2BadRequest:
		response := &UpdateScreenshotsV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateScreenshotsV2Unauthorized:
		response := &UpdateScreenshotsV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateScreenshotsV2Forbidden:
		response := &UpdateScreenshotsV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateScreenshotsV2NotFound:
		response := &UpdateScreenshotsV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateScreenshotsV2InternalServerError:
		response := &UpdateScreenshotsV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) UploadContentScreenshotV2Short(params *UploadContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*UploadContentScreenshotV2Response, error) {
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
		response := &UploadContentScreenshotV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UploadContentScreenshotV2BadRequest:
		response := &UploadContentScreenshotV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UploadContentScreenshotV2Unauthorized:
		response := &UploadContentScreenshotV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UploadContentScreenshotV2Forbidden:
		response := &UploadContentScreenshotV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UploadContentScreenshotV2InternalServerError:
		response := &UploadContentScreenshotV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteContentScreenshotV2Short delete screenshots content
Delete screenshot from a content
*/
func (a *Client) DeleteContentScreenshotV2Short(params *DeleteContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteContentScreenshotV2Response, error) {
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
		response := &DeleteContentScreenshotV2Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteContentScreenshotV2BadRequest:
		response := &DeleteContentScreenshotV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteContentScreenshotV2Unauthorized:
		response := &DeleteContentScreenshotV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteContentScreenshotV2Forbidden:
		response := &DeleteContentScreenshotV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteContentScreenshotV2NotFound:
		response := &DeleteContentScreenshotV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteContentScreenshotV2InternalServerError:
		response := &DeleteContentScreenshotV2Response{}
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
