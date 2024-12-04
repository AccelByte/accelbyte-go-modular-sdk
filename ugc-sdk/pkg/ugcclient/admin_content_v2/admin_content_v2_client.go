// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_content_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin content v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin content v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetContentByChannelIDV2Short(params *AdminGetContentByChannelIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByChannelIDV2Response, error)
	AdminCreateContentV2Short(params *AdminCreateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateContentV2Response, error)
	AdminDeleteOfficialContentV2Short(params *AdminDeleteOfficialContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteOfficialContentV2Response, error)
	AdminUpdateOfficialContentV2Short(params *AdminUpdateOfficialContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateOfficialContentV2Response, error)
	AdminCopyContentShort(params *AdminCopyContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCopyContentResponse, error)
	AdminUpdateOfficialContentFileLocationShort(params *AdminUpdateOfficialContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateOfficialContentFileLocationResponse, error)
	AdminGenerateOfficialContentUploadURLV2Short(params *AdminGenerateOfficialContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateOfficialContentUploadURLV2Response, error)
	AdminListContentV2Short(params *AdminListContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListContentV2Response, error)
	AdminBulkGetContentByIDsV2Short(params *AdminBulkGetContentByIDsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetContentByIDsV2Response, error)
	AdminGetContentBulkByShareCodesV2Short(params *AdminGetContentBulkByShareCodesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesV2Response, error)
	AdminGetContentByShareCodeV2Short(params *AdminGetContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByShareCodeV2Response, error)
	AdminGetContentByContentIDV2Short(params *AdminGetContentByContentIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByContentIDV2Response, error)
	RollbackContentVersionV2Short(params *RollbackContentVersionV2Params, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionV2Response, error)
	AdminUpdateScreenshotsV2Short(params *AdminUpdateScreenshotsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsV2Response, error)
	AdminUploadContentScreenshotV2Short(params *AdminUploadContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotV2Response, error)
	AdminDeleteContentScreenshotV2Short(params *AdminDeleteContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotV2Response, error)
	ListContentVersionsV2Short(params *ListContentVersionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsV2Response, error)
	AdminUpdateContentByShareCodeV2Short(params *AdminUpdateContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentByShareCodeV2Response, error)
	AdminDeleteContentByShareCodeV2Short(params *AdminDeleteContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentByShareCodeV2Response, error)
	AdminDeleteUserContentV2Short(params *AdminDeleteUserContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserContentV2Response, error)
	AdminUpdateUserContentV2Short(params *AdminUpdateUserContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserContentV2Response, error)
	AdminUpdateUserContentFileLocationShort(params *AdminUpdateUserContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserContentFileLocationResponse, error)
	AdminGenerateUserContentUploadURLV2Short(params *AdminGenerateUserContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateUserContentUploadURLV2Response, error)
	AdminGetContentByUserIDV2Short(params *AdminGetContentByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByUserIDV2Response, error)
	AdminUpdateContentHideStatusV2Short(params *AdminUpdateContentHideStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentHideStatusV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetContentByChannelIDV2Short list contents specific to a channel
List content specific to a channel
*/
func (a *Client) AdminGetContentByChannelIDV2Short(params *AdminGetContentByChannelIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByChannelIDV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentByChannelIDV2Params()
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
		ID:                 "AdminGetContentByChannelIDV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentByChannelIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentByChannelIDV2OK:
		response := &AdminGetContentByChannelIDV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetContentByChannelIDV2BadRequest:
		response := &AdminGetContentByChannelIDV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentByChannelIDV2Unauthorized:
		response := &AdminGetContentByChannelIDV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentByChannelIDV2InternalServerError:
		response := &AdminGetContentByChannelIDV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateContentV2Short create a content
Create official content
*/
func (a *Client) AdminCreateContentV2Short(params *AdminCreateContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateContentV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateContentV2Params()
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
		ID:                 "AdminCreateContentV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateContentV2Created:
		response := &AdminCreateContentV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateContentV2BadRequest:
		response := &AdminCreateContentV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateContentV2Unauthorized:
		response := &AdminCreateContentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateContentV2NotFound:
		response := &AdminCreateContentV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateContentV2Conflict:
		response := &AdminCreateContentV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateContentV2InternalServerError:
		response := &AdminCreateContentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteOfficialContentV2Short delete official content
Delete existing official content
*/
func (a *Client) AdminDeleteOfficialContentV2Short(params *AdminDeleteOfficialContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteOfficialContentV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteOfficialContentV2Params()
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
		ID:                 "AdminDeleteOfficialContentV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteOfficialContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteOfficialContentV2NoContent:
		response := &AdminDeleteOfficialContentV2Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteOfficialContentV2Unauthorized:
		response := &AdminDeleteOfficialContentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteOfficialContentV2NotFound:
		response := &AdminDeleteOfficialContentV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteOfficialContentV2InternalServerError:
		response := &AdminDeleteOfficialContentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateOfficialContentV2Short update official content
Update existing official content
*/
func (a *Client) AdminUpdateOfficialContentV2Short(params *AdminUpdateOfficialContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateOfficialContentV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateOfficialContentV2Params()
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
		ID:                 "AdminUpdateOfficialContentV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateOfficialContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateOfficialContentV2OK:
		response := &AdminUpdateOfficialContentV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateOfficialContentV2BadRequest:
		response := &AdminUpdateOfficialContentV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateOfficialContentV2Unauthorized:
		response := &AdminUpdateOfficialContentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateOfficialContentV2NotFound:
		response := &AdminUpdateOfficialContentV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateOfficialContentV2Conflict:
		response := &AdminUpdateOfficialContentV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateOfficialContentV2InternalServerError:
		response := &AdminUpdateOfficialContentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCopyContentShort copy contents from a channel to another
Copy existing content from source channel to target channel.
*/
func (a *Client) AdminCopyContentShort(params *AdminCopyContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCopyContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCopyContentParams()
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
		ID:                 "AdminCopyContent",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/copy",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCopyContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCopyContentCreated:
		response := &AdminCopyContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCopyContentBadRequest:
		response := &AdminCopyContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCopyContentUnauthorized:
		response := &AdminCopyContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCopyContentForbidden:
		response := &AdminCopyContentResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCopyContentNotFound:
		response := &AdminCopyContentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCopyContentInternalServerError:
		response := &AdminCopyContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateOfficialContentFileLocationShort update content file location
This endpoint should be used after calling generate official content upload url endpoint to commit the changes
*/
func (a *Client) AdminUpdateOfficialContentFileLocationShort(params *AdminUpdateOfficialContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateOfficialContentFileLocationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateOfficialContentFileLocationParams()
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
		ID:                 "AdminUpdateOfficialContentFileLocation",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/fileLocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateOfficialContentFileLocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateOfficialContentFileLocationOK:
		response := &AdminUpdateOfficialContentFileLocationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateOfficialContentFileLocationBadRequest:
		response := &AdminUpdateOfficialContentFileLocationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateOfficialContentFileLocationUnauthorized:
		response := &AdminUpdateOfficialContentFileLocationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateOfficialContentFileLocationForbidden:
		response := &AdminUpdateOfficialContentFileLocationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateOfficialContentFileLocationNotFound:
		response := &AdminUpdateOfficialContentFileLocationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateOfficialContentFileLocationInternalServerError:
		response := &AdminUpdateOfficialContentFileLocationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGenerateOfficialContentUploadURLV2Short generate official content upload url
Generate official content upload URL
*/
func (a *Client) AdminGenerateOfficialContentUploadURLV2Short(params *AdminGenerateOfficialContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateOfficialContentUploadURLV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateOfficialContentUploadURLV2Params()
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
		ID:                 "AdminGenerateOfficialContentUploadURLV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/uploadUrl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateOfficialContentUploadURLV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateOfficialContentUploadURLV2OK:
		response := &AdminGenerateOfficialContentUploadURLV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGenerateOfficialContentUploadURLV2BadRequest:
		response := &AdminGenerateOfficialContentUploadURLV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateOfficialContentUploadURLV2Unauthorized:
		response := &AdminGenerateOfficialContentUploadURLV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateOfficialContentUploadURLV2NotFound:
		response := &AdminGenerateOfficialContentUploadURLV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateOfficialContentUploadURLV2InternalServerError:
		response := &AdminGenerateOfficialContentUploadURLV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListContentV2Short list contents
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
func (a *Client) AdminListContentV2Short(params *AdminListContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListContentV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListContentV2Params()
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
		ID:                 "AdminListContentV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListContentV2OK:
		response := &AdminListContentV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListContentV2BadRequest:
		response := &AdminListContentV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListContentV2Unauthorized:
		response := &AdminListContentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListContentV2InternalServerError:
		response := &AdminListContentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkGetContentByIDsV2Short bulk get content by content ids
Maximum contentId per request 100
*/
func (a *Client) AdminBulkGetContentByIDsV2Short(params *AdminBulkGetContentByIDsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetContentByIDsV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkGetContentByIDsV2Params()
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
		ID:                 "AdminBulkGetContentByIDsV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkGetContentByIDsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkGetContentByIDsV2OK:
		response := &AdminBulkGetContentByIDsV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBulkGetContentByIDsV2BadRequest:
		response := &AdminBulkGetContentByIDsV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetContentByIDsV2Unauthorized:
		response := &AdminBulkGetContentByIDsV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetContentByIDsV2Forbidden:
		response := &AdminBulkGetContentByIDsV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetContentByIDsV2InternalServerError:
		response := &AdminBulkGetContentByIDsV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentBulkByShareCodesV2Short bulk get content by content sharecodes
Maximum sharecodes per request 100
*/
func (a *Client) AdminGetContentBulkByShareCodesV2Short(params *AdminGetContentBulkByShareCodesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentBulkByShareCodesV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentBulkByShareCodesV2Params()
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
		ID:                 "AdminGetContentBulkByShareCodesV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentBulkByShareCodesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentBulkByShareCodesV2OK:
		response := &AdminGetContentBulkByShareCodesV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetContentBulkByShareCodesV2BadRequest:
		response := &AdminGetContentBulkByShareCodesV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentBulkByShareCodesV2Unauthorized:
		response := &AdminGetContentBulkByShareCodesV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentBulkByShareCodesV2Forbidden:
		response := &AdminGetContentBulkByShareCodesV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentBulkByShareCodesV2InternalServerError:
		response := &AdminGetContentBulkByShareCodesV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentByShareCodeV2Short get content by sharecode
Get content by share code
*/
func (a *Client) AdminGetContentByShareCodeV2Short(params *AdminGetContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByShareCodeV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentByShareCodeV2Params()
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
		ID:                 "AdminGetContentByShareCodeV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentByShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentByShareCodeV2OK:
		response := &AdminGetContentByShareCodeV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetContentByShareCodeV2Unauthorized:
		response := &AdminGetContentByShareCodeV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentByShareCodeV2NotFound:
		response := &AdminGetContentByShareCodeV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentByShareCodeV2InternalServerError:
		response := &AdminGetContentByShareCodeV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentByContentIDV2Short get content by content id
Get content by content ID
*/
func (a *Client) AdminGetContentByContentIDV2Short(params *AdminGetContentByContentIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByContentIDV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentByContentIDV2Params()
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
		ID:                 "AdminGetContentByContentIDV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentByContentIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentByContentIDV2OK:
		response := &AdminGetContentByContentIDV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetContentByContentIDV2Unauthorized:
		response := &AdminGetContentByContentIDV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentByContentIDV2NotFound:
		response := &AdminGetContentByContentIDV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentByContentIDV2InternalServerError:
		response := &AdminGetContentByContentIDV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RollbackContentVersionV2Short rollback content's payload version
Rollback content's payload to specified version
*/
func (a *Client) RollbackContentVersionV2Short(params *RollbackContentVersionV2Params, authInfo runtime.ClientAuthInfoWriter) (*RollbackContentVersionV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRollbackContentVersionV2Params()
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
		ID:                 "RollbackContentVersionV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RollbackContentVersionV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RollbackContentVersionV2OK:
		response := &RollbackContentVersionV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RollbackContentVersionV2Unauthorized:
		response := &RollbackContentVersionV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RollbackContentVersionV2NotFound:
		response := &RollbackContentVersionV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RollbackContentVersionV2UnprocessableEntity:
		response := &RollbackContentVersionV2Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RollbackContentVersionV2InternalServerError:
		response := &RollbackContentVersionV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateScreenshotsV2Short update screenshot of content
Maximum description length: 1024
*/
func (a *Client) AdminUpdateScreenshotsV2Short(params *AdminUpdateScreenshotsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateScreenshotsV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateScreenshotsV2Params()
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
		ID:                 "AdminUpdateScreenshotsV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateScreenshotsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateScreenshotsV2OK:
		response := &AdminUpdateScreenshotsV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateScreenshotsV2BadRequest:
		response := &AdminUpdateScreenshotsV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateScreenshotsV2Unauthorized:
		response := &AdminUpdateScreenshotsV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateScreenshotsV2Forbidden:
		response := &AdminUpdateScreenshotsV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateScreenshotsV2NotFound:
		response := &AdminUpdateScreenshotsV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateScreenshotsV2InternalServerError:
		response := &AdminUpdateScreenshotsV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUploadContentScreenshotV2Short upload screenshots for content
This endpoint used to request upload URL from content's screenshot.
If *contentType* is not specified, it will use *fileExtension* value.
Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.
Maximum description length: 1024
*/
func (a *Client) AdminUploadContentScreenshotV2Short(params *AdminUploadContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadContentScreenshotV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadContentScreenshotV2Params()
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
		ID:                 "AdminUploadContentScreenshotV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadContentScreenshotV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUploadContentScreenshotV2Created:
		response := &AdminUploadContentScreenshotV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUploadContentScreenshotV2BadRequest:
		response := &AdminUploadContentScreenshotV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentScreenshotV2Unauthorized:
		response := &AdminUploadContentScreenshotV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentScreenshotV2Forbidden:
		response := &AdminUploadContentScreenshotV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentScreenshotV2NotFound:
		response := &AdminUploadContentScreenshotV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUploadContentScreenshotV2InternalServerError:
		response := &AdminUploadContentScreenshotV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteContentScreenshotV2Short delete screenshots content
Delete screenshot from a content
*/
func (a *Client) AdminDeleteContentScreenshotV2Short(params *AdminDeleteContentScreenshotV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentScreenshotV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteContentScreenshotV2Params()
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
		ID:                 "AdminDeleteContentScreenshotV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteContentScreenshotV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteContentScreenshotV2NoContent:
		response := &AdminDeleteContentScreenshotV2Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteContentScreenshotV2BadRequest:
		response := &AdminDeleteContentScreenshotV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteContentScreenshotV2Unauthorized:
		response := &AdminDeleteContentScreenshotV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteContentScreenshotV2Forbidden:
		response := &AdminDeleteContentScreenshotV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteContentScreenshotV2NotFound:
		response := &AdminDeleteContentScreenshotV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteContentScreenshotV2InternalServerError:
		response := &AdminDeleteContentScreenshotV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListContentVersionsV2Short list content's payload versions
Content's payload versions created when UGC is created or updated with `updateContentFile` set to true. Only list up to 10 latest versions.
*/
func (a *Client) ListContentVersionsV2Short(params *ListContentVersionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*ListContentVersionsV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListContentVersionsV2Params()
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
		ID:                 "ListContentVersionsV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListContentVersionsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListContentVersionsV2OK:
		response := &ListContentVersionsV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListContentVersionsV2Unauthorized:
		response := &ListContentVersionsV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListContentVersionsV2NotFound:
		response := &ListContentVersionsV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListContentVersionsV2InternalServerError:
		response := &ListContentVersionsV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateContentByShareCodeV2Short update content to s3 bucket by share code
*shareCode* format should follows:

"Max length: 7
"Available characters: abcdefhkpqrstuxyz
*/
func (a *Client) AdminUpdateContentByShareCodeV2Short(params *AdminUpdateContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentByShareCodeV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentByShareCodeV2Params()
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
		ID:                 "AdminUpdateContentByShareCodeV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentByShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentByShareCodeV2OK:
		response := &AdminUpdateContentByShareCodeV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateContentByShareCodeV2BadRequest:
		response := &AdminUpdateContentByShareCodeV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentByShareCodeV2Unauthorized:
		response := &AdminUpdateContentByShareCodeV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentByShareCodeV2Forbidden:
		response := &AdminUpdateContentByShareCodeV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentByShareCodeV2NotFound:
		response := &AdminUpdateContentByShareCodeV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentByShareCodeV2Conflict:
		response := &AdminUpdateContentByShareCodeV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentByShareCodeV2InternalServerError:
		response := &AdminUpdateContentByShareCodeV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteContentByShareCodeV2Short delete content by share code
Delete content by share code
*/
func (a *Client) AdminDeleteContentByShareCodeV2Short(params *AdminDeleteContentByShareCodeV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteContentByShareCodeV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteContentByShareCodeV2Params()
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
		ID:                 "AdminDeleteContentByShareCodeV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteContentByShareCodeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteContentByShareCodeV2NoContent:
		response := &AdminDeleteContentByShareCodeV2Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteContentByShareCodeV2Unauthorized:
		response := &AdminDeleteContentByShareCodeV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteContentByShareCodeV2NotFound:
		response := &AdminDeleteContentByShareCodeV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteContentByShareCodeV2InternalServerError:
		response := &AdminDeleteContentByShareCodeV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserContentV2Short delete user content
Delete user content by content ID
*/
func (a *Client) AdminDeleteUserContentV2Short(params *AdminDeleteUserContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserContentV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserContentV2Params()
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
		ID:                 "AdminDeleteUserContentV2",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserContentV2NoContent:
		response := &AdminDeleteUserContentV2Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteUserContentV2Unauthorized:
		response := &AdminDeleteUserContentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserContentV2NotFound:
		response := &AdminDeleteUserContentV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserContentV2InternalServerError:
		response := &AdminDeleteUserContentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserContentV2Short update user content
Update existing user content
*/
func (a *Client) AdminUpdateUserContentV2Short(params *AdminUpdateUserContentV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserContentV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserContentV2Params()
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
		ID:                 "AdminUpdateUserContentV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserContentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserContentV2OK:
		response := &AdminUpdateUserContentV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateUserContentV2BadRequest:
		response := &AdminUpdateUserContentV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserContentV2Unauthorized:
		response := &AdminUpdateUserContentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserContentV2NotFound:
		response := &AdminUpdateUserContentV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserContentV2Conflict:
		response := &AdminUpdateUserContentV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserContentV2InternalServerError:
		response := &AdminUpdateUserContentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserContentFileLocationShort update user content file location
This endpoint should be used after calling generate user content upload url endpoint to commit the changes
*/
func (a *Client) AdminUpdateUserContentFileLocationShort(params *AdminUpdateUserContentFileLocationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserContentFileLocationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserContentFileLocationParams()
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
		ID:                 "AdminUpdateUserContentFileLocation",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserContentFileLocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserContentFileLocationOK:
		response := &AdminUpdateUserContentFileLocationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateUserContentFileLocationBadRequest:
		response := &AdminUpdateUserContentFileLocationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserContentFileLocationUnauthorized:
		response := &AdminUpdateUserContentFileLocationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserContentFileLocationForbidden:
		response := &AdminUpdateUserContentFileLocationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserContentFileLocationNotFound:
		response := &AdminUpdateUserContentFileLocationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserContentFileLocationInternalServerError:
		response := &AdminUpdateUserContentFileLocationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGenerateUserContentUploadURLV2Short generate user content upload url
generate user content upload URL
*/
func (a *Client) AdminGenerateUserContentUploadURLV2Short(params *AdminGenerateUserContentUploadURLV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateUserContentUploadURLV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateUserContentUploadURLV2Params()
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
		ID:                 "AdminGenerateUserContentUploadURLV2",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateUserContentUploadURLV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateUserContentUploadURLV2OK:
		response := &AdminGenerateUserContentUploadURLV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGenerateUserContentUploadURLV2BadRequest:
		response := &AdminGenerateUserContentUploadURLV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateUserContentUploadURLV2Unauthorized:
		response := &AdminGenerateUserContentUploadURLV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateUserContentUploadURLV2NotFound:
		response := &AdminGenerateUserContentUploadURLV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateUserContentUploadURLV2InternalServerError:
		response := &AdminGenerateUserContentUploadURLV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetContentByUserIDV2Short get user's generated contents
Get user cotent
*/
func (a *Client) AdminGetContentByUserIDV2Short(params *AdminGetContentByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetContentByUserIDV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetContentByUserIDV2Params()
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
		ID:                 "AdminGetContentByUserIDV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetContentByUserIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetContentByUserIDV2OK:
		response := &AdminGetContentByUserIDV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetContentByUserIDV2BadRequest:
		response := &AdminGetContentByUserIDV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentByUserIDV2Unauthorized:
		response := &AdminGetContentByUserIDV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetContentByUserIDV2InternalServerError:
		response := &AdminGetContentByUserIDV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateContentHideStatusV2Short hide/unhide user's generated contents
Hide/Unhide user's generated contents
*/
func (a *Client) AdminUpdateContentHideStatusV2Short(params *AdminUpdateContentHideStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateContentHideStatusV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateContentHideStatusV2Params()
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
		ID:                 "AdminUpdateContentHideStatusV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateContentHideStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateContentHideStatusV2OK:
		response := &AdminUpdateContentHideStatusV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateContentHideStatusV2BadRequest:
		response := &AdminUpdateContentHideStatusV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentHideStatusV2Unauthorized:
		response := &AdminUpdateContentHideStatusV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentHideStatusV2Forbidden:
		response := &AdminUpdateContentHideStatusV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentHideStatusV2NotFound:
		response := &AdminUpdateContentHideStatusV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateContentHideStatusV2InternalServerError:
		response := &AdminUpdateContentHideStatusV2Response{}
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
