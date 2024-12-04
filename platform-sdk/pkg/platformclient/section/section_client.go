// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package section

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new section API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for section API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QuerySectionsShort(params *QuerySectionsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySectionsResponse, error)
	CreateSectionShort(params *CreateSectionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSectionResponse, error)
	PurgeExpiredSectionShort(params *PurgeExpiredSectionParams, authInfo runtime.ClientAuthInfoWriter) (*PurgeExpiredSectionResponse, error)
	GetSectionShort(params *GetSectionParams, authInfo runtime.ClientAuthInfoWriter) (*GetSectionResponse, error)
	UpdateSectionShort(params *UpdateSectionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSectionResponse, error)
	DeleteSectionShort(params *DeleteSectionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSectionResponse, error)
	PublicListActiveSectionsShort(params *PublicListActiveSectionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListActiveSectionsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QuerySectionsShort list sections
This API is used to query sections.

Other detail info:

  * Returns : paginated sections
*/
func (a *Client) QuerySectionsShort(params *QuerySectionsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySectionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySectionsParams()
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
		ID:                 "querySections",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySectionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QuerySectionsOK:
		response := &QuerySectionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QuerySectionsNotFound:
		response := &QuerySectionsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QuerySectionsUnprocessableEntity:
		response := &QuerySectionsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateSectionShort create a section
This API is used to create a section.

Other detail info:

  * Returns : created a section



## Restrictions for section extension and localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) CreateSectionShort(params *CreateSectionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSectionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSectionParams()
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
		ID:                 "createSection",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSectionCreated:
		response := &CreateSectionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateSectionBadRequest:
		response := &CreateSectionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSectionNotFound:
		response := &CreateSectionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSectionConflict:
		response := &CreateSectionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSectionUnprocessableEntity:
		response := &CreateSectionResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PurgeExpiredSectionShort purge expired section
This API is used to purge expired section.
*/
func (a *Client) PurgeExpiredSectionShort(params *PurgeExpiredSectionParams, authInfo runtime.ClientAuthInfoWriter) (*PurgeExpiredSectionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPurgeExpiredSectionParams()
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
		ID:                 "purgeExpiredSection",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections/purge/expired",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PurgeExpiredSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PurgeExpiredSectionNoContent:
		response := &PurgeExpiredSectionResponse{}

		response.IsSuccess = true

		return response, nil
	case *PurgeExpiredSectionNotFound:
		response := &PurgeExpiredSectionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSectionShort get a section
This API is used to get a section.

Other detail info:

  * Returns : section data
*/
func (a *Client) GetSectionShort(params *GetSectionParams, authInfo runtime.ClientAuthInfoWriter) (*GetSectionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSectionParams()
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
		ID:                 "getSection",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections/{sectionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSectionOK:
		response := &GetSectionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSectionNotFound:
		response := &GetSectionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSectionShort update s section
This API is used to update s section.

Other detail info:

  * Returns : updated section data



## Restrictions for section extension and localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) UpdateSectionShort(params *UpdateSectionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSectionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSectionParams()
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
		ID:                 "updateSection",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections/{sectionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSectionOK:
		response := &UpdateSectionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateSectionBadRequest:
		response := &UpdateSectionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSectionNotFound:
		response := &UpdateSectionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSectionConflict:
		response := &UpdateSectionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSectionUnprocessableEntity:
		response := &UpdateSectionResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSectionShort delete a section
This API is used to delete s section.
*/
func (a *Client) DeleteSectionShort(params *DeleteSectionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSectionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSectionParams()
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
		ID:                 "deleteSection",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/sections/{sectionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSectionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSectionNoContent:
		response := &DeleteSectionResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteSectionNotFound:
		response := &DeleteSectionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSectionConflict:
		response := &DeleteSectionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListActiveSectionsShort list active section contents
This API is used to list active section contents.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store sections)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store sections)
  *  Returns : active section contents
*/
func (a *Client) PublicListActiveSectionsShort(params *PublicListActiveSectionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListActiveSectionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListActiveSectionsParams()
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
		ID:                 "publicListActiveSections",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/sections",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListActiveSectionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListActiveSectionsOK:
		response := &PublicListActiveSectionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListActiveSectionsNotFound:
		response := &PublicListActiveSectionsResponse{}
		response.Error404 = v.Payload

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
