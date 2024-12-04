// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package data_retrieval_s2_s

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new data retrieval s2 s API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for data retrieval s2 s API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	S2SGetListFinishedPersonalDataRequestShort(params *S2SGetListFinishedPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGetListFinishedPersonalDataRequestResponse, error)
	S2SGetDataRequestByRequestIDShort(params *S2SGetDataRequestByRequestIDParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGetDataRequestByRequestIDResponse, error)
	S2SRequestDataRetrievalShort(params *S2SRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*S2SRequestDataRetrievalResponse, error)
	S2SGeneratePersonalDataURLShort(params *S2SGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGeneratePersonalDataURLResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
S2SGetListFinishedPersonalDataRequestShort get list of finished personal data requests
Scope: account

Get list of finished personal data requests based on the finished time period.
Unfinished personal data requests will not appear here, i.e. have Status **Pending**, **In-Progress** or **Canceled**.

**Anonymize userId for deleted account:**
For user accounts that have been deleted, the **userId** field in this API will be anonymized automatically after **7 days** from the success deletion.
This measure is implemented to ensure compliance with GDPR regulations. Please make sure to synchronize the data from this API before it undergoes anonymization.

---
## This API for S2S integration purpose only
*/
func (a *Client) S2SGetListFinishedPersonalDataRequestShort(params *S2SGetListFinishedPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGetListFinishedPersonalDataRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SGetListFinishedPersonalDataRequestParams()
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
		ID:                 "S2SGetListFinishedPersonalDataRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/requests/finished",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SGetListFinishedPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *S2SGetListFinishedPersonalDataRequestOK:
		response := &S2SGetListFinishedPersonalDataRequestResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *S2SGetListFinishedPersonalDataRequestBadRequest:
		response := &S2SGetListFinishedPersonalDataRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *S2SGetListFinishedPersonalDataRequestUnauthorized:
		response := &S2SGetListFinishedPersonalDataRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *S2SGetListFinishedPersonalDataRequestForbidden:
		response := &S2SGetListFinishedPersonalDataRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *S2SGetListFinishedPersonalDataRequestInternalServerError:
		response := &S2SGetListFinishedPersonalDataRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
S2SGetDataRequestByRequestIDShort get personal data request by request id
Scope: account

Get Personal Data Request by Request Id.
If the request has been completed, it will return a download url for the data package.

---
## This API for S2S integration purpose only
*/
func (a *Client) S2SGetDataRequestByRequestIDShort(params *S2SGetDataRequestByRequestIDParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGetDataRequestByRequestIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SGetDataRequestByRequestIDParams()
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
		ID:                 "S2SGetDataRequestByRequestID",
		Method:             "GET",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/requests/{requestId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SGetDataRequestByRequestIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *S2SGetDataRequestByRequestIDOK:
		response := &S2SGetDataRequestByRequestIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *S2SGetDataRequestByRequestIDUnauthorized:
		response := &S2SGetDataRequestByRequestIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *S2SGetDataRequestByRequestIDNotFound:
		response := &S2SGetDataRequestByRequestIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *S2SGetDataRequestByRequestIDInternalServerError:
		response := &S2SGetDataRequestByRequestIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
S2SRequestDataRetrievalShort submit user personal data retrieval request
Scope: account

Submit user personal data retrieval request.

**Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

---
## This API for S2S integration purpose only

**Notes:**

1. This API will **not send GDPR email notification** both for player and admin notification.
*/
func (a *Client) S2SRequestDataRetrievalShort(params *S2SRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*S2SRequestDataRetrievalResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SRequestDataRetrievalParams()
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
		ID:                 "S2SRequestDataRetrieval",
		Method:             "POST",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SRequestDataRetrievalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *S2SRequestDataRetrievalCreated:
		response := &S2SRequestDataRetrievalResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *S2SRequestDataRetrievalBadRequest:
		response := &S2SRequestDataRetrievalResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *S2SRequestDataRetrievalUnauthorized:
		response := &S2SRequestDataRetrievalResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *S2SRequestDataRetrievalNotFound:
		response := &S2SRequestDataRetrievalResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *S2SRequestDataRetrievalInternalServerError:
		response := &S2SRequestDataRetrievalResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
S2SGeneratePersonalDataURLShort generate personal data download url
Scope: account

Generate personal data download url.

**Limitation:** This API only accepts requests with a publisher userId and does not support game userId requests at this time.

---
## This API for S2S integration purpose only
*/
func (a *Client) S2SGeneratePersonalDataURLShort(params *S2SGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*S2SGeneratePersonalDataURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewS2SGeneratePersonalDataURLParams()
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
		ID:                 "S2SGeneratePersonalDataURL",
		Method:             "POST",
		PathPattern:        "/gdpr/s2s/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &S2SGeneratePersonalDataURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *S2SGeneratePersonalDataURLOK:
		response := &S2SGeneratePersonalDataURLResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *S2SGeneratePersonalDataURLBadRequest:
		response := &S2SGeneratePersonalDataURLResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *S2SGeneratePersonalDataURLUnauthorized:
		response := &S2SGeneratePersonalDataURLResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *S2SGeneratePersonalDataURLNotFound:
		response := &S2SGeneratePersonalDataURLResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *S2SGeneratePersonalDataURLInternalServerError:
		response := &S2SGeneratePersonalDataURLResponse{}
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
