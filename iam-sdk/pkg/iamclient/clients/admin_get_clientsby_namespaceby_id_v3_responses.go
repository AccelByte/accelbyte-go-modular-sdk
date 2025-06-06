// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clients

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

type AdminGetClientsbyNamespacebyIDV3Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ClientmodelClientV3Response

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
}

func (m *AdminGetClientsbyNamespacebyIDV3Response) Unpack() (*iamclientmodels.ClientmodelClientV3Response, *iamclientmodels.ApiError) {
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
			e, err := m.Error404.TranslateToApiError()
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

// AdminGetClientsbyNamespacebyIDV3Reader is a Reader for the AdminGetClientsbyNamespacebyIDV3 structure.
type AdminGetClientsbyNamespacebyIDV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetClientsbyNamespacebyIDV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetClientsbyNamespacebyIDV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetClientsbyNamespacebyIDV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetClientsbyNamespacebyIDV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetClientsbyNamespacebyIDV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetClientsbyNamespacebyIDV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/clients/{clientId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetClientsbyNamespacebyIDV3OK creates a AdminGetClientsbyNamespacebyIDV3OK with default headers values
func NewAdminGetClientsbyNamespacebyIDV3OK() *AdminGetClientsbyNamespacebyIDV3OK {
	return &AdminGetClientsbyNamespacebyIDV3OK{}
}

/*AdminGetClientsbyNamespacebyIDV3OK handles this case with default header values.

  OK
*/
type AdminGetClientsbyNamespacebyIDV3OK struct {
	Payload *iamclientmodels.ClientmodelClientV3Response
}

func (o *AdminGetClientsbyNamespacebyIDV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/clients/{clientId}][%d] adminGetClientsbyNamespacebyIdV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetClientsbyNamespacebyIDV3OK) ToJSONString() string {
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

func (o *AdminGetClientsbyNamespacebyIDV3OK) GetPayload() *iamclientmodels.ClientmodelClientV3Response {
	return o.Payload
}

func (o *AdminGetClientsbyNamespacebyIDV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ClientmodelClientV3Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetClientsbyNamespacebyIDV3BadRequest creates a AdminGetClientsbyNamespacebyIDV3BadRequest with default headers values
func NewAdminGetClientsbyNamespacebyIDV3BadRequest() *AdminGetClientsbyNamespacebyIDV3BadRequest {
	return &AdminGetClientsbyNamespacebyIDV3BadRequest{}
}

/*AdminGetClientsbyNamespacebyIDV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetClientsbyNamespacebyIDV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetClientsbyNamespacebyIDV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/clients/{clientId}][%d] adminGetClientsbyNamespacebyIdV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetClientsbyNamespacebyIDV3BadRequest) ToJSONString() string {
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

func (o *AdminGetClientsbyNamespacebyIDV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetClientsbyNamespacebyIDV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetClientsbyNamespacebyIDV3Unauthorized creates a AdminGetClientsbyNamespacebyIDV3Unauthorized with default headers values
func NewAdminGetClientsbyNamespacebyIDV3Unauthorized() *AdminGetClientsbyNamespacebyIDV3Unauthorized {
	return &AdminGetClientsbyNamespacebyIDV3Unauthorized{}
}

/*AdminGetClientsbyNamespacebyIDV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetClientsbyNamespacebyIDV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetClientsbyNamespacebyIDV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/clients/{clientId}][%d] adminGetClientsbyNamespacebyIdV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetClientsbyNamespacebyIDV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetClientsbyNamespacebyIDV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetClientsbyNamespacebyIDV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetClientsbyNamespacebyIDV3Forbidden creates a AdminGetClientsbyNamespacebyIDV3Forbidden with default headers values
func NewAdminGetClientsbyNamespacebyIDV3Forbidden() *AdminGetClientsbyNamespacebyIDV3Forbidden {
	return &AdminGetClientsbyNamespacebyIDV3Forbidden{}
}

/*AdminGetClientsbyNamespacebyIDV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetClientsbyNamespacebyIDV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetClientsbyNamespacebyIDV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/clients/{clientId}][%d] adminGetClientsbyNamespacebyIdV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetClientsbyNamespacebyIDV3Forbidden) ToJSONString() string {
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

func (o *AdminGetClientsbyNamespacebyIDV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetClientsbyNamespacebyIDV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetClientsbyNamespacebyIDV3NotFound creates a AdminGetClientsbyNamespacebyIDV3NotFound with default headers values
func NewAdminGetClientsbyNamespacebyIDV3NotFound() *AdminGetClientsbyNamespacebyIDV3NotFound {
	return &AdminGetClientsbyNamespacebyIDV3NotFound{}
}

/*AdminGetClientsbyNamespacebyIDV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10365</td><td>client not found</td></tr></table>
*/
type AdminGetClientsbyNamespacebyIDV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetClientsbyNamespacebyIDV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/clients/{clientId}][%d] adminGetClientsbyNamespacebyIdV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetClientsbyNamespacebyIDV3NotFound) ToJSONString() string {
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

func (o *AdminGetClientsbyNamespacebyIDV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetClientsbyNamespacebyIDV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
