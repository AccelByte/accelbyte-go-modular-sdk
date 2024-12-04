// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListAdminGameRecordV1Short(params *AdminListAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAdminGameRecordV1Response, error)
	AdminBulkGetAdminGameRecordV1Short(params *AdminBulkGetAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetAdminGameRecordV1Response, error)
	AdminGetAdminGameRecordV1Short(params *AdminGetAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAdminGameRecordV1Response, error)
	AdminPutAdminGameRecordV1Short(params *AdminPutAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminGameRecordV1Response, error)
	AdminPostAdminGameRecordV1Short(params *AdminPostAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostAdminGameRecordV1Response, error)
	AdminDeleteAdminGameRecordV1Short(params *AdminDeleteAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAdminGameRecordV1Response, error)
	BulkGetAdminPlayerRecordByUserIdsV1Short(params *BulkGetAdminPlayerRecordByUserIdsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetAdminPlayerRecordByUserIdsV1Response, error)
	AdminListAdminUserRecordsV1Short(params *AdminListAdminUserRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAdminUserRecordsV1Response, error)
	AdminBulkGetAdminPlayerRecordV1Short(params *AdminBulkGetAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetAdminPlayerRecordV1Response, error)
	AdminGetAdminPlayerRecordV1Short(params *AdminGetAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAdminPlayerRecordV1Response, error)
	AdminPutAdminPlayerRecordV1Short(params *AdminPutAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminPlayerRecordV1Response, error)
	AdminPostPlayerAdminRecordV1Short(params *AdminPostPlayerAdminRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerAdminRecordV1Response, error)
	AdminDeleteAdminPlayerRecordV1Short(params *AdminDeleteAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAdminPlayerRecordV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListAdminGameRecordV1Short list key of admin game record
Retrieve list of records key by namespace
*/
func (a *Client) AdminListAdminGameRecordV1Short(params *AdminListAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAdminGameRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListAdminGameRecordV1Params()
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
		ID:                 "adminListAdminGameRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListAdminGameRecordV1OK:
		response := &AdminListAdminGameRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListAdminGameRecordV1BadRequest:
		response := &AdminListAdminGameRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAdminGameRecordV1Unauthorized:
		response := &AdminListAdminGameRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAdminGameRecordV1Forbidden:
		response := &AdminListAdminGameRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAdminGameRecordV1InternalServerError:
		response := &AdminListAdminGameRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkGetAdminGameRecordV1Short bulk get admin game records
Bulk get admin game records. Maximum key per request 20.
*/
func (a *Client) AdminBulkGetAdminGameRecordV1Short(params *AdminBulkGetAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetAdminGameRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkGetAdminGameRecordV1Params()
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
		ID:                 "adminBulkGetAdminGameRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkGetAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkGetAdminGameRecordV1OK:
		response := &AdminBulkGetAdminGameRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBulkGetAdminGameRecordV1BadRequest:
		response := &AdminBulkGetAdminGameRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetAdminGameRecordV1Unauthorized:
		response := &AdminBulkGetAdminGameRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetAdminGameRecordV1Forbidden:
		response := &AdminBulkGetAdminGameRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetAdminGameRecordV1NotFound:
		response := &AdminBulkGetAdminGameRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetAdminGameRecordV1InternalServerError:
		response := &AdminBulkGetAdminGameRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAdminGameRecordV1Short get admin game record
Get a record by its key in namespace-level.
*/
func (a *Client) AdminGetAdminGameRecordV1Short(params *AdminGetAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAdminGameRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAdminGameRecordV1Params()
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
		ID:                 "adminGetAdminGameRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAdminGameRecordV1OK:
		response := &AdminGetAdminGameRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetAdminGameRecordV1Unauthorized:
		response := &AdminGetAdminGameRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAdminGameRecordV1Forbidden:
		response := &AdminGetAdminGameRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAdminGameRecordV1NotFound:
		response := &AdminGetAdminGameRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAdminGameRecordV1InternalServerError:
		response := &AdminGetAdminGameRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutAdminGameRecordV1Short create or replace admin game record
## Description

This endpoints will create new admin game record or replace the existing admin game record.

**Append example:**

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Restriction
This is the restriction of Key Naming for the record:
1. Cannot use **"."** as the key name
- `{ "data.2": "value" }`
2. Cannot use **"$"** as the prefix in key names
- `{ "$data": "value" }`


## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the admin record.
action:
- DELETE: record will be deleted after TTL is reached

**Request Body Example:**
```
{
"__META": {
"tags": ["tag1", "tag2"],
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
}
...
}
```
*/
func (a *Client) AdminPutAdminGameRecordV1Short(params *AdminPutAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminGameRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutAdminGameRecordV1Params()
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
		ID:                 "adminPutAdminGameRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutAdminGameRecordV1OK:
		response := &AdminPutAdminGameRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPutAdminGameRecordV1BadRequest:
		response := &AdminPutAdminGameRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutAdminGameRecordV1Unauthorized:
		response := &AdminPutAdminGameRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutAdminGameRecordV1Forbidden:
		response := &AdminPutAdminGameRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutAdminGameRecordV1InternalServerError:
		response := &AdminPutAdminGameRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostAdminGameRecordV1Short create or append admin game record
## Description

This endpoints will create new admin game record or append the existing admin game record.

**Append example:**

Example 1
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data1": "value", "data2": "new value" }`


Example 2
- Existing JSON:

`{ "data1": { "data2": "value" }`

- New JSON:

`{ "data1": { "data3": "new value" }`

- Result:

`{ "data1": { "data2": "value", "data3": "new value" }`


## Restriction
This is the restriction of Key Naming for the record:
1. Cannot use **"."** as the key name
- `{ "data.2": "value" }`
2. Cannot use **"$"** as the prefix in key names
- `{ "$data": "value" }`


## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the admin record.
action:
- DELETE: record will be deleted after TTL is reached

**Request Body Example:**
```
{
"__META": {
"tags": ["tag1", "tag2"],
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
}
...
}
```
*/
func (a *Client) AdminPostAdminGameRecordV1Short(params *AdminPostAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostAdminGameRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostAdminGameRecordV1Params()
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
		ID:                 "adminPostAdminGameRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostAdminGameRecordV1Created:
		response := &AdminPostAdminGameRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPostAdminGameRecordV1BadRequest:
		response := &AdminPostAdminGameRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostAdminGameRecordV1Unauthorized:
		response := &AdminPostAdminGameRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostAdminGameRecordV1Forbidden:
		response := &AdminPostAdminGameRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostAdminGameRecordV1InternalServerError:
		response := &AdminPostAdminGameRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAdminGameRecordV1Short delete admin game record
This endpoints delete game record in namespace-level
*/
func (a *Client) AdminDeleteAdminGameRecordV1Short(params *AdminDeleteAdminGameRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAdminGameRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAdminGameRecordV1Params()
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
		ID:                 "adminDeleteAdminGameRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAdminGameRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAdminGameRecordV1NoContent:
		response := &AdminDeleteAdminGameRecordV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteAdminGameRecordV1Unauthorized:
		response := &AdminDeleteAdminGameRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteAdminGameRecordV1Forbidden:
		response := &AdminDeleteAdminGameRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteAdminGameRecordV1NotFound:
		response := &AdminDeleteAdminGameRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteAdminGameRecordV1InternalServerError:
		response := &AdminDeleteAdminGameRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetAdminPlayerRecordByUserIdsV1Short bulk get admin player record by multiple user id
Bulk get admin player record by userIds, max allowed 20 at a time.
*/
func (a *Client) BulkGetAdminPlayerRecordByUserIdsV1Short(params *BulkGetAdminPlayerRecordByUserIdsV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetAdminPlayerRecordByUserIdsV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetAdminPlayerRecordByUserIdsV1Params()
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
		ID:                 "bulkGetAdminPlayerRecordByUserIdsV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/adminrecords/{key}/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetAdminPlayerRecordByUserIdsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetAdminPlayerRecordByUserIdsV1OK:
		response := &BulkGetAdminPlayerRecordByUserIdsV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetAdminPlayerRecordByUserIdsV1BadRequest:
		response := &BulkGetAdminPlayerRecordByUserIdsV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetAdminPlayerRecordByUserIdsV1Unauthorized:
		response := &BulkGetAdminPlayerRecordByUserIdsV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetAdminPlayerRecordByUserIdsV1Forbidden:
		response := &BulkGetAdminPlayerRecordByUserIdsV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetAdminPlayerRecordByUserIdsV1NotFound:
		response := &BulkGetAdminPlayerRecordByUserIdsV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetAdminPlayerRecordByUserIdsV1InternalServerError:
		response := &BulkGetAdminPlayerRecordByUserIdsV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListAdminUserRecordsV1Short list key of admin player record
Retrieve list of admin player records key and userID under given namespace.
*/
func (a *Client) AdminListAdminUserRecordsV1Short(params *AdminListAdminUserRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAdminUserRecordsV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListAdminUserRecordsV1Params()
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
		ID:                 "adminListAdminUserRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListAdminUserRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListAdminUserRecordsV1OK:
		response := &AdminListAdminUserRecordsV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListAdminUserRecordsV1BadRequest:
		response := &AdminListAdminUserRecordsV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAdminUserRecordsV1Unauthorized:
		response := &AdminListAdminUserRecordsV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAdminUserRecordsV1Forbidden:
		response := &AdminListAdminUserRecordsV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAdminUserRecordsV1InternalServerError:
		response := &AdminListAdminUserRecordsV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkGetAdminPlayerRecordV1Short bulk get admin player records
Bulk get admin player records. Maximum key per request 20.
*/
func (a *Client) AdminBulkGetAdminPlayerRecordV1Short(params *AdminBulkGetAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetAdminPlayerRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkGetAdminPlayerRecordV1Params()
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
		ID:                 "adminBulkGetAdminPlayerRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkGetAdminPlayerRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkGetAdminPlayerRecordV1OK:
		response := &AdminBulkGetAdminPlayerRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBulkGetAdminPlayerRecordV1BadRequest:
		response := &AdminBulkGetAdminPlayerRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetAdminPlayerRecordV1Unauthorized:
		response := &AdminBulkGetAdminPlayerRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetAdminPlayerRecordV1Forbidden:
		response := &AdminBulkGetAdminPlayerRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetAdminPlayerRecordV1NotFound:
		response := &AdminBulkGetAdminPlayerRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetAdminPlayerRecordV1InternalServerError:
		response := &AdminBulkGetAdminPlayerRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAdminPlayerRecordV1Short get admin player record
Get a admin record in user-level (arbitrary JSON data) by its key.
*/
func (a *Client) AdminGetAdminPlayerRecordV1Short(params *AdminGetAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAdminPlayerRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAdminPlayerRecordV1Params()
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
		ID:                 "adminGetAdminPlayerRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAdminPlayerRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAdminPlayerRecordV1OK:
		response := &AdminGetAdminPlayerRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetAdminPlayerRecordV1Unauthorized:
		response := &AdminGetAdminPlayerRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAdminPlayerRecordV1Forbidden:
		response := &AdminGetAdminPlayerRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAdminPlayerRecordV1NotFound:
		response := &AdminGetAdminPlayerRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAdminPlayerRecordV1InternalServerError:
		response := &AdminGetAdminPlayerRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutAdminPlayerRecordV1Short create or replace admin player record
## Description

This endpoints will create new admin player record or replace the existing admin player record.

**Replace behaviour:**
The existing value will be replaced completely with the new value.

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Restriction
This is the restriction of Key Naming for the record:
1. Cannot use **"."** as the key name
- `{ "data.2": "value" }`
2. Cannot use **"$"** as the prefix in key names
- `{ "$data": "value" }`


## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the admin record.
action:
- DELETE: record will be deleted after TTL is reached

**Request Body Example:**
```
{
"__META": {
"tags": ["tag1", "tag2"],
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
}
...
}
```
*/
func (a *Client) AdminPutAdminPlayerRecordV1Short(params *AdminPutAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminPlayerRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutAdminPlayerRecordV1Params()
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
		ID:                 "adminPutAdminPlayerRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutAdminPlayerRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutAdminPlayerRecordV1OK:
		response := &AdminPutAdminPlayerRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPutAdminPlayerRecordV1BadRequest:
		response := &AdminPutAdminPlayerRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutAdminPlayerRecordV1Unauthorized:
		response := &AdminPutAdminPlayerRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutAdminPlayerRecordV1Forbidden:
		response := &AdminPutAdminPlayerRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutAdminPlayerRecordV1InternalServerError:
		response := &AdminPutAdminPlayerRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostPlayerAdminRecordV1Short create or append admin player record
## Description

This endpoints will create new admin player record or append the existing admin game record.

**Append example:**

Example 1
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data1": "value", "data2": "new value" }`


Example 2
- Existing JSON:

`{ "data1": { "data2": "value" }`

- New JSON:

`{ "data1": { "data3": "new value" }`

- Result:

`{ "data1": { "data2": "value", "data3": "new value" }`


## Restriction
This is the restriction of Key Naming for the record:
1. Cannot use **"."** as the key name
- `{ "data.2": "value" }`
2. Cannot use **"$"** as the prefix in key names
- `{ "$data": "value" }`


## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the admin record.
action:
- DELETE: record will be deleted after TTL is reached

**Request Body Example:**
```
{
"__META": {
"tags": ["tag1", "tag2"],
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
}
...
}
```
*/
func (a *Client) AdminPostPlayerAdminRecordV1Short(params *AdminPostPlayerAdminRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerAdminRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerAdminRecordV1Params()
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
		ID:                 "adminPostPlayerAdminRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerAdminRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerAdminRecordV1Created:
		response := &AdminPostPlayerAdminRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPostPlayerAdminRecordV1BadRequest:
		response := &AdminPostPlayerAdminRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostPlayerAdminRecordV1Unauthorized:
		response := &AdminPostPlayerAdminRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostPlayerAdminRecordV1Forbidden:
		response := &AdminPostPlayerAdminRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostPlayerAdminRecordV1InternalServerError:
		response := &AdminPostPlayerAdminRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAdminPlayerRecordV1Short delete admin player record
Delete a record (arbitrary JSON data) in user-level with given key.
*/
func (a *Client) AdminDeleteAdminPlayerRecordV1Short(params *AdminDeleteAdminPlayerRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAdminPlayerRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAdminPlayerRecordV1Params()
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
		ID:                 "adminDeleteAdminPlayerRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAdminPlayerRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAdminPlayerRecordV1NoContent:
		response := &AdminDeleteAdminPlayerRecordV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteAdminPlayerRecordV1Unauthorized:
		response := &AdminDeleteAdminPlayerRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteAdminPlayerRecordV1Forbidden:
		response := &AdminDeleteAdminPlayerRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteAdminPlayerRecordV1NotFound:
		response := &AdminDeleteAdminPlayerRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteAdminPlayerRecordV1InternalServerError:
		response := &AdminDeleteAdminPlayerRecordV1Response{}
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
