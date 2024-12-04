// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package service_plugin_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new service plugin config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for service plugin config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetLootBoxPluginConfigShort(params *GetLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetLootBoxPluginConfigResponse, error)
	UpdateLootBoxPluginConfigShort(params *UpdateLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLootBoxPluginConfigResponse, error)
	DeleteLootBoxPluginConfigShort(params *DeleteLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLootBoxPluginConfigResponse, error)
	UplodLootBoxPluginConfigCertShort(params *UplodLootBoxPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UplodLootBoxPluginConfigCertResponse, error)
	GetLootBoxGrpcInfoShort(params *GetLootBoxGrpcInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetLootBoxGrpcInfoResponse, error)
	GetSectionPluginConfigShort(params *GetSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetSectionPluginConfigResponse, error)
	UpdateSectionPluginConfigShort(params *UpdateSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSectionPluginConfigResponse, error)
	DeleteSectionPluginConfigShort(params *DeleteSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSectionPluginConfigResponse, error)
	UploadSectionPluginConfigCertShort(params *UploadSectionPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UploadSectionPluginConfigCertResponse, error)
	GetServicePluginConfigShort(params *GetServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetServicePluginConfigResponse, error)
	UpdateServicePluginConfigShort(params *UpdateServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateServicePluginConfigResponse, error)
	DeleteServicePluginConfigShort(params *DeleteServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServicePluginConfigResponse, error)
	GetRevocationPluginConfigShort(params *GetRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationPluginConfigResponse, error)
	UpdateRevocationPluginConfigShort(params *UpdateRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationPluginConfigResponse, error)
	DeleteRevocationPluginConfigShort(params *DeleteRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationPluginConfigResponse, error)
	UploadRevocationPluginConfigCertShort(params *UploadRevocationPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UploadRevocationPluginConfigCertResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetLootBoxPluginConfigShort get lootbox plugin config
Get lootbox plugin config.
*/
func (a *Client) GetLootBoxPluginConfigShort(params *GetLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetLootBoxPluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLootBoxPluginConfigParams()
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
		ID:                 "getLootBoxPluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLootBoxPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLootBoxPluginConfigOK:
		response := &GetLootBoxPluginConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateLootBoxPluginConfigShort update lootbox plugin config
Update lootbox plugin config. Other detail info:
  * Returns : updated service plugin config
*/
func (a *Client) UpdateLootBoxPluginConfigShort(params *UpdateLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLootBoxPluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLootBoxPluginConfigParams()
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
		ID:                 "updateLootBoxPluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLootBoxPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateLootBoxPluginConfigOK:
		response := &UpdateLootBoxPluginConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateLootBoxPluginConfigUnprocessableEntity:
		response := &UpdateLootBoxPluginConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteLootBoxPluginConfigShort delete lootbox plugin config
Delete service plugin config.
*/
func (a *Client) DeleteLootBoxPluginConfigShort(params *DeleteLootBoxPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLootBoxPluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLootBoxPluginConfigParams()
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
		ID:                 "deleteLootBoxPluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLootBoxPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteLootBoxPluginConfigNoContent:
		response := &DeleteLootBoxPluginConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UplodLootBoxPluginConfigCertShort upload lootbox plugin custom config tls cert
Upload lootbox plugin custom config tls cert.Other detail info:
  * Returns : updated service plugin config
*/
func (a *Client) UplodLootBoxPluginConfigCertShort(params *UplodLootBoxPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UplodLootBoxPluginConfigCertResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUplodLootBoxPluginConfigCertParams()
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
		ID:                 "uplodLootBoxPluginConfigCert",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/customConfig/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UplodLootBoxPluginConfigCertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UplodLootBoxPluginConfigCertOK:
		response := &UplodLootBoxPluginConfigCertResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UplodLootBoxPluginConfigCertUnprocessableEntity:
		response := &UplodLootBoxPluginConfigCertResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLootBoxGrpcInfoShort get lootbox plugin grpc info
Get lootbox plugin gRPC info.
*/
func (a *Client) GetLootBoxGrpcInfoShort(params *GetLootBoxGrpcInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetLootBoxGrpcInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLootBoxGrpcInfoParams()
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
		ID:                 "getLootBoxGrpcInfo",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/grpcInfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLootBoxGrpcInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLootBoxGrpcInfoOK:
		response := &GetLootBoxGrpcInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSectionPluginConfigShort get section plugin config
Get section plugin config.
*/
func (a *Client) GetSectionPluginConfigShort(params *GetSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetSectionPluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSectionPluginConfigParams()
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
		ID:                 "getSectionPluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/section",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSectionPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSectionPluginConfigOK:
		response := &GetSectionPluginConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSectionPluginConfigShort update section plugin config
Update section config. Other detail info:
  * Returns : updated service plugin config
*/
func (a *Client) UpdateSectionPluginConfigShort(params *UpdateSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSectionPluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSectionPluginConfigParams()
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
		ID:                 "updateSectionPluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/section",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSectionPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSectionPluginConfigOK:
		response := &UpdateSectionPluginConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateSectionPluginConfigUnprocessableEntity:
		response := &UpdateSectionPluginConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSectionPluginConfigShort delete section plugin config
Delete section plugin config.
*/
func (a *Client) DeleteSectionPluginConfigShort(params *DeleteSectionPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSectionPluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSectionPluginConfigParams()
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
		ID:                 "deleteSectionPluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/section",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSectionPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSectionPluginConfigNoContent:
		response := &DeleteSectionPluginConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UploadSectionPluginConfigCertShort upload section plugin custom config tls cert
Upload section plugin custom config tls cert.Other detail info:
  * Returns : updated service plugin config
*/
func (a *Client) UploadSectionPluginConfigCertShort(params *UploadSectionPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UploadSectionPluginConfigCertResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadSectionPluginConfigCertParams()
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
		ID:                 "uploadSectionPluginConfigCert",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/plugins/section/customConfig/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadSectionPluginConfigCertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadSectionPluginConfigCertOK:
		response := &UploadSectionPluginConfigCertResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UploadSectionPluginConfigCertUnprocessableEntity:
		response := &UploadSectionPluginConfigCertResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetServicePluginConfigShort get service plugin config
Get service plugin config
*/
func (a *Client) GetServicePluginConfigShort(params *GetServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetServicePluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServicePluginConfigParams()
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
		ID:                 "getServicePluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServicePluginConfigOK:
		response := &GetServicePluginConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateServicePluginConfigShort update service plugin config service
Update catalog config. Other detail info:
  * Returns : updated service plugin config
*/
func (a *Client) UpdateServicePluginConfigShort(params *UpdateServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateServicePluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateServicePluginConfigParams()
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
		ID:                 "updateServicePluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateServicePluginConfigOK:
		response := &UpdateServicePluginConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateServicePluginConfigUnprocessableEntity:
		response := &UpdateServicePluginConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteServicePluginConfigShort delete service plugin config
Delete service plugin config
*/
func (a *Client) DeleteServicePluginConfigShort(params *DeleteServicePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServicePluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteServicePluginConfigParams()
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
		ID:                 "deleteServicePluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/configs/servicePlugin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteServicePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteServicePluginConfigNoContent:
		response := &DeleteServicePluginConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRevocationPluginConfigShort get revocation plugin config
Get revocation plugin config.
*/
func (a *Client) GetRevocationPluginConfigShort(params *GetRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationPluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRevocationPluginConfigParams()
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
		ID:                 "getRevocationPluginConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/plugins/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRevocationPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRevocationPluginConfigOK:
		response := &GetRevocationPluginConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRevocationPluginConfigShort update revocation plugin config
Update revocation plugin config. Other detail info:
  * Returns : updated service plugin config
*/
func (a *Client) UpdateRevocationPluginConfigShort(params *UpdateRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationPluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRevocationPluginConfigParams()
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
		ID:                 "updateRevocationPluginConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/plugins/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRevocationPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRevocationPluginConfigOK:
		response := &UpdateRevocationPluginConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateRevocationPluginConfigUnprocessableEntity:
		response := &UpdateRevocationPluginConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRevocationPluginConfigShort delete revocation plugin config
Delete service plugin config.
*/
func (a *Client) DeleteRevocationPluginConfigShort(params *DeleteRevocationPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationPluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRevocationPluginConfigParams()
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
		ID:                 "deleteRevocationPluginConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/plugins/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRevocationPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRevocationPluginConfigNoContent:
		response := &DeleteRevocationPluginConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UploadRevocationPluginConfigCertShort upload revocation plugin custom config tls cert
Upload revocation plugin custom config tls cert.Other detail info:
  * Returns : updated service plugin config
*/
func (a *Client) UploadRevocationPluginConfigCertShort(params *UploadRevocationPluginConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UploadRevocationPluginConfigCertResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadRevocationPluginConfigCertParams()
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
		ID:                 "uploadRevocationPluginConfigCert",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/plugins/revocation/revocation/customConfig/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadRevocationPluginConfigCertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadRevocationPluginConfigCertOK:
		response := &UploadRevocationPluginConfigCertResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UploadRevocationPluginConfigCertUnprocessableEntity:
		response := &UploadRevocationPluginConfigCertResponse{}
		response.Error422 = v.Payload

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
