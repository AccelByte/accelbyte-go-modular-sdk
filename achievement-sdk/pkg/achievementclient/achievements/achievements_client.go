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
	AdminListAchievementsShort(params *AdminListAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListAchievementsOK, error)
	AdminCreateNewAchievementShort(params *AdminCreateNewAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateNewAchievementCreated, error)
	ExportAchievementsShort(params *ExportAchievementsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportAchievementsOK, error)
	ImportAchievementsShort(params *ImportAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportAchievementsOK, error)
	AdminGetAchievementShort(params *AdminGetAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAchievementOK, error)
	AdminUpdateAchievementShort(params *AdminUpdateAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAchievementOK, error)
	AdminDeleteAchievementShort(params *AdminDeleteAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAchievementNoContent, error)
	AdminUpdateAchievementListOrderShort(params *AdminUpdateAchievementListOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAchievementListOrderNoContent, error)
	PublicListAchievementsShort(params *PublicListAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListAchievementsOK, error)
	PublicGetAchievementShort(params *PublicGetAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAchievementOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListAchievementsShort query achievements
Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) AdminListAchievementsShort(params *AdminListAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListAchievementsOK, error) {
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
		return v, nil
	case *AdminListAchievementsBadRequest:
		return nil, v
	case *AdminListAchievementsUnauthorized:
		return nil, v
	case *AdminListAchievementsNotFound:
		return nil, v
	case *AdminListAchievementsInternalServerError:
		return nil, v

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
func (a *Client) AdminCreateNewAchievementShort(params *AdminCreateNewAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateNewAchievementCreated, error) {
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
		return v, nil
	case *AdminCreateNewAchievementBadRequest:
		return nil, v
	case *AdminCreateNewAchievementUnauthorized:
		return nil, v
	case *AdminCreateNewAchievementTooManyRequests:
		return nil, v
	case *AdminCreateNewAchievementInternalServerError:
		return nil, v

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
func (a *Client) ExportAchievementsShort(params *ExportAchievementsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportAchievementsOK, error) {
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
		return v, nil
	case *ExportAchievementsUnauthorized:
		return nil, v
	case *ExportAchievementsForbidden:
		return nil, v
	case *ExportAchievementsInternalServerError:
		return nil, v

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
func (a *Client) ImportAchievementsShort(params *ImportAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportAchievementsOK, error) {
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
		return v, nil
	case *ImportAchievementsUnauthorized:
		return nil, v
	case *ImportAchievementsForbidden:
		return nil, v
	case *ImportAchievementsTooManyRequests:
		return nil, v
	case *ImportAchievementsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAchievementShort get an achievement


Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) AdminGetAchievementShort(params *AdminGetAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAchievementOK, error) {
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
		return v, nil
	case *AdminGetAchievementBadRequest:
		return nil, v
	case *AdminGetAchievementUnauthorized:
		return nil, v
	case *AdminGetAchievementNotFound:
		return nil, v
	case *AdminGetAchievementInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAchievementShort update an achievement


Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]` and scope `social`
*/
func (a *Client) AdminUpdateAchievementShort(params *AdminUpdateAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAchievementOK, error) {
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
		return v, nil
	case *AdminUpdateAchievementBadRequest:
		return nil, v
	case *AdminUpdateAchievementUnauthorized:
		return nil, v
	case *AdminUpdateAchievementNotFound:
		return nil, v
	case *AdminUpdateAchievementInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAchievementShort delete an achievement


Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [DELETE]` and scope `social`
*/
func (a *Client) AdminDeleteAchievementShort(params *AdminDeleteAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAchievementNoContent, error) {
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
		return v, nil
	case *AdminDeleteAchievementBadRequest:
		return nil, v
	case *AdminDeleteAchievementUnauthorized:
		return nil, v
	case *AdminDeleteAchievementNotFound:
		return nil, v
	case *AdminDeleteAchievementInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAchievementListOrderShort update achievements listorder


Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [UPDATE]` and scope `social`
*/
func (a *Client) AdminUpdateAchievementListOrderShort(params *AdminUpdateAchievementListOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAchievementListOrderNoContent, error) {
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
		return v, nil
	case *AdminUpdateAchievementListOrderBadRequest:
		return nil, v
	case *AdminUpdateAchievementListOrderUnauthorized:
		return nil, v
	case *AdminUpdateAchievementListOrderNotFound:
		return nil, v
	case *AdminUpdateAchievementListOrderInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListAchievementsShort query achievements


Required permission
`NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) PublicListAchievementsShort(params *PublicListAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListAchievementsOK, error) {
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
		return v, nil
	case *PublicListAchievementsBadRequest:
		return nil, v
	case *PublicListAchievementsUnauthorized:
		return nil, v
	case *PublicListAchievementsNotFound:
		return nil, v
	case *PublicListAchievementsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetAchievementShort get an achievement


Required permission
`NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) PublicGetAchievementShort(params *PublicGetAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAchievementOK, error) {
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
		return v, nil
	case *PublicGetAchievementBadRequest:
		return nil, v
	case *PublicGetAchievementUnauthorized:
		return nil, v
	case *PublicGetAchievementNotFound:
		return nil, v
	case *PublicGetAchievementInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
