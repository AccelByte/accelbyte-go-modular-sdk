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

type GetRoleManagersResponse struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelRoleManagersResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
}

func (m *GetRoleManagersResponse) Unpack() (*iamclientmodels.ModelRoleManagersResponse, *iamclientmodels.ApiError) {
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

// GetRoleManagersReader is a Reader for the GetRoleManagers structure.
type GetRoleManagersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetRoleManagersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetRoleManagersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetRoleManagersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetRoleManagersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetRoleManagersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetRoleManagersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/roles/{roleId}/managers returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetRoleManagersOK creates a GetRoleManagersOK with default headers values
func NewGetRoleManagersOK() *GetRoleManagersOK {
	return &GetRoleManagersOK{}
}

/*GetRoleManagersOK handles this case with default header values.

  OK
*/
type GetRoleManagersOK struct {
	Payload *iamclientmodels.ModelRoleManagersResponse
}

func (o *GetRoleManagersOK) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/managers][%d] getRoleManagersOK  %+v", 200, o.ToJSONString())
}

func (o *GetRoleManagersOK) ToJSONString() string {
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

func (o *GetRoleManagersOK) GetPayload() *iamclientmodels.ModelRoleManagersResponse {
	return o.Payload
}

func (o *GetRoleManagersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleManagersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRoleManagersBadRequest creates a GetRoleManagersBadRequest with default headers values
func NewGetRoleManagersBadRequest() *GetRoleManagersBadRequest {
	return &GetRoleManagersBadRequest{}
}

/*GetRoleManagersBadRequest handles this case with default header values.

  Invalid request
*/
type GetRoleManagersBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetRoleManagersBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/managers][%d] getRoleManagersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetRoleManagersBadRequest) ToJSONString() string {
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

func (o *GetRoleManagersBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetRoleManagersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetRoleManagersUnauthorized creates a GetRoleManagersUnauthorized with default headers values
func NewGetRoleManagersUnauthorized() *GetRoleManagersUnauthorized {
	return &GetRoleManagersUnauthorized{}
}

/*GetRoleManagersUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetRoleManagersUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetRoleManagersUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/managers][%d] getRoleManagersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetRoleManagersUnauthorized) ToJSONString() string {
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

func (o *GetRoleManagersUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetRoleManagersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetRoleManagersForbidden creates a GetRoleManagersForbidden with default headers values
func NewGetRoleManagersForbidden() *GetRoleManagersForbidden {
	return &GetRoleManagersForbidden{}
}

/*GetRoleManagersForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetRoleManagersForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetRoleManagersForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/managers][%d] getRoleManagersForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetRoleManagersForbidden) ToJSONString() string {
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

func (o *GetRoleManagersForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetRoleManagersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetRoleManagersNotFound creates a GetRoleManagersNotFound with default headers values
func NewGetRoleManagersNotFound() *GetRoleManagersNotFound {
	return &GetRoleManagersNotFound{}
}

/*GetRoleManagersNotFound handles this case with default header values.

  Data not found
*/
type GetRoleManagersNotFound struct {
}

func (o *GetRoleManagersNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/managers][%d] getRoleManagersNotFound ", 404)
}

func (o *GetRoleManagersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
