// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

type AdminGetUserMappingResponse struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelGetUserMappingV3

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
}

func (m *AdminGetUserMappingResponse) Unpack() (*iamclientmodels.ModelGetUserMappingV3, *iamclientmodels.ApiError) {
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

// AdminGetUserMappingReader is a Reader for the AdminGetUserMapping structure.
type AdminGetUserMappingReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserMappingReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserMappingOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetUserMappingBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserMappingUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserMappingForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserMappingNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserMappingOK creates a AdminGetUserMappingOK with default headers values
func NewAdminGetUserMappingOK() *AdminGetUserMappingOK {
	return &AdminGetUserMappingOK{}
}

/*AdminGetUserMappingOK handles this case with default header values.

  OK
*/
type AdminGetUserMappingOK struct {
	Payload *iamclientmodels.ModelGetUserMappingV3
}

func (o *AdminGetUserMappingOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] adminGetUserMappingOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserMappingOK) ToJSONString() string {
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

func (o *AdminGetUserMappingOK) GetPayload() *iamclientmodels.ModelGetUserMappingV3 {
	return o.Payload
}

func (o *AdminGetUserMappingOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelGetUserMappingV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserMappingBadRequest creates a AdminGetUserMappingBadRequest with default headers values
func NewAdminGetUserMappingBadRequest() *AdminGetUserMappingBadRequest {
	return &AdminGetUserMappingBadRequest{}
}

/*AdminGetUserMappingBadRequest handles this case with default header values.

  Invalid request
*/
type AdminGetUserMappingBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserMappingBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] adminGetUserMappingBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetUserMappingBadRequest) ToJSONString() string {
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

func (o *AdminGetUserMappingBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserMappingBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserMappingUnauthorized creates a AdminGetUserMappingUnauthorized with default headers values
func NewAdminGetUserMappingUnauthorized() *AdminGetUserMappingUnauthorized {
	return &AdminGetUserMappingUnauthorized{}
}

/*AdminGetUserMappingUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetUserMappingUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserMappingUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] adminGetUserMappingUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserMappingUnauthorized) ToJSONString() string {
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

func (o *AdminGetUserMappingUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserMappingUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserMappingForbidden creates a AdminGetUserMappingForbidden with default headers values
func NewAdminGetUserMappingForbidden() *AdminGetUserMappingForbidden {
	return &AdminGetUserMappingForbidden{}
}

/*AdminGetUserMappingForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetUserMappingForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserMappingForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] adminGetUserMappingForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserMappingForbidden) ToJSONString() string {
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

func (o *AdminGetUserMappingForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserMappingForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserMappingNotFound creates a AdminGetUserMappingNotFound with default headers values
func NewAdminGetUserMappingNotFound() *AdminGetUserMappingNotFound {
	return &AdminGetUserMappingNotFound{}
}

/*AdminGetUserMappingNotFound handles this case with default header values.

  Data not found
*/
type AdminGetUserMappingNotFound struct {
}

func (o *AdminGetUserMappingNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] adminGetUserMappingNotFound ", 404)
}

func (o *AdminGetUserMappingNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
