// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclientmodels"
)

type GetListGroupByIDsAdminV2Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsGetGroupsResponseV1

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *GetListGroupByIDsAdminV2Response) Unpack() (*groupclientmodels.ModelsGetGroupsResponseV1, *groupclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 403:
			e, err := m.Error403.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &groupclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetListGroupByIDsAdminV2Reader is a Reader for the GetListGroupByIDsAdminV2 structure.
type GetListGroupByIDsAdminV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetListGroupByIDsAdminV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetListGroupByIDsAdminV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetListGroupByIDsAdminV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetListGroupByIDsAdminV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetListGroupByIDsAdminV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetListGroupByIDsAdminV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v2/admin/namespaces/{namespace}/groups/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetListGroupByIDsAdminV2OK creates a GetListGroupByIDsAdminV2OK with default headers values
func NewGetListGroupByIDsAdminV2OK() *GetListGroupByIDsAdminV2OK {
	return &GetListGroupByIDsAdminV2OK{}
}

/*GetListGroupByIDsAdminV2OK handles this case with default header values.

  OK
*/
type GetListGroupByIDsAdminV2OK struct {
	Payload *groupclientmodels.ModelsGetGroupsResponseV1
}

func (o *GetListGroupByIDsAdminV2OK) Error() string {
	return fmt.Sprintf("[POST /group/v2/admin/namespaces/{namespace}/groups/bulk][%d] getListGroupByIDsAdminV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetListGroupByIDsAdminV2OK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetListGroupByIDsAdminV2OK) GetPayload() *groupclientmodels.ModelsGetGroupsResponseV1 {
	return o.Payload
}

func (o *GetListGroupByIDsAdminV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGetGroupsResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListGroupByIDsAdminV2BadRequest creates a GetListGroupByIDsAdminV2BadRequest with default headers values
func NewGetListGroupByIDsAdminV2BadRequest() *GetListGroupByIDsAdminV2BadRequest {
	return &GetListGroupByIDsAdminV2BadRequest{}
}

/*GetListGroupByIDsAdminV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetListGroupByIDsAdminV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetListGroupByIDsAdminV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v2/admin/namespaces/{namespace}/groups/bulk][%d] getListGroupByIDsAdminV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetListGroupByIDsAdminV2BadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetListGroupByIDsAdminV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListGroupByIDsAdminV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListGroupByIDsAdminV2Unauthorized creates a GetListGroupByIDsAdminV2Unauthorized with default headers values
func NewGetListGroupByIDsAdminV2Unauthorized() *GetListGroupByIDsAdminV2Unauthorized {
	return &GetListGroupByIDsAdminV2Unauthorized{}
}

/*GetListGroupByIDsAdminV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetListGroupByIDsAdminV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetListGroupByIDsAdminV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v2/admin/namespaces/{namespace}/groups/bulk][%d] getListGroupByIDsAdminV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetListGroupByIDsAdminV2Unauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetListGroupByIDsAdminV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListGroupByIDsAdminV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListGroupByIDsAdminV2Forbidden creates a GetListGroupByIDsAdminV2Forbidden with default headers values
func NewGetListGroupByIDsAdminV2Forbidden() *GetListGroupByIDsAdminV2Forbidden {
	return &GetListGroupByIDsAdminV2Forbidden{}
}

/*GetListGroupByIDsAdminV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type GetListGroupByIDsAdminV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetListGroupByIDsAdminV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v2/admin/namespaces/{namespace}/groups/bulk][%d] getListGroupByIDsAdminV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetListGroupByIDsAdminV2Forbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetListGroupByIDsAdminV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListGroupByIDsAdminV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListGroupByIDsAdminV2InternalServerError creates a GetListGroupByIDsAdminV2InternalServerError with default headers values
func NewGetListGroupByIDsAdminV2InternalServerError() *GetListGroupByIDsAdminV2InternalServerError {
	return &GetListGroupByIDsAdminV2InternalServerError{}
}

/*GetListGroupByIDsAdminV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetListGroupByIDsAdminV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetListGroupByIDsAdminV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v2/admin/namespaces/{namespace}/groups/bulk][%d] getListGroupByIDsAdminV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetListGroupByIDsAdminV2InternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetListGroupByIDsAdminV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetListGroupByIDsAdminV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
