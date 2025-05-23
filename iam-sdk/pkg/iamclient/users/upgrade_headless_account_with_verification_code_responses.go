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

type UpgradeHeadlessAccountWithVerificationCodeResponse struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelUserResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error409 string
}

func (m *UpgradeHeadlessAccountWithVerificationCodeResponse) Unpack() (*iamclientmodels.ModelUserResponse, *iamclientmodels.ApiError) {
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

		case 409:
			return nil, &iamclientmodels.ApiError{Code: "409", Message: m.Error409}

		default:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// UpgradeHeadlessAccountWithVerificationCodeReader is a Reader for the UpgradeHeadlessAccountWithVerificationCode structure.
type UpgradeHeadlessAccountWithVerificationCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpgradeHeadlessAccountWithVerificationCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpgradeHeadlessAccountWithVerificationCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpgradeHeadlessAccountWithVerificationCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpgradeHeadlessAccountWithVerificationCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpgradeHeadlessAccountWithVerificationCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpgradeHeadlessAccountWithVerificationCodeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpgradeHeadlessAccountWithVerificationCodeOK creates a UpgradeHeadlessAccountWithVerificationCodeOK with default headers values
func NewUpgradeHeadlessAccountWithVerificationCodeOK() *UpgradeHeadlessAccountWithVerificationCodeOK {
	return &UpgradeHeadlessAccountWithVerificationCodeOK{}
}

/*UpgradeHeadlessAccountWithVerificationCodeOK handles this case with default header values.

  OK
*/
type UpgradeHeadlessAccountWithVerificationCodeOK struct {
	Payload *iamclientmodels.ModelUserResponse
}

func (o *UpgradeHeadlessAccountWithVerificationCodeOK) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode][%d] upgradeHeadlessAccountWithVerificationCodeOK  %+v", 200, o.ToJSONString())
}

func (o *UpgradeHeadlessAccountWithVerificationCodeOK) ToJSONString() string {
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

func (o *UpgradeHeadlessAccountWithVerificationCodeOK) GetPayload() *iamclientmodels.ModelUserResponse {
	return o.Payload
}

func (o *UpgradeHeadlessAccountWithVerificationCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpgradeHeadlessAccountWithVerificationCodeBadRequest creates a UpgradeHeadlessAccountWithVerificationCodeBadRequest with default headers values
func NewUpgradeHeadlessAccountWithVerificationCodeBadRequest() *UpgradeHeadlessAccountWithVerificationCodeBadRequest {
	return &UpgradeHeadlessAccountWithVerificationCodeBadRequest{}
}

/*UpgradeHeadlessAccountWithVerificationCodeBadRequest handles this case with default header values.

  Invalid request
*/
type UpgradeHeadlessAccountWithVerificationCodeBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpgradeHeadlessAccountWithVerificationCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode][%d] upgradeHeadlessAccountWithVerificationCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpgradeHeadlessAccountWithVerificationCodeBadRequest) ToJSONString() string {
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

func (o *UpgradeHeadlessAccountWithVerificationCodeBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpgradeHeadlessAccountWithVerificationCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpgradeHeadlessAccountWithVerificationCodeUnauthorized creates a UpgradeHeadlessAccountWithVerificationCodeUnauthorized with default headers values
func NewUpgradeHeadlessAccountWithVerificationCodeUnauthorized() *UpgradeHeadlessAccountWithVerificationCodeUnauthorized {
	return &UpgradeHeadlessAccountWithVerificationCodeUnauthorized{}
}

/*UpgradeHeadlessAccountWithVerificationCodeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpgradeHeadlessAccountWithVerificationCodeUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpgradeHeadlessAccountWithVerificationCodeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode][%d] upgradeHeadlessAccountWithVerificationCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpgradeHeadlessAccountWithVerificationCodeUnauthorized) ToJSONString() string {
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

func (o *UpgradeHeadlessAccountWithVerificationCodeUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpgradeHeadlessAccountWithVerificationCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpgradeHeadlessAccountWithVerificationCodeForbidden creates a UpgradeHeadlessAccountWithVerificationCodeForbidden with default headers values
func NewUpgradeHeadlessAccountWithVerificationCodeForbidden() *UpgradeHeadlessAccountWithVerificationCodeForbidden {
	return &UpgradeHeadlessAccountWithVerificationCodeForbidden{}
}

/*UpgradeHeadlessAccountWithVerificationCodeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpgradeHeadlessAccountWithVerificationCodeForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpgradeHeadlessAccountWithVerificationCodeForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode][%d] upgradeHeadlessAccountWithVerificationCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpgradeHeadlessAccountWithVerificationCodeForbidden) ToJSONString() string {
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

func (o *UpgradeHeadlessAccountWithVerificationCodeForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpgradeHeadlessAccountWithVerificationCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpgradeHeadlessAccountWithVerificationCodeConflict creates a UpgradeHeadlessAccountWithVerificationCodeConflict with default headers values
func NewUpgradeHeadlessAccountWithVerificationCodeConflict() *UpgradeHeadlessAccountWithVerificationCodeConflict {
	return &UpgradeHeadlessAccountWithVerificationCodeConflict{}
}

/*UpgradeHeadlessAccountWithVerificationCodeConflict handles this case with default header values.

  Conflict
*/
type UpgradeHeadlessAccountWithVerificationCodeConflict struct {
}

func (o *UpgradeHeadlessAccountWithVerificationCodeConflict) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode][%d] upgradeHeadlessAccountWithVerificationCodeConflict ", 409)
}

func (o *UpgradeHeadlessAccountWithVerificationCodeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
