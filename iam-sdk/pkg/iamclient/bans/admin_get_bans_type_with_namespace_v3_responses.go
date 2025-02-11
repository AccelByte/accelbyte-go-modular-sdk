// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package bans

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

type AdminGetBansTypeWithNamespaceV3Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.AccountcommonBansV3

	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminGetBansTypeWithNamespaceV3Response) Unpack() (*iamclientmodels.AccountcommonBansV3, *iamclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminGetBansTypeWithNamespaceV3Reader is a Reader for the AdminGetBansTypeWithNamespaceV3 structure.
type AdminGetBansTypeWithNamespaceV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetBansTypeWithNamespaceV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetBansTypeWithNamespaceV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetBansTypeWithNamespaceV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetBansTypeWithNamespaceV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetBansTypeWithNamespaceV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/bantypes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetBansTypeWithNamespaceV3OK creates a AdminGetBansTypeWithNamespaceV3OK with default headers values
func NewAdminGetBansTypeWithNamespaceV3OK() *AdminGetBansTypeWithNamespaceV3OK {
	return &AdminGetBansTypeWithNamespaceV3OK{}
}

/*AdminGetBansTypeWithNamespaceV3OK handles this case with default header values.

  OK
*/
type AdminGetBansTypeWithNamespaceV3OK struct {
	Payload *iamclientmodels.AccountcommonBansV3
}

func (o *AdminGetBansTypeWithNamespaceV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/bantypes][%d] adminGetBansTypeWithNamespaceV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetBansTypeWithNamespaceV3OK) ToJSONString() string {
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

func (o *AdminGetBansTypeWithNamespaceV3OK) GetPayload() *iamclientmodels.AccountcommonBansV3 {
	return o.Payload
}

func (o *AdminGetBansTypeWithNamespaceV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonBansV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetBansTypeWithNamespaceV3Unauthorized creates a AdminGetBansTypeWithNamespaceV3Unauthorized with default headers values
func NewAdminGetBansTypeWithNamespaceV3Unauthorized() *AdminGetBansTypeWithNamespaceV3Unauthorized {
	return &AdminGetBansTypeWithNamespaceV3Unauthorized{}
}

/*AdminGetBansTypeWithNamespaceV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetBansTypeWithNamespaceV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetBansTypeWithNamespaceV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/bantypes][%d] adminGetBansTypeWithNamespaceV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetBansTypeWithNamespaceV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetBansTypeWithNamespaceV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetBansTypeWithNamespaceV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetBansTypeWithNamespaceV3Forbidden creates a AdminGetBansTypeWithNamespaceV3Forbidden with default headers values
func NewAdminGetBansTypeWithNamespaceV3Forbidden() *AdminGetBansTypeWithNamespaceV3Forbidden {
	return &AdminGetBansTypeWithNamespaceV3Forbidden{}
}

/*AdminGetBansTypeWithNamespaceV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetBansTypeWithNamespaceV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetBansTypeWithNamespaceV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/bantypes][%d] adminGetBansTypeWithNamespaceV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetBansTypeWithNamespaceV3Forbidden) ToJSONString() string {
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

func (o *AdminGetBansTypeWithNamespaceV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetBansTypeWithNamespaceV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetBansTypeWithNamespaceV3InternalServerError creates a AdminGetBansTypeWithNamespaceV3InternalServerError with default headers values
func NewAdminGetBansTypeWithNamespaceV3InternalServerError() *AdminGetBansTypeWithNamespaceV3InternalServerError {
	return &AdminGetBansTypeWithNamespaceV3InternalServerError{}
}

/*AdminGetBansTypeWithNamespaceV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetBansTypeWithNamespaceV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetBansTypeWithNamespaceV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/bantypes][%d] adminGetBansTypeWithNamespaceV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetBansTypeWithNamespaceV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetBansTypeWithNamespaceV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetBansTypeWithNamespaceV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
