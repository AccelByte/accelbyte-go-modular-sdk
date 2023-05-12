// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package configuration_template

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new configuration template API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for configuration template API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminCreateConfigurationTemplateV1(params *AdminCreateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationTemplateV1Created, *AdminCreateConfigurationTemplateV1BadRequest, *AdminCreateConfigurationTemplateV1Unauthorized, *AdminCreateConfigurationTemplateV1Forbidden, *AdminCreateConfigurationTemplateV1Conflict, *AdminCreateConfigurationTemplateV1InternalServerError, error)
	AdminCreateConfigurationTemplateV1Short(params *AdminCreateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationTemplateV1Created, error)
	AdminGetAllConfigurationTemplatesV1(params *AdminGetAllConfigurationTemplatesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigurationTemplatesV1OK, *AdminGetAllConfigurationTemplatesV1BadRequest, *AdminGetAllConfigurationTemplatesV1Unauthorized, *AdminGetAllConfigurationTemplatesV1Forbidden, *AdminGetAllConfigurationTemplatesV1InternalServerError, error)
	AdminGetAllConfigurationTemplatesV1Short(params *AdminGetAllConfigurationTemplatesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigurationTemplatesV1OK, error)
	AdminGetConfigurationTemplateV1(params *AdminGetConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationTemplateV1OK, *AdminGetConfigurationTemplateV1BadRequest, *AdminGetConfigurationTemplateV1Unauthorized, *AdminGetConfigurationTemplateV1Forbidden, *AdminGetConfigurationTemplateV1NotFound, *AdminGetConfigurationTemplateV1InternalServerError, error)
	AdminGetConfigurationTemplateV1Short(params *AdminGetConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationTemplateV1OK, error)
	AdminUpdateConfigurationTemplateV1(params *AdminUpdateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationTemplateV1OK, *AdminUpdateConfigurationTemplateV1BadRequest, *AdminUpdateConfigurationTemplateV1Unauthorized, *AdminUpdateConfigurationTemplateV1Forbidden, *AdminUpdateConfigurationTemplateV1NotFound, *AdminUpdateConfigurationTemplateV1InternalServerError, error)
	AdminUpdateConfigurationTemplateV1Short(params *AdminUpdateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationTemplateV1OK, error)
	AdminDeleteConfigurationTemplateV1(params *AdminDeleteConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationTemplateV1NoContent, *AdminDeleteConfigurationTemplateV1BadRequest, *AdminDeleteConfigurationTemplateV1Unauthorized, *AdminDeleteConfigurationTemplateV1Forbidden, *AdminDeleteConfigurationTemplateV1InternalServerError, error)
	AdminDeleteConfigurationTemplateV1Short(params *AdminDeleteConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationTemplateV1NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminCreateConfigurationTemplateV1Short instead.

AdminCreateConfigurationTemplateV1 create configuration template. requires admin:namespace:{namespace}:session:configuration [create]
Create template configuration to be applied across party and session.
Session configuration mandatory :
- name
- joinability (example value : OPEN, CLOSED, INVITE_ONLY)
- Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
- MinPlayers (must greather or equal 0)
- MaxPlayers (must greather than 0)
- InviteTimeout (must greather or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- InactiveTimeout (must greather or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- Persistent Flag only can use with type DS (example value true or false)
*/
func (a *Client) AdminCreateConfigurationTemplateV1(params *AdminCreateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationTemplateV1Created, *AdminCreateConfigurationTemplateV1BadRequest, *AdminCreateConfigurationTemplateV1Unauthorized, *AdminCreateConfigurationTemplateV1Forbidden, *AdminCreateConfigurationTemplateV1Conflict, *AdminCreateConfigurationTemplateV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateConfigurationTemplateV1",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateConfigurationTemplateV1Created:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminCreateConfigurationTemplateV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminCreateConfigurationTemplateV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminCreateConfigurationTemplateV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminCreateConfigurationTemplateV1Conflict:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminCreateConfigurationTemplateV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateConfigurationTemplateV1Short create configuration template. requires admin:namespace:{namespace}:session:configuration [create]
Create template configuration to be applied across party and session.
Session configuration mandatory :
- name
- joinability (example value : OPEN, CLOSED, INVITE_ONLY)
- Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
- MinPlayers (must greather or equal 0)
- MaxPlayers (must greather than 0)
- InviteTimeout (must greather or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- InactiveTimeout (must greather or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- Persistent Flag only can use with type DS (example value true or false)
*/
func (a *Client) AdminCreateConfigurationTemplateV1Short(params *AdminCreateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationTemplateV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateConfigurationTemplateV1",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateConfigurationTemplateV1Created:
		return v, nil
	case *AdminCreateConfigurationTemplateV1BadRequest:
		return nil, v
	case *AdminCreateConfigurationTemplateV1Unauthorized:
		return nil, v
	case *AdminCreateConfigurationTemplateV1Forbidden:
		return nil, v
	case *AdminCreateConfigurationTemplateV1Conflict:
		return nil, v
	case *AdminCreateConfigurationTemplateV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetAllConfigurationTemplatesV1Short instead.

AdminGetAllConfigurationTemplatesV1 get configuration templates. requires admin:namespace:{namespace}:session:configuration [read]
Get all template configurations in specified namespace.
*/
func (a *Client) AdminGetAllConfigurationTemplatesV1(params *AdminGetAllConfigurationTemplatesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigurationTemplatesV1OK, *AdminGetAllConfigurationTemplatesV1BadRequest, *AdminGetAllConfigurationTemplatesV1Unauthorized, *AdminGetAllConfigurationTemplatesV1Forbidden, *AdminGetAllConfigurationTemplatesV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigurationTemplatesV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllConfigurationTemplatesV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigurationTemplatesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigurationTemplatesV1OK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetAllConfigurationTemplatesV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminGetAllConfigurationTemplatesV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminGetAllConfigurationTemplatesV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminGetAllConfigurationTemplatesV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllConfigurationTemplatesV1Short get configuration templates. requires admin:namespace:{namespace}:session:configuration [read]
Get all template configurations in specified namespace.
*/
func (a *Client) AdminGetAllConfigurationTemplatesV1Short(params *AdminGetAllConfigurationTemplatesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigurationTemplatesV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigurationTemplatesV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllConfigurationTemplatesV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigurationTemplatesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigurationTemplatesV1OK:
		return v, nil
	case *AdminGetAllConfigurationTemplatesV1BadRequest:
		return nil, v
	case *AdminGetAllConfigurationTemplatesV1Unauthorized:
		return nil, v
	case *AdminGetAllConfigurationTemplatesV1Forbidden:
		return nil, v
	case *AdminGetAllConfigurationTemplatesV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetConfigurationTemplateV1Short instead.

AdminGetConfigurationTemplateV1 get configuration template. requires admin:namespace:{namespace}:session:configuration [read]
Get a template configuration.
*/
func (a *Client) AdminGetConfigurationTemplateV1(params *AdminGetConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationTemplateV1OK, *AdminGetConfigurationTemplateV1BadRequest, *AdminGetConfigurationTemplateV1Unauthorized, *AdminGetConfigurationTemplateV1Forbidden, *AdminGetConfigurationTemplateV1NotFound, *AdminGetConfigurationTemplateV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfigurationTemplateV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigurationTemplateV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminGetConfigurationTemplateV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminGetConfigurationTemplateV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminGetConfigurationTemplateV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminGetConfigurationTemplateV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminGetConfigurationTemplateV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigurationTemplateV1Short get configuration template. requires admin:namespace:{namespace}:session:configuration [read]
Get a template configuration.
*/
func (a *Client) AdminGetConfigurationTemplateV1Short(params *AdminGetConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationTemplateV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetConfigurationTemplateV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigurationTemplateV1OK:
		return v, nil
	case *AdminGetConfigurationTemplateV1BadRequest:
		return nil, v
	case *AdminGetConfigurationTemplateV1Unauthorized:
		return nil, v
	case *AdminGetConfigurationTemplateV1Forbidden:
		return nil, v
	case *AdminGetConfigurationTemplateV1NotFound:
		return nil, v
	case *AdminGetConfigurationTemplateV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateConfigurationTemplateV1Short instead.

AdminUpdateConfigurationTemplateV1 update configuration template. requires admin:namespace:{namespace}:session:configuration [update]
Update template configuration
Session configuration mandatory :
- name
- joinability (example value : OPEN, CLOSED, INVITE_ONLY)
- Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
- MinPlayers (must greather or equal 0)
- MaxPlayers (must greather than 0)
- InviteTimeout (must greather or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- InactiveTimeout (must greather or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
*/
func (a *Client) AdminUpdateConfigurationTemplateV1(params *AdminUpdateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationTemplateV1OK, *AdminUpdateConfigurationTemplateV1BadRequest, *AdminUpdateConfigurationTemplateV1Unauthorized, *AdminUpdateConfigurationTemplateV1Forbidden, *AdminUpdateConfigurationTemplateV1NotFound, *AdminUpdateConfigurationTemplateV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateConfigurationTemplateV1",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigurationTemplateV1OK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminUpdateConfigurationTemplateV1BadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminUpdateConfigurationTemplateV1Unauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminUpdateConfigurationTemplateV1Forbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminUpdateConfigurationTemplateV1NotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminUpdateConfigurationTemplateV1InternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateConfigurationTemplateV1Short update configuration template. requires admin:namespace:{namespace}:session:configuration [update]
Update template configuration
Session configuration mandatory :
- name
- joinability (example value : OPEN, CLOSED, INVITE_ONLY)
- Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
- MinPlayers (must greather or equal 0)
- MaxPlayers (must greather than 0)
- InviteTimeout (must greather or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- InactiveTimeout (must greather or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
*/
func (a *Client) AdminUpdateConfigurationTemplateV1Short(params *AdminUpdateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationTemplateV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateConfigurationTemplateV1",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigurationTemplateV1OK:
		return v, nil
	case *AdminUpdateConfigurationTemplateV1BadRequest:
		return nil, v
	case *AdminUpdateConfigurationTemplateV1Unauthorized:
		return nil, v
	case *AdminUpdateConfigurationTemplateV1Forbidden:
		return nil, v
	case *AdminUpdateConfigurationTemplateV1NotFound:
		return nil, v
	case *AdminUpdateConfigurationTemplateV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteConfigurationTemplateV1Short instead.

AdminDeleteConfigurationTemplateV1 delete configuration template. requires admin:namespace:{namespace}:session:configuration [delete]
Delete a template configuration.
*/
func (a *Client) AdminDeleteConfigurationTemplateV1(params *AdminDeleteConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationTemplateV1NoContent, *AdminDeleteConfigurationTemplateV1BadRequest, *AdminDeleteConfigurationTemplateV1Unauthorized, *AdminDeleteConfigurationTemplateV1Forbidden, *AdminDeleteConfigurationTemplateV1InternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteConfigurationTemplateV1",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteConfigurationTemplateV1NoContent:
		return v, nil, nil, nil, nil, nil

	case *AdminDeleteConfigurationTemplateV1BadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminDeleteConfigurationTemplateV1Unauthorized:
		return nil, nil, v, nil, nil, nil

	case *AdminDeleteConfigurationTemplateV1Forbidden:
		return nil, nil, nil, v, nil, nil

	case *AdminDeleteConfigurationTemplateV1InternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteConfigurationTemplateV1Short delete configuration template. requires admin:namespace:{namespace}:session:configuration [delete]
Delete a template configuration.
*/
func (a *Client) AdminDeleteConfigurationTemplateV1Short(params *AdminDeleteConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationTemplateV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteConfigurationTemplateV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteConfigurationTemplateV1",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteConfigurationTemplateV1NoContent:
		return v, nil
	case *AdminDeleteConfigurationTemplateV1BadRequest:
		return nil, v
	case *AdminDeleteConfigurationTemplateV1Unauthorized:
		return nil, v
	case *AdminDeleteConfigurationTemplateV1Forbidden:
		return nil, v
	case *AdminDeleteConfigurationTemplateV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
