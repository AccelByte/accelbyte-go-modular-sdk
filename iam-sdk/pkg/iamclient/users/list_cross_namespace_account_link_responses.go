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

type ListCrossNamespaceAccountLinkResponse struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
}

func (m *ListCrossNamespaceAccountLinkResponse) Unpack() *iamclientmodels.ApiError {
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

// ListCrossNamespaceAccountLinkReader is a Reader for the ListCrossNamespaceAccountLink structure.
type ListCrossNamespaceAccountLinkReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListCrossNamespaceAccountLinkReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListCrossNamespaceAccountLinkOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListCrossNamespaceAccountLinkBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListCrossNamespaceAccountLinkUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewListCrossNamespaceAccountLinkForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewListCrossNamespaceAccountLinkNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/crosslink returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListCrossNamespaceAccountLinkOK creates a ListCrossNamespaceAccountLinkOK with default headers values
func NewListCrossNamespaceAccountLinkOK() *ListCrossNamespaceAccountLinkOK {
	return &ListCrossNamespaceAccountLinkOK{}
}

/*ListCrossNamespaceAccountLinkOK handles this case with default header values.

  Operation succeeded
*/
type ListCrossNamespaceAccountLinkOK struct {
}

func (o *ListCrossNamespaceAccountLinkOK) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/crosslink][%d] listCrossNamespaceAccountLinkOK ", 200)
}

func (o *ListCrossNamespaceAccountLinkOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewListCrossNamespaceAccountLinkBadRequest creates a ListCrossNamespaceAccountLinkBadRequest with default headers values
func NewListCrossNamespaceAccountLinkBadRequest() *ListCrossNamespaceAccountLinkBadRequest {
	return &ListCrossNamespaceAccountLinkBadRequest{}
}

/*ListCrossNamespaceAccountLinkBadRequest handles this case with default header values.

  Invalid request
*/
type ListCrossNamespaceAccountLinkBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *ListCrossNamespaceAccountLinkBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/crosslink][%d] listCrossNamespaceAccountLinkBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListCrossNamespaceAccountLinkBadRequest) ToJSONString() string {
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

func (o *ListCrossNamespaceAccountLinkBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *ListCrossNamespaceAccountLinkBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListCrossNamespaceAccountLinkUnauthorized creates a ListCrossNamespaceAccountLinkUnauthorized with default headers values
func NewListCrossNamespaceAccountLinkUnauthorized() *ListCrossNamespaceAccountLinkUnauthorized {
	return &ListCrossNamespaceAccountLinkUnauthorized{}
}

/*ListCrossNamespaceAccountLinkUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type ListCrossNamespaceAccountLinkUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *ListCrossNamespaceAccountLinkUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/crosslink][%d] listCrossNamespaceAccountLinkUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListCrossNamespaceAccountLinkUnauthorized) ToJSONString() string {
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

func (o *ListCrossNamespaceAccountLinkUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *ListCrossNamespaceAccountLinkUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListCrossNamespaceAccountLinkForbidden creates a ListCrossNamespaceAccountLinkForbidden with default headers values
func NewListCrossNamespaceAccountLinkForbidden() *ListCrossNamespaceAccountLinkForbidden {
	return &ListCrossNamespaceAccountLinkForbidden{}
}

/*ListCrossNamespaceAccountLinkForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type ListCrossNamespaceAccountLinkForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *ListCrossNamespaceAccountLinkForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/crosslink][%d] listCrossNamespaceAccountLinkForbidden  %+v", 403, o.ToJSONString())
}

func (o *ListCrossNamespaceAccountLinkForbidden) ToJSONString() string {
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

func (o *ListCrossNamespaceAccountLinkForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *ListCrossNamespaceAccountLinkForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListCrossNamespaceAccountLinkNotFound creates a ListCrossNamespaceAccountLinkNotFound with default headers values
func NewListCrossNamespaceAccountLinkNotFound() *ListCrossNamespaceAccountLinkNotFound {
	return &ListCrossNamespaceAccountLinkNotFound{}
}

/*ListCrossNamespaceAccountLinkNotFound handles this case with default header values.

  Data not found
*/
type ListCrossNamespaceAccountLinkNotFound struct {
}

func (o *ListCrossNamespaceAccountLinkNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/crosslink][%d] listCrossNamespaceAccountLinkNotFound ", 404)
}

func (o *ListCrossNamespaceAccountLinkNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
