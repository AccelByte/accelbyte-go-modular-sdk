// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_player_record

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

type RetrievePlayerRecordsResponse struct {
	cloudsaveclientmodels.ApiResponse
	Data *cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse

	Error400 *cloudsaveclientmodels.ModelsResponseError
	Error401 *cloudsaveclientmodels.ModelsResponseError
	Error403 *cloudsaveclientmodels.ModelsResponseError
	Error500 *cloudsaveclientmodels.ModelsResponseError
}

func (m *RetrievePlayerRecordsResponse) Unpack() (*cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse, *cloudsaveclientmodels.ApiError) {
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
			return nil, &cloudsaveclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// RetrievePlayerRecordsReader is a Reader for the RetrievePlayerRecords structure.
type RetrievePlayerRecordsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrievePlayerRecordsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrievePlayerRecordsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRetrievePlayerRecordsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRetrievePlayerRecordsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRetrievePlayerRecordsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRetrievePlayerRecordsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/namespaces/{namespace}/users/me/records returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrievePlayerRecordsOK creates a RetrievePlayerRecordsOK with default headers values
func NewRetrievePlayerRecordsOK() *RetrievePlayerRecordsOK {
	return &RetrievePlayerRecordsOK{}
}

/*RetrievePlayerRecordsOK handles this case with default header values.

  Successful operation
*/
type RetrievePlayerRecordsOK struct {
	Payload *cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse
}

func (o *RetrievePlayerRecordsOK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/me/records][%d] retrievePlayerRecordsOK  %+v", 200, o.ToJSONString())
}

func (o *RetrievePlayerRecordsOK) ToJSONString() string {
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

func (o *RetrievePlayerRecordsOK) GetPayload() *cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse {
	return o.Payload
}

func (o *RetrievePlayerRecordsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrievePlayerRecordsBadRequest creates a RetrievePlayerRecordsBadRequest with default headers values
func NewRetrievePlayerRecordsBadRequest() *RetrievePlayerRecordsBadRequest {
	return &RetrievePlayerRecordsBadRequest{}
}

/*RetrievePlayerRecordsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18113</td><td>invalid request body</td></tr></table>
*/
type RetrievePlayerRecordsBadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *RetrievePlayerRecordsBadRequest) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/me/records][%d] retrievePlayerRecordsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RetrievePlayerRecordsBadRequest) ToJSONString() string {
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

func (o *RetrievePlayerRecordsBadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *RetrievePlayerRecordsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrievePlayerRecordsUnauthorized creates a RetrievePlayerRecordsUnauthorized with default headers values
func NewRetrievePlayerRecordsUnauthorized() *RetrievePlayerRecordsUnauthorized {
	return &RetrievePlayerRecordsUnauthorized{}
}

/*RetrievePlayerRecordsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RetrievePlayerRecordsUnauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *RetrievePlayerRecordsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/me/records][%d] retrievePlayerRecordsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RetrievePlayerRecordsUnauthorized) ToJSONString() string {
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

func (o *RetrievePlayerRecordsUnauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *RetrievePlayerRecordsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrievePlayerRecordsForbidden creates a RetrievePlayerRecordsForbidden with default headers values
func NewRetrievePlayerRecordsForbidden() *RetrievePlayerRecordsForbidden {
	return &RetrievePlayerRecordsForbidden{}
}

/*RetrievePlayerRecordsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type RetrievePlayerRecordsForbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *RetrievePlayerRecordsForbidden) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/me/records][%d] retrievePlayerRecordsForbidden  %+v", 403, o.ToJSONString())
}

func (o *RetrievePlayerRecordsForbidden) ToJSONString() string {
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

func (o *RetrievePlayerRecordsForbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *RetrievePlayerRecordsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrievePlayerRecordsInternalServerError creates a RetrievePlayerRecordsInternalServerError with default headers values
func NewRetrievePlayerRecordsInternalServerError() *RetrievePlayerRecordsInternalServerError {
	return &RetrievePlayerRecordsInternalServerError{}
}

/*RetrievePlayerRecordsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18114</td><td>unable to retrieve list of key records</td></tr></table>
*/
type RetrievePlayerRecordsInternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *RetrievePlayerRecordsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/me/records][%d] retrievePlayerRecordsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RetrievePlayerRecordsInternalServerError) ToJSONString() string {
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

func (o *RetrievePlayerRecordsInternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *RetrievePlayerRecordsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
