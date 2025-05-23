// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package misc

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new misc API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for misc API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetCountriesShort(params *GetCountriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountriesResponse, error)
	GetCountryGroupsShort(params *GetCountryGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountryGroupsResponse, error)
	AddCountryGroupShort(params *AddCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AddCountryGroupResponse, error)
	UpdateCountryGroupShort(params *UpdateCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryGroupResponse, error)
	DeleteCountryGroupShort(params *DeleteCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCountryGroupResponse, error)
	GetLanguagesShort(params *GetLanguagesParams, authInfo runtime.ClientAuthInfoWriter) (*GetLanguagesResponse, error)
	GetTimeZonesShort(params *GetTimeZonesParams, authInfo runtime.ClientAuthInfoWriter) (*GetTimeZonesResponse, error)
	PublicGetTimeShort(params *PublicGetTimeParams) (*PublicGetTimeResponse, error)
	PublicGetCountriesShort(params *PublicGetCountriesParams) (*PublicGetCountriesResponse, error)
	PublicGetLanguagesShort(params *PublicGetLanguagesParams) (*PublicGetLanguagesResponse, error)
	PublicGetTimeZonesShort(params *PublicGetTimeZonesParams) (*PublicGetTimeZonesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetCountriesShort list countries
List countries.
Other detail info:

  * Action code : 11204
  *  Returns : country code list
*/
func (a *Client) GetCountriesShort(params *GetCountriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCountriesParams()
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
		ID:                 "getCountries",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCountriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCountriesOK:
		response := &GetCountriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCountriesBadRequest:
		response := &GetCountriesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCountriesUnauthorized:
		response := &GetCountriesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCountryGroupsShort list country groups
List country groups. Will return all available country groups if the query param is not specified
Other detail info:

  * Action code : 11203
  *  Returns : list of country groups
*/
func (a *Client) GetCountryGroupsShort(params *GetCountryGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetCountryGroupsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCountryGroupsParams()
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
		ID:                 "getCountryGroups",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCountryGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCountryGroupsOK:
		response := &GetCountryGroupsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCountryGroupsBadRequest:
		response := &GetCountryGroupsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCountryGroupsUnauthorized:
		response := &GetCountryGroupsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCountryGroupsForbidden:
		response := &GetCountryGroupsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCountryGroupsNotFound:
		response := &GetCountryGroupsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddCountryGroupShort add a country group
Add a country groups
Country code must follow ISO3166-1 alpha-2.
Other detail info:

  * Action code : 11201
  *  Returns : newly created country group
*/
func (a *Client) AddCountryGroupShort(params *AddCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AddCountryGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddCountryGroupParams()
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
		ID:                 "addCountryGroup",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddCountryGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddCountryGroupCreated:
		response := &AddCountryGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AddCountryGroupBadRequest:
		response := &AddCountryGroupResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddCountryGroupUnauthorized:
		response := &AddCountryGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddCountryGroupForbidden:
		response := &AddCountryGroupResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddCountryGroupConflict:
		response := &AddCountryGroupResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCountryGroupShort update a country group
Update a country groups. The countryGroupCode must be exist beforehand.
Valid update behaviour :
- To update countryGroupName only, do not include countries key or just specify it with empty array.
- To update countries only, do not include countryGroupName key or just specify it with blank value.
Other detail info:

  * Action code : 11202
  *  Returns : updated country group
*/
func (a *Client) UpdateCountryGroupShort(params *UpdateCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCountryGroupParams()
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
		ID:                 "updateCountryGroup",
		Method:             "PUT",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCountryGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCountryGroupOK:
		response := &UpdateCountryGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateCountryGroupBadRequest:
		response := &UpdateCountryGroupResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCountryGroupUnauthorized:
		response := &UpdateCountryGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCountryGroupForbidden:
		response := &UpdateCountryGroupResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCountryGroupNotFound:
		response := &UpdateCountryGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteCountryGroupShort delete a country group
Delete a country groups by its country group code. This endpoint usually used for testing purpose to cleanup test data.
*/
func (a *Client) DeleteCountryGroupShort(params *DeleteCountryGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCountryGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteCountryGroupParams()
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
		ID:                 "deleteCountryGroup",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteCountryGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteCountryGroupOK:
		response := &DeleteCountryGroupResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteCountryGroupBadRequest:
		response := &DeleteCountryGroupResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteCountryGroupUnauthorized:
		response := &DeleteCountryGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteCountryGroupForbidden:
		response := &DeleteCountryGroupResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteCountryGroupNotFound:
		response := &DeleteCountryGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLanguagesShort list languages.
List languages.
Other detail info:

  * Action code : 11206
  *  Returns : language list
*/
func (a *Client) GetLanguagesShort(params *GetLanguagesParams, authInfo runtime.ClientAuthInfoWriter) (*GetLanguagesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLanguagesParams()
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
		ID:                 "getLanguages",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/languages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLanguagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLanguagesOK:
		response := &GetLanguagesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLanguagesBadRequest:
		response := &GetLanguagesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLanguagesUnauthorized:
		response := &GetLanguagesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTimeZonesShort list time zones
List time zones.
Other detail info:

  * Action code : 11205
  *  Returns : time zones
*/
func (a *Client) GetTimeZonesShort(params *GetTimeZonesParams, authInfo runtime.ClientAuthInfoWriter) (*GetTimeZonesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTimeZonesParams()
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
		ID:                 "getTimeZones",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/misc/timezones",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTimeZonesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTimeZonesOK:
		response := &GetTimeZonesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetTimeZonesBadRequest:
		response := &GetTimeZonesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTimeZonesUnauthorized:
		response := &GetTimeZonesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetTimeShort get server time
Get server time
*/
func (a *Client) PublicGetTimeShort(params *PublicGetTimeParams) (*PublicGetTimeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetTimeParams()
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
		ID:                 "publicGetTime",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/misc/time",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetTimeReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetTimeOK:
		response := &PublicGetTimeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCountriesShort list countries
List countries.
Other detail info:

  * Returns : country code list
*/
func (a *Client) PublicGetCountriesShort(params *PublicGetCountriesParams) (*PublicGetCountriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCountriesParams()
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
		ID:                 "publicGetCountries",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/misc/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCountriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCountriesOK:
		response := &PublicGetCountriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetCountriesBadRequest:
		response := &PublicGetCountriesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetLanguagesShort list languages.
List languages.
Other detail info:

  * Returns : language list
*/
func (a *Client) PublicGetLanguagesShort(params *PublicGetLanguagesParams) (*PublicGetLanguagesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetLanguagesParams()
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
		ID:                 "publicGetLanguages",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/misc/languages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetLanguagesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetLanguagesOK:
		response := &PublicGetLanguagesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetLanguagesBadRequest:
		response := &PublicGetLanguagesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetTimeZonesShort list time zones
List time zones.
Other detail info:

  * Returns : time zones
*/
func (a *Client) PublicGetTimeZonesShort(params *PublicGetTimeZonesParams) (*PublicGetTimeZonesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetTimeZonesParams()
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
		ID:                 "publicGetTimeZones",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/misc/timezones",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetTimeZonesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetTimeZonesOK:
		response := &PublicGetTimeZonesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetTimeZonesBadRequest:
		response := &PublicGetTimeZonesResponse{}
		response.Error400 = v.Payload

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
