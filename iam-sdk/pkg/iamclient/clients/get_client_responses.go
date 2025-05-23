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

type GetClientResponse struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ClientmodelClientResponse

	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
}

func (m *GetClientResponse) Unpack() (*iamclientmodels.ClientmodelClientResponse, *iamclientmodels.ApiError) {
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

		case 404:
			return nil, &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		default:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetClientReader is a Reader for the GetClient structure.
type GetClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetClientOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetClientForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetClientNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/clients/{clientId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetClientOK creates a GetClientOK with default headers values
func NewGetClientOK() *GetClientOK {
	return &GetClientOK{}
}

/*GetClientOK handles this case with default header values.

  OK
*/
type GetClientOK struct {
	Payload *iamclientmodels.ClientmodelClientResponse
}

func (o *GetClientOK) Error() string {
	return fmt.Sprintf("[GET /iam/clients/{clientId}][%d] getClientOK  %+v", 200, o.ToJSONString())
}

func (o *GetClientOK) ToJSONString() string {
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

func (o *GetClientOK) GetPayload() *iamclientmodels.ClientmodelClientResponse {
	return o.Payload
}

func (o *GetClientOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ClientmodelClientResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetClientUnauthorized creates a GetClientUnauthorized with default headers values
func NewGetClientUnauthorized() *GetClientUnauthorized {
	return &GetClientUnauthorized{}
}

/*GetClientUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetClientUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetClientUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/clients/{clientId}][%d] getClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetClientUnauthorized) ToJSONString() string {
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

func (o *GetClientUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetClientForbidden creates a GetClientForbidden with default headers values
func NewGetClientForbidden() *GetClientForbidden {
	return &GetClientForbidden{}
}

/*GetClientForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetClientForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetClientForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/clients/{clientId}][%d] getClientForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetClientForbidden) ToJSONString() string {
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

func (o *GetClientForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetClientForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetClientNotFound creates a GetClientNotFound with default headers values
func NewGetClientNotFound() *GetClientNotFound {
	return &GetClientNotFound{}
}

/*GetClientNotFound handles this case with default header values.

  Data not found
*/
type GetClientNotFound struct {
}

func (o *GetClientNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/clients/{clientId}][%d] getClientNotFound ", 404)
}

func (o *GetClientNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
