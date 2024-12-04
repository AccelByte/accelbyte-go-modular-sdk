// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package backfill

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new backfill API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for backfill API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateBackfillShort(params *CreateBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*CreateBackfillResponse, error)
	GetBackfillProposalShort(params *GetBackfillProposalParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillProposalResponse, error)
	GetBackfillShort(params *GetBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillResponse, error)
	DeleteBackfillShort(params *DeleteBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBackfillResponse, error)
	AcceptBackfillShort(params *AcceptBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptBackfillResponse, error)
	RejectBackfillShort(params *RejectBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*RejectBackfillResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateBackfillShort create a backfill ticket
Create backfill ticket.
*/
func (a *Client) CreateBackfillShort(params *CreateBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*CreateBackfillResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateBackfillParams()
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
		ID:                 "CreateBackfill",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateBackfillCreated:
		response := &CreateBackfillResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateBackfillBadRequest:
		response := &CreateBackfillResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateBackfillUnauthorized:
		response := &CreateBackfillResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateBackfillForbidden:
		response := &CreateBackfillResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateBackfillNotFound:
		response := &CreateBackfillResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateBackfillConflict:
		response := &CreateBackfillResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateBackfillInternalServerError:
		response := &CreateBackfillResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetBackfillProposalShort get backfill proposal
Get backfill proposal
*/
func (a *Client) GetBackfillProposalShort(params *GetBackfillProposalParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillProposalResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBackfillProposalParams()
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
		ID:                 "GetBackfillProposal",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/proposal",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBackfillProposalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetBackfillProposalOK:
		response := &GetBackfillProposalResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetBackfillProposalBadRequest:
		response := &GetBackfillProposalResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetBackfillProposalUnauthorized:
		response := &GetBackfillProposalResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetBackfillProposalForbidden:
		response := &GetBackfillProposalResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetBackfillProposalNotFound:
		response := &GetBackfillProposalResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetBackfillProposalInternalServerError:
		response := &GetBackfillProposalResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetBackfillShort get a backfill ticket
Get backfill ticket by ID
*/
func (a *Client) GetBackfillShort(params *GetBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBackfillParams()
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
		ID:                 "GetBackfill",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/{backfillID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetBackfillOK:
		response := &GetBackfillResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetBackfillBadRequest:
		response := &GetBackfillResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetBackfillUnauthorized:
		response := &GetBackfillResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetBackfillForbidden:
		response := &GetBackfillResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetBackfillNotFound:
		response := &GetBackfillResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetBackfillInternalServerError:
		response := &GetBackfillResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteBackfillShort delete a backfill ticket
Delete backfill ticket.
*/
func (a *Client) DeleteBackfillShort(params *DeleteBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBackfillResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteBackfillParams()
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
		ID:                 "DeleteBackfill",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/{backfillID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteBackfillNoContent:
		response := &DeleteBackfillResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteBackfillUnauthorized:
		response := &DeleteBackfillResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteBackfillForbidden:
		response := &DeleteBackfillResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteBackfillNotFound:
		response := &DeleteBackfillResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteBackfillInternalServerError:
		response := &DeleteBackfillResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AcceptBackfillShort accept a backfill proposal
Accept backfill proposal.
Field **acceptedTicketIds** can be used to accept specific tickets within a backfill proposal. If the ticketIDs are not mentioned in this field, those tickets will be rejected and reactivated for future proposals.
If **acceptedTicketIds** is nil or not specified, then all tickets in the proposal will be accepted.
*/
func (a *Client) AcceptBackfillShort(params *AcceptBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptBackfillResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcceptBackfillParams()
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
		ID:                 "AcceptBackfill",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcceptBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AcceptBackfillOK:
		response := &AcceptBackfillResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AcceptBackfillBadRequest:
		response := &AcceptBackfillResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptBackfillUnauthorized:
		response := &AcceptBackfillResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptBackfillForbidden:
		response := &AcceptBackfillResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptBackfillNotFound:
		response := &AcceptBackfillResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptBackfillInternalServerError:
		response := &AcceptBackfillResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RejectBackfillShort reject a backfill proposal
Reject backfill proposal
*/
func (a *Client) RejectBackfillShort(params *RejectBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*RejectBackfillResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRejectBackfillParams()
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
		ID:                 "RejectBackfill",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RejectBackfillReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RejectBackfillOK:
		response := &RejectBackfillResponse{}

		response.IsSuccess = true

		return response, nil
	case *RejectBackfillBadRequest:
		response := &RejectBackfillResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectBackfillUnauthorized:
		response := &RejectBackfillResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectBackfillForbidden:
		response := &RejectBackfillResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectBackfillNotFound:
		response := &RejectBackfillResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectBackfillInternalServerError:
		response := &RejectBackfillResponse{}
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
