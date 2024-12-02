// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package certificate

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new certificate API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for certificate API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminUploadXBoxCertificateShort(params *AdminUploadXBoxCertificateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadXBoxCertificateResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminUploadXBoxCertificateShort upload certificates for xbox.
Upload certificates for XBox. Certificate must be in the valid form of PFX format.
*/
func (a *Client) AdminUploadXBoxCertificateShort(params *AdminUploadXBoxCertificateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUploadXBoxCertificateResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUploadXBoxCertificateParams()
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
		ID:                 "adminUploadXBoxCertificate",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUploadXBoxCertificateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUploadXBoxCertificateOK:
		response := &AdminUploadXBoxCertificateResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUploadXBoxCertificateBadRequest:
		response := &AdminUploadXBoxCertificateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUploadXBoxCertificateUnauthorized:
		response := &AdminUploadXBoxCertificateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUploadXBoxCertificateForbidden:
		response := &AdminUploadXBoxCertificateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUploadXBoxCertificateNotFound:
		response := &AdminUploadXBoxCertificateResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUploadXBoxCertificateInternalServerError:
		response := &AdminUploadXBoxCertificateResponse{}
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
