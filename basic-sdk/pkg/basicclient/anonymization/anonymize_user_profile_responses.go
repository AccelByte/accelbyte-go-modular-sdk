// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
)

type AnonymizeUserProfileResponse struct {
	basicclientmodels.ApiResponse

	Error400 *basicclientmodels.ValidationErrorEntity
	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
}

func (m *AnonymizeUserProfileResponse) Unpack() *basicclientmodels.ApiError {
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

		default:
			return &basicclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AnonymizeUserProfileReader is a Reader for the AnonymizeUserProfile structure.
type AnonymizeUserProfileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AnonymizeUserProfileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAnonymizeUserProfileNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAnonymizeUserProfileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAnonymizeUserProfileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAnonymizeUserProfileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /basic/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAnonymizeUserProfileNoContent creates a AnonymizeUserProfileNoContent with default headers values
func NewAnonymizeUserProfileNoContent() *AnonymizeUserProfileNoContent {
	return &AnonymizeUserProfileNoContent{}
}

/*AnonymizeUserProfileNoContent handles this case with default header values.

  Anonymized profile successfully
*/
type AnonymizeUserProfileNoContent struct {
}

func (o *AnonymizeUserProfileNoContent) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/profiles][%d] anonymizeUserProfileNoContent ", 204)
}

func (o *AnonymizeUserProfileNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAnonymizeUserProfileBadRequest creates a AnonymizeUserProfileBadRequest with default headers values
func NewAnonymizeUserProfileBadRequest() *AnonymizeUserProfileBadRequest {
	return &AnonymizeUserProfileBadRequest{}
}

/*AnonymizeUserProfileBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AnonymizeUserProfileBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *AnonymizeUserProfileBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/profiles][%d] anonymizeUserProfileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AnonymizeUserProfileBadRequest) ToJSONString() string {
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

func (o *AnonymizeUserProfileBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *AnonymizeUserProfileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAnonymizeUserProfileUnauthorized creates a AnonymizeUserProfileUnauthorized with default headers values
func NewAnonymizeUserProfileUnauthorized() *AnonymizeUserProfileUnauthorized {
	return &AnonymizeUserProfileUnauthorized{}
}

/*AnonymizeUserProfileUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AnonymizeUserProfileUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *AnonymizeUserProfileUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/profiles][%d] anonymizeUserProfileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AnonymizeUserProfileUnauthorized) ToJSONString() string {
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

func (o *AnonymizeUserProfileUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AnonymizeUserProfileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAnonymizeUserProfileForbidden creates a AnonymizeUserProfileForbidden with default headers values
func NewAnonymizeUserProfileForbidden() *AnonymizeUserProfileForbidden {
	return &AnonymizeUserProfileForbidden{}
}

/*AnonymizeUserProfileForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AnonymizeUserProfileForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *AnonymizeUserProfileForbidden) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/profiles][%d] anonymizeUserProfileForbidden  %+v", 403, o.ToJSONString())
}

func (o *AnonymizeUserProfileForbidden) ToJSONString() string {
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

func (o *AnonymizeUserProfileForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AnonymizeUserProfileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
