// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

type GetRoleAdminStatusResponse struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelRoleAdminStatusResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
}

func (m *GetRoleAdminStatusResponse) Unpack() (*iamclientmodels.ModelRoleAdminStatusResponse, *iamclientmodels.ApiError) {
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

		case 404:
			return nil, &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		default:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetRoleAdminStatusReader is a Reader for the GetRoleAdminStatus structure.
type GetRoleAdminStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetRoleAdminStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetRoleAdminStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetRoleAdminStatusBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetRoleAdminStatusUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetRoleAdminStatusForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetRoleAdminStatusNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/roles/{roleId}/admin returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetRoleAdminStatusOK creates a GetRoleAdminStatusOK with default headers values
func NewGetRoleAdminStatusOK() *GetRoleAdminStatusOK {
	return &GetRoleAdminStatusOK{}
}

/*GetRoleAdminStatusOK handles this case with default header values.

  OK
*/
type GetRoleAdminStatusOK struct {
	Payload *iamclientmodels.ModelRoleAdminStatusResponse
}

func (o *GetRoleAdminStatusOK) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/admin][%d] getRoleAdminStatusOK  %+v", 200, o.ToJSONString())
}

func (o *GetRoleAdminStatusOK) ToJSONString() string {
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

func (o *GetRoleAdminStatusOK) GetPayload() *iamclientmodels.ModelRoleAdminStatusResponse {
	return o.Payload
}

func (o *GetRoleAdminStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleAdminStatusResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRoleAdminStatusBadRequest creates a GetRoleAdminStatusBadRequest with default headers values
func NewGetRoleAdminStatusBadRequest() *GetRoleAdminStatusBadRequest {
	return &GetRoleAdminStatusBadRequest{}
}

/*GetRoleAdminStatusBadRequest handles this case with default header values.

  Invalid request
*/
type GetRoleAdminStatusBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetRoleAdminStatusBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/admin][%d] getRoleAdminStatusBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetRoleAdminStatusBadRequest) ToJSONString() string {
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

func (o *GetRoleAdminStatusBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetRoleAdminStatusBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRoleAdminStatusUnauthorized creates a GetRoleAdminStatusUnauthorized with default headers values
func NewGetRoleAdminStatusUnauthorized() *GetRoleAdminStatusUnauthorized {
	return &GetRoleAdminStatusUnauthorized{}
}

/*GetRoleAdminStatusUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetRoleAdminStatusUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetRoleAdminStatusUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/admin][%d] getRoleAdminStatusUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetRoleAdminStatusUnauthorized) ToJSONString() string {
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

func (o *GetRoleAdminStatusUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetRoleAdminStatusUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRoleAdminStatusForbidden creates a GetRoleAdminStatusForbidden with default headers values
func NewGetRoleAdminStatusForbidden() *GetRoleAdminStatusForbidden {
	return &GetRoleAdminStatusForbidden{}
}

/*GetRoleAdminStatusForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetRoleAdminStatusForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetRoleAdminStatusForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/admin][%d] getRoleAdminStatusForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetRoleAdminStatusForbidden) ToJSONString() string {
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

func (o *GetRoleAdminStatusForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetRoleAdminStatusForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRoleAdminStatusNotFound creates a GetRoleAdminStatusNotFound with default headers values
func NewGetRoleAdminStatusNotFound() *GetRoleAdminStatusNotFound {
	return &GetRoleAdminStatusNotFound{}
}

/*GetRoleAdminStatusNotFound handles this case with default header values.

  Data not found
*/
type GetRoleAdminStatusNotFound struct {
}

func (o *GetRoleAdminStatusNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/admin][%d] getRoleAdminStatusNotFound ", 404)
}

func (o *GetRoleAdminStatusNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
