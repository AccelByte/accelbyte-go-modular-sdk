// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievements

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new achievements API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for achievements API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListAchievementsShort(params *AdminListAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListAchievementsResponse, error)
	AdminCreateNewAchievementShort(params *AdminCreateNewAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateNewAchievementResponse, error)
	ExportAchievementsShort(params *ExportAchievementsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportAchievementsResponse, error)
	ImportAchievementsShort(params *ImportAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportAchievementsResponse, error)
	AdminGetAchievementShort(params *AdminGetAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAchievementResponse, error)
	AdminUpdateAchievementShort(params *AdminUpdateAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAchievementResponse, error)
	AdminDeleteAchievementShort(params *AdminDeleteAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAchievementResponse, error)
	AdminUpdateAchievementListOrderShort(params *AdminUpdateAchievementListOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAchievementListOrderResponse, error)
	PublicListAchievementsShort(params *PublicListAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListAchievementsResponse, error)
	PublicGetAchievementShort(params *PublicGetAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAchievementResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListAchievementsShort query achievements
Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) AdminListAchievementsShort(params *AdminListAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListAchievementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListAchievementsParams()
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
		ID:                 "AdminListAchievements",
		Method:             "GET",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/achievements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListAchievementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListAchievementsOK:
		response := &AdminListAchievementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListAchievementsBadRequest:
		response := &AdminListAchievementsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminListAchievementsUnauthorized:
		response := &AdminListAchievementsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminListAchievementsNotFound:
		response := &AdminListAchievementsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminListAchievementsInternalServerError:
		response := &AdminListAchievementsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateNewAchievementShort create new achievement


Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [CREATE]` and scope `social`


Other detail info:
- achievementCode: Human readable unique code to indentify the achievement. Must be lowercase
and maximum length is 32
- incremental: If the achievement is not incremental, it does not need to store a goal value
of a stat to be unlocked.
If the achievement is incremental, it needs to set statCode and goalValue
- statCode: Selected statistic code, from the published statistic code event.Human readable unique
code to indentify the achievement. Must be lowercase and maximum length is 32
- goalValue: Statistics value required to unlock the achievement.
- defaultLanguage: localozation for achievement name and achievement description. Allowed format : en, en-US
- slug: specify the image they want to use, it can be file image name or something
to define the achievement icon.
*/
func (a *Client) AdminCreateNewAchievementShort(params *AdminCreateNewAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateNewAchievementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateNewAchievementParams()
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
		ID:                 "AdminCreateNewAchievement",
		Method:             "POST",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/achievements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateNewAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateNewAchievementCreated:
		response := &AdminCreateNewAchievementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateNewAchievementBadRequest:
		response := &AdminCreateNewAchievementResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCreateNewAchievementUnauthorized:
		response := &AdminCreateNewAchievementResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCreateNewAchievementTooManyRequests:
		response := &AdminCreateNewAchievementResponse{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCreateNewAchievementInternalServerError:
		response := &AdminCreateNewAchievementResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportAchievementsShort export achievements configuration into a json file



Required permission `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]`

Required Scope: `social`

Successful response header will contain: `content-disposition: attachment; filename=achievement__config.json`
*/
func (a *Client) ExportAchievementsShort(params *ExportAchievementsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportAchievementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportAchievementsParams()
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
		ID:                 "ExportAchievements",
		Method:             "GET",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/achievements/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportAchievementsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportAchievementsOK:
		response := &ExportAchievementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ExportAchievementsUnauthorized:
		response := &ExportAchievementsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ExportAchievementsForbidden:
		response := &ExportAchievementsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ExportAchievementsInternalServerError:
		response := &ExportAchievementsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportAchievementsShort import achievements from file

Required permission ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]

Required Scope: social

Import achievement configuration from file. It will merge with existing achievement.
Available import strategy:
- leaveOut: if achievement with same key exist, the existing will be used and imported one will be ignored (default)
- replace: if achievement with same key exist, the imported achievement will be used and existing one will be removed
*/
func (a *Client) ImportAchievementsShort(params *ImportAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportAchievementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportAchievementsParams()
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
		ID:                 "ImportAchievements",
		Method:             "POST",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/achievements/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportAchievementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportAchievementsOK:
		response := &ImportAchievementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ImportAchievementsUnauthorized:
		response := &ImportAchievementsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportAchievementsForbidden:
		response := &ImportAchievementsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportAchievementsTooManyRequests:
		response := &ImportAchievementsResponse{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportAchievementsInternalServerError:
		response := &ImportAchievementsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAchievementShort get an achievement


Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) AdminGetAchievementShort(params *AdminGetAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAchievementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAchievementParams()
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
		ID:                 "AdminGetAchievement",
		Method:             "GET",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAchievementOK:
		response := &AdminGetAchievementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetAchievementBadRequest:
		response := &AdminGetAchievementResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetAchievementUnauthorized:
		response := &AdminGetAchievementResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetAchievementNotFound:
		response := &AdminGetAchievementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetAchievementInternalServerError:
		response := &AdminGetAchievementResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAchievementShort update an achievement


Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]` and scope `social`
*/
func (a *Client) AdminUpdateAchievementShort(params *AdminUpdateAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAchievementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAchievementParams()
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
		ID:                 "AdminUpdateAchievement",
		Method:             "PUT",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAchievementOK:
		response := &AdminUpdateAchievementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateAchievementBadRequest:
		response := &AdminUpdateAchievementResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateAchievementUnauthorized:
		response := &AdminUpdateAchievementResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateAchievementNotFound:
		response := &AdminUpdateAchievementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateAchievementInternalServerError:
		response := &AdminUpdateAchievementResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAchievementShort delete an achievement


Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [DELETE]` and scope `social`
*/
func (a *Client) AdminDeleteAchievementShort(params *AdminDeleteAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAchievementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAchievementParams()
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
		ID:                 "AdminDeleteAchievement",
		Method:             "DELETE",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAchievementNoContent:
		response := &AdminDeleteAchievementResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteAchievementBadRequest:
		response := &AdminDeleteAchievementResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteAchievementUnauthorized:
		response := &AdminDeleteAchievementResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteAchievementNotFound:
		response := &AdminDeleteAchievementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteAchievementInternalServerError:
		response := &AdminDeleteAchievementResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAchievementListOrderShort update achievements listorder


Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]` and scope `social`
*/
func (a *Client) AdminUpdateAchievementListOrderShort(params *AdminUpdateAchievementListOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAchievementListOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAchievementListOrderParams()
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
		ID:                 "AdminUpdateAchievementListOrder",
		Method:             "PATCH",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAchievementListOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAchievementListOrderNoContent:
		response := &AdminUpdateAchievementListOrderResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateAchievementListOrderBadRequest:
		response := &AdminUpdateAchievementListOrderResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateAchievementListOrderUnauthorized:
		response := &AdminUpdateAchievementListOrderResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateAchievementListOrderNotFound:
		response := &AdminUpdateAchievementListOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateAchievementListOrderInternalServerError:
		response := &AdminUpdateAchievementListOrderResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListAchievementsShort query achievements


Required permission
`NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) PublicListAchievementsShort(params *PublicListAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListAchievementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListAchievementsParams()
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
		ID:                 "PublicListAchievements",
		Method:             "GET",
		PathPattern:        "/achievement/v1/public/namespaces/{namespace}/achievements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListAchievementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListAchievementsOK:
		response := &PublicListAchievementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListAchievementsBadRequest:
		response := &PublicListAchievementsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicListAchievementsUnauthorized:
		response := &PublicListAchievementsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicListAchievementsNotFound:
		response := &PublicListAchievementsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicListAchievementsInternalServerError:
		response := &PublicListAchievementsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetAchievementShort get an achievement


Required permission
`NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) PublicGetAchievementShort(params *PublicGetAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAchievementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetAchievementParams()
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
		ID:                 "PublicGetAchievement",
		Method:             "GET",
		PathPattern:        "/achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetAchievementOK:
		response := &PublicGetAchievementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetAchievementBadRequest:
		response := &PublicGetAchievementResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetAchievementUnauthorized:
		response := &PublicGetAchievementResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetAchievementNotFound:
		response := &PublicGetAchievementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetAchievementInternalServerError:
		response := &PublicGetAchievementResponse{}
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
