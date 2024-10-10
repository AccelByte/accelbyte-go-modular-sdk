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
	CreateBackfillShort(params *CreateBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*CreateBackfillCreated, error)
	GetBackfillProposalShort(params *GetBackfillProposalParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillProposalOK, error)
	GetBackfillShort(params *GetBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillOK, error)
	DeleteBackfillShort(params *DeleteBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBackfillNoContent, error)
	AcceptBackfillShort(params *AcceptBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptBackfillOK, error)
	RejectBackfillShort(params *RejectBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*RejectBackfillOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateBackfillShort create a backfill ticket
Create backfill ticket.
*/
func (a *Client) CreateBackfillShort(params *CreateBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*CreateBackfillCreated, error) {
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
		return v, nil
	case *CreateBackfillBadRequest:
		return nil, v
	case *CreateBackfillUnauthorized:
		return nil, v
	case *CreateBackfillForbidden:
		return nil, v
	case *CreateBackfillNotFound:
		return nil, v
	case *CreateBackfillConflict:
		return nil, v
	case *CreateBackfillInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetBackfillProposalShort get backfill proposal
Get backfill proposal
*/
func (a *Client) GetBackfillProposalShort(params *GetBackfillProposalParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillProposalOK, error) {
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
		return v, nil
	case *GetBackfillProposalBadRequest:
		return nil, v
	case *GetBackfillProposalUnauthorized:
		return nil, v
	case *GetBackfillProposalForbidden:
		return nil, v
	case *GetBackfillProposalNotFound:
		return nil, v
	case *GetBackfillProposalInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetBackfillShort get a backfill ticket
Get backfill ticket by ID
*/
func (a *Client) GetBackfillShort(params *GetBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*GetBackfillOK, error) {
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
		return v, nil
	case *GetBackfillBadRequest:
		return nil, v
	case *GetBackfillUnauthorized:
		return nil, v
	case *GetBackfillForbidden:
		return nil, v
	case *GetBackfillNotFound:
		return nil, v
	case *GetBackfillInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteBackfillShort delete a backfill ticket
Delete backfill ticket.
*/
func (a *Client) DeleteBackfillShort(params *DeleteBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBackfillNoContent, error) {
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
		return v, nil
	case *DeleteBackfillUnauthorized:
		return nil, v
	case *DeleteBackfillForbidden:
		return nil, v
	case *DeleteBackfillNotFound:
		return nil, v
	case *DeleteBackfillInternalServerError:
		return nil, v

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
func (a *Client) AcceptBackfillShort(params *AcceptBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptBackfillOK, error) {
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
		return v, nil
	case *AcceptBackfillBadRequest:
		return nil, v
	case *AcceptBackfillUnauthorized:
		return nil, v
	case *AcceptBackfillForbidden:
		return nil, v
	case *AcceptBackfillNotFound:
		return nil, v
	case *AcceptBackfillInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RejectBackfillShort reject a backfill proposal
Reject backfill proposal
*/
func (a *Client) RejectBackfillShort(params *RejectBackfillParams, authInfo runtime.ClientAuthInfoWriter) (*RejectBackfillOK, error) {
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
		return v, nil
	case *RejectBackfillBadRequest:
		return nil, v
	case *RejectBackfillUnauthorized:
		return nil, v
	case *RejectBackfillForbidden:
		return nil, v
	case *RejectBackfillNotFound:
		return nil, v
	case *RejectBackfillInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
