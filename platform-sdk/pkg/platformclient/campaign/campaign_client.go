// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package campaign

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new campaign API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for campaign API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryCampaignsShort(params *QueryCampaignsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCampaignsResponse, error)
	CreateCampaignShort(params *CreateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCampaignResponse, error)
	GetCampaignShort(params *GetCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*GetCampaignResponse, error)
	UpdateCampaignShort(params *UpdateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCampaignResponse, error)
	RenameBatchShort(params *RenameBatchParams, authInfo runtime.ClientAuthInfoWriter) (*RenameBatchResponse, error)
	QueryCampaignBatchNamesShort(params *QueryCampaignBatchNamesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCampaignBatchNamesResponse, error)
	GetCampaignDynamicShort(params *GetCampaignDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetCampaignDynamicResponse, error)
	QueryCodesShort(params *QueryCodesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCodesResponse, error)
	CreateCodesShort(params *CreateCodesParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCodesResponse, error)
	DownloadShort(params *DownloadParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadResponse, error)
	BulkDisableCodesShort(params *BulkDisableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDisableCodesResponse, error)
	BulkEnableCodesShort(params *BulkEnableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkEnableCodesResponse, error)
	QueryRedeemHistoryShort(params *QueryRedeemHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRedeemHistoryResponse, error)
	GetCodeShort(params *GetCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetCodeResponse, error)
	DisableCodeShort(params *DisableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DisableCodeResponse, error)
	EnableCodeShort(params *EnableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*EnableCodeResponse, error)
	ApplyUserRedemptionShort(params *ApplyUserRedemptionParams, authInfo runtime.ClientAuthInfoWriter) (*ApplyUserRedemptionResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryCampaignsShort query campaigns
Query campaigns, if name is presented, it's fuzzy match.
Other detail info:

  * Returns : slice of campaigns
*/
func (a *Client) QueryCampaignsShort(params *QueryCampaignsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCampaignsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryCampaignsParams()
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
		ID:                 "queryCampaigns",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryCampaignsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryCampaignsOK:
		response := &QueryCampaignsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateCampaignShort create campaign
Create campaign.
Other detail info:

  * Returns : created campaign
*/
func (a *Client) CreateCampaignShort(params *CreateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCampaignResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateCampaignParams()
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
		ID:                 "createCampaign",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateCampaignReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateCampaignCreated:
		response := &CreateCampaignResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateCampaignBadRequest:
		response := &CreateCampaignResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateCampaignConflict:
		response := &CreateCampaignResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateCampaignUnprocessableEntity:
		response := &CreateCampaignResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCampaignShort get campaign
Get campaign info.
Other detail info:

  * Returns : campaign info
*/
func (a *Client) GetCampaignShort(params *GetCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*GetCampaignResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCampaignParams()
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
		ID:                 "getCampaign",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns/{campaignId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCampaignReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCampaignOK:
		response := &GetCampaignResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCampaignNotFound:
		response := &GetCampaignResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCampaignShort update campaign
Update campaign.
Other detail info:

  * Returns : updated campaign
*/
func (a *Client) UpdateCampaignShort(params *UpdateCampaignParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCampaignResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCampaignParams()
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
		ID:                 "updateCampaign",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns/{campaignId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCampaignReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCampaignOK:
		response := &UpdateCampaignResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateCampaignNotFound:
		response := &UpdateCampaignResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCampaignConflict:
		response := &UpdateCampaignResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCampaignUnprocessableEntity:
		response := &UpdateCampaignResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RenameBatchShort rename batch
Change campaign batch name.
Other detail info:
*/
func (a *Client) RenameBatchShort(params *RenameBatchParams, authInfo runtime.ClientAuthInfoWriter) (*RenameBatchResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRenameBatchParams()
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
		ID:                 "renameBatch",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns/{campaignId}/batchName",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RenameBatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RenameBatchNoContent:
		response := &RenameBatchResponse{}

		response.IsSuccess = true

		return response, nil
	case *RenameBatchNotFound:
		response := &RenameBatchResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryCampaignBatchNamesShort query campaign batch names
Query campaign batch name by fuzzy match.
Other detail info:

  * Returns : list of campaign batch names
*/
func (a *Client) QueryCampaignBatchNamesShort(params *QueryCampaignBatchNamesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCampaignBatchNamesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryCampaignBatchNamesParams()
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
		ID:                 "queryCampaignBatchNames",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns/{campaignId}/batchNames",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryCampaignBatchNamesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryCampaignBatchNamesOK:
		response := &QueryCampaignBatchNamesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCampaignDynamicShort get campaign dynamic
Get campaign dynamic.
Other detail info:

  * Returns : campaign dynamic
*/
func (a *Client) GetCampaignDynamicShort(params *GetCampaignDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetCampaignDynamicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCampaignDynamicParams()
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
		ID:                 "getCampaignDynamic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/campaigns/{campaignId}/dynamic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCampaignDynamicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCampaignDynamicOK:
		response := &GetCampaignDynamicResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCampaignDynamicNotFound:
		response := &GetCampaignDynamicResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryCodesShort query codes
Query campaign codes.
Other detail info:

  * Returns : list of codes
  * The batchName field in the codes response will be present only when the withBatchName parameter is true , or when the batchName filter is not blank.
*/
func (a *Client) QueryCodesShort(params *QueryCodesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryCodesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryCodesParams()
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
		ID:                 "queryCodes",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryCodesOK:
		response := &QueryCodesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateCodesShort create campaign codes
This API is used to create campaign codes, it will increase the batch No. based on last creation.
Other detail info:

  * Returns : number of codes created
*/
func (a *Client) CreateCodesShort(params *CreateCodesParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCodesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateCodesParams()
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
		ID:                 "createCodes",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateCodesCreated:
		response := &CreateCodesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateCodesNotFound:
		response := &CreateCodesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateCodesConflict:
		response := &CreateCodesResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateCodesUnprocessableEntity:
		response := &CreateCodesResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DownloadShort download codes
Download all or a batch of campaign's codes as a csv file.
Other detail info:

  * Returns : codes csv file
  * The csv file will always have Batch Name column, but this column will be filled only when the withBatchName parameter is true , or when the batchName filter is not blank.
*/
func (a *Client) DownloadShort(params *DownloadParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadParams()
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
		ID:                 "download",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/codes.csv",
		ProducesMediaTypes: []string{"text/csv"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadOK:
		response := &DownloadResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkDisableCodesShort bulk disable codes
Bulk disable codes.

Bulk disable campaign codes, all matched codes will be disabled except those have already been redeemed.
Other detail info:

  * Returns : the number of code actually disabled
*/
func (a *Client) BulkDisableCodesShort(params *BulkDisableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDisableCodesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkDisableCodesParams()
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
		ID:                 "bulkDisableCodes",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/disable/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkDisableCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkDisableCodesOK:
		response := &BulkDisableCodesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkEnableCodesShort bulk enable codes
Bulk enable campaign codes.
Other detail info:

  * Returns : the number of code actually enabled
*/
func (a *Client) BulkEnableCodesShort(params *BulkEnableCodesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkEnableCodesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkEnableCodesParams()
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
		ID:                 "bulkEnableCodes",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/enable/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkEnableCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkEnableCodesOK:
		response := &BulkEnableCodesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryRedeemHistoryShort query redeem history
Query redeem history.
Other detail info:

  * Returns : slice of redeem history
*/
func (a *Client) QueryRedeemHistoryShort(params *QueryRedeemHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRedeemHistoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRedeemHistoryParams()
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
		ID:                 "queryRedeemHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRedeemHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRedeemHistoryOK:
		response := &QueryRedeemHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCodeShort get code info
Get campaign code, it will check code whether available to redeem if redeemable true.
Other detail info:

  * Returns : code info
*/
func (a *Client) GetCodeShort(params *GetCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCodeParams()
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
		ID:                 "getCode",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCodeOK:
		response := &GetCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCodeNotFound:
		response := &GetCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCodeConflict:
		response := &GetCodeResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DisableCodeShort disable code
Disable code.

Disable an active code, the code can't be disabled if it has already been redeemed.
Other detail info:

  * Returns : disabled code
*/
func (a *Client) DisableCodeShort(params *DisableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DisableCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableCodeParams()
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
		ID:                 "disableCode",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/{code}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DisableCodeOK:
		response := &DisableCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DisableCodeNotFound:
		response := &DisableCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableCodeShort enable code
Enable code.
Other detail info:

  * Returns : enabled code
*/
func (a *Client) EnableCodeShort(params *EnableCodeParams, authInfo runtime.ClientAuthInfoWriter) (*EnableCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableCodeParams()
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
		ID:                 "enableCode",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/codes/{code}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableCodeOK:
		response := &EnableCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *EnableCodeNotFound:
		response := &EnableCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ApplyUserRedemptionShort redeem code
 [SERVICE COMMUNICATION ONLY] Redeem code. If the campaign which the code belongs to is INACTIVE, the code couldn't be redeemed even if its status is ACTIVE.
Other detail info:

  * Returns : Redeem result
*/
func (a *Client) ApplyUserRedemptionShort(params *ApplyUserRedemptionParams, authInfo runtime.ClientAuthInfoWriter) (*ApplyUserRedemptionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewApplyUserRedemptionParams()
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
		ID:                 "applyUserRedemption",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/redemption",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ApplyUserRedemptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ApplyUserRedemptionOK:
		response := &ApplyUserRedemptionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ApplyUserRedemptionNotFound:
		response := &ApplyUserRedemptionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ApplyUserRedemptionConflict:
		response := &ApplyUserRedemptionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ApplyUserRedemptionUnprocessableEntity:
		response := &ApplyUserRedemptionResponse{}
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
