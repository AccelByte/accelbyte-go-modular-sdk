// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package revocation

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new revocation API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for revocation API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetPaymentCallbackConfig1(params *GetPaymentCallbackConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentCallbackConfig1OK, *GetPaymentCallbackConfig1NotFound, error)
	GetPaymentCallbackConfig1Short(params *GetPaymentCallbackConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentCallbackConfig1OK, error)
	UpdateRevocationConfig(params *UpdateRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationConfigOK, error)
	UpdateRevocationConfigShort(params *UpdateRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationConfigOK, error)
	DeleteRevocationConfig(params *DeleteRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationConfigNoContent, error)
	DeleteRevocationConfigShort(params *DeleteRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationConfigNoContent, error)
	QueryRevocationHistories(params *QueryRevocationHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRevocationHistoriesOK, error)
	QueryRevocationHistoriesShort(params *QueryRevocationHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRevocationHistoriesOK, error)
	DoRevocation(params *DoRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*DoRevocationOK, error)
	DoRevocationShort(params *DoRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*DoRevocationOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use GetPaymentCallbackConfig1Short instead.

GetPaymentCallbackConfig1 get revocation configuration
Get revocation configuration.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:REVOCATION, action=2 (READ)
  *  Returns : Revocation config
*/
func (a *Client) GetPaymentCallbackConfig1(params *GetPaymentCallbackConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentCallbackConfig1OK, *GetPaymentCallbackConfig1NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentCallbackConfig1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentCallbackConfig_1",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentCallbackConfig1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *GetPaymentCallbackConfig1OK:
		return v, nil, nil

	case *GetPaymentCallbackConfig1NotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPaymentCallbackConfig1Short get revocation configuration
Get revocation configuration.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:REVOCATION, action=2 (READ)
  *  Returns : Revocation config
*/
func (a *Client) GetPaymentCallbackConfig1Short(params *GetPaymentCallbackConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentCallbackConfig1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentCallbackConfig1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentCallbackConfig_1",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentCallbackConfig1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentCallbackConfig1OK:
		return v, nil
	case *GetPaymentCallbackConfig1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateRevocationConfigShort instead.

UpdateRevocationConfig update revocation configuration
Update revocation configuration.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:REVOCATION, action=4 (UPDATE)
  *  Returns : Revocation config
*/
func (a *Client) UpdateRevocationConfig(params *UpdateRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRevocationConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateRevocationConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRevocationConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRevocationConfigShort update revocation configuration
Update revocation configuration.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:REVOCATION, action=4 (UPDATE)
  *  Returns : Revocation config
*/
func (a *Client) UpdateRevocationConfigShort(params *UpdateRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRevocationConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateRevocationConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRevocationConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteRevocationConfigShort instead.

DeleteRevocationConfig delete revocation config
Delete revocation config.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:REVOCATION, action=8 (DELETE)
*/
func (a *Client) DeleteRevocationConfig(params *DeleteRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRevocationConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteRevocationConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRevocationConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRevocationConfigShort delete revocation config
Delete revocation config.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:REVOCATION, action=8 (DELETE)
*/
func (a *Client) DeleteRevocationConfigShort(params *DeleteRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRevocationConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteRevocationConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRevocationConfigNoContent:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use QueryRevocationHistoriesShort instead.

QueryRevocationHistories query revocation histories
Query revocation histories in a namespace.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:REVOCATION, action=2 (READ)
  *  Returns : query revocation history
*/
func (a *Client) QueryRevocationHistories(params *QueryRevocationHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRevocationHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRevocationHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryRevocationHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRevocationHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRevocationHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryRevocationHistoriesShort query revocation histories
Query revocation histories in a namespace.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:REVOCATION, action=2 (READ)
  *  Returns : query revocation history
*/
func (a *Client) QueryRevocationHistoriesShort(params *QueryRevocationHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRevocationHistoriesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRevocationHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryRevocationHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRevocationHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRevocationHistoriesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DoRevocationShort instead.

DoRevocation do revocation.
Do revocation.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:USER:{userId}:REVOCATION, action=4 (UPDATE)
  *  Returns : revocation results
*/
func (a *Client) DoRevocation(params *DoRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*DoRevocationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDoRevocationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "doRevocation",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DoRevocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DoRevocationOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DoRevocationShort do revocation.
Do revocation.
Other detail info:

  * Required permission : resource=ADMIN:NAMESPACE:{namespace}:USER:{userId}:REVOCATION, action=4 (UPDATE)
  *  Returns : revocation results
*/
func (a *Client) DoRevocationShort(params *DoRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*DoRevocationOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDoRevocationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "doRevocation",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DoRevocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DoRevocationOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
