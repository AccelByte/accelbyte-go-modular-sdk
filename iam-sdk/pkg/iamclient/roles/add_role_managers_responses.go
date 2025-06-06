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

type AddRoleManagersResponse struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
}

func (m *AddRoleManagersResponse) Unpack() *iamclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 403:
			e, err := m.Error403.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 404:
			return &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AddRoleManagersReader is a Reader for the AddRoleManagers structure.
type AddRoleManagersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddRoleManagersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAddRoleManagersNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddRoleManagersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddRoleManagersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAddRoleManagersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAddRoleManagersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/roles/{roleId}/managers returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddRoleManagersNoContent creates a AddRoleManagersNoContent with default headers values
func NewAddRoleManagersNoContent() *AddRoleManagersNoContent {
	return &AddRoleManagersNoContent{}
}

/*AddRoleManagersNoContent handles this case with default header values.

  Operation succeeded
*/
type AddRoleManagersNoContent struct {
}

func (o *AddRoleManagersNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/managers][%d] addRoleManagersNoContent ", 204)
}

func (o *AddRoleManagersNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAddRoleManagersBadRequest creates a AddRoleManagersBadRequest with default headers values
func NewAddRoleManagersBadRequest() *AddRoleManagersBadRequest {
	return &AddRoleManagersBadRequest{}
}

/*AddRoleManagersBadRequest handles this case with default header values.

  Invalid request
*/
type AddRoleManagersBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddRoleManagersBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/managers][%d] addRoleManagersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AddRoleManagersBadRequest) ToJSONString() string {
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

func (o *AddRoleManagersBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddRoleManagersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddRoleManagersUnauthorized creates a AddRoleManagersUnauthorized with default headers values
func NewAddRoleManagersUnauthorized() *AddRoleManagersUnauthorized {
	return &AddRoleManagersUnauthorized{}
}

/*AddRoleManagersUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AddRoleManagersUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddRoleManagersUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/managers][%d] addRoleManagersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AddRoleManagersUnauthorized) ToJSONString() string {
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

func (o *AddRoleManagersUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddRoleManagersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddRoleManagersForbidden creates a AddRoleManagersForbidden with default headers values
func NewAddRoleManagersForbidden() *AddRoleManagersForbidden {
	return &AddRoleManagersForbidden{}
}

/*AddRoleManagersForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AddRoleManagersForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddRoleManagersForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/managers][%d] addRoleManagersForbidden  %+v", 403, o.ToJSONString())
}

func (o *AddRoleManagersForbidden) ToJSONString() string {
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

func (o *AddRoleManagersForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddRoleManagersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddRoleManagersNotFound creates a AddRoleManagersNotFound with default headers values
func NewAddRoleManagersNotFound() *AddRoleManagersNotFound {
	return &AddRoleManagersNotFound{}
}

/*AddRoleManagersNotFound handles this case with default header values.

  Data not found
*/
type AddRoleManagersNotFound struct {
}

func (o *AddRoleManagersNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/managers][%d] addRoleManagersNotFound ", 404)
}

func (o *AddRoleManagersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
