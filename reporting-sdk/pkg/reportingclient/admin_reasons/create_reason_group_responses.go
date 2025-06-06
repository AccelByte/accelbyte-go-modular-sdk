// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_reasons

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclientmodels"
)

type CreateReasonGroupResponse struct {
	reportingclientmodels.ApiResponse
	Data *reportingclientmodels.RestapiReasonGroupResponse

	Error400 *reportingclientmodels.RestapiErrorResponse
	Error409 *reportingclientmodels.RestapiErrorResponse
	Error500 *reportingclientmodels.RestapiErrorResponse
}

func (m *CreateReasonGroupResponse) Unpack() (*reportingclientmodels.RestapiReasonGroupResponse, *reportingclientmodels.ApiError) {
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

		case 409:
			e, err := m.Error409.TranslateToApiError()
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
			return nil, &reportingclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// CreateReasonGroupReader is a Reader for the CreateReasonGroup structure.
type CreateReasonGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateReasonGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateReasonGroupCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateReasonGroupBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateReasonGroupConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateReasonGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /reporting/v1/admin/namespaces/{namespace}/reasonGroups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateReasonGroupCreated creates a CreateReasonGroupCreated with default headers values
func NewCreateReasonGroupCreated() *CreateReasonGroupCreated {
	return &CreateReasonGroupCreated{}
}

/*CreateReasonGroupCreated handles this case with default header values.


 */
type CreateReasonGroupCreated struct {
	Payload *reportingclientmodels.RestapiReasonGroupResponse
}

func (o *CreateReasonGroupCreated) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/reasonGroups][%d] createReasonGroupCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateReasonGroupCreated) ToJSONString() string {
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

func (o *CreateReasonGroupCreated) GetPayload() *reportingclientmodels.RestapiReasonGroupResponse {
	return o.Payload
}

func (o *CreateReasonGroupCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiReasonGroupResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateReasonGroupBadRequest creates a CreateReasonGroupBadRequest with default headers values
func NewCreateReasonGroupBadRequest() *CreateReasonGroupBadRequest {
	return &CreateReasonGroupBadRequest{}
}

/*CreateReasonGroupBadRequest handles this case with default header values.


 */
type CreateReasonGroupBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *CreateReasonGroupBadRequest) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/reasonGroups][%d] createReasonGroupBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateReasonGroupBadRequest) ToJSONString() string {
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

func (o *CreateReasonGroupBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *CreateReasonGroupBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateReasonGroupConflict creates a CreateReasonGroupConflict with default headers values
func NewCreateReasonGroupConflict() *CreateReasonGroupConflict {
	return &CreateReasonGroupConflict{}
}

/*CreateReasonGroupConflict handles this case with default header values.


 */
type CreateReasonGroupConflict struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *CreateReasonGroupConflict) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/reasonGroups][%d] createReasonGroupConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateReasonGroupConflict) ToJSONString() string {
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

func (o *CreateReasonGroupConflict) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *CreateReasonGroupConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateReasonGroupInternalServerError creates a CreateReasonGroupInternalServerError with default headers values
func NewCreateReasonGroupInternalServerError() *CreateReasonGroupInternalServerError {
	return &CreateReasonGroupInternalServerError{}
}

/*CreateReasonGroupInternalServerError handles this case with default header values.


 */
type CreateReasonGroupInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *CreateReasonGroupInternalServerError) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/reasonGroups][%d] createReasonGroupInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateReasonGroupInternalServerError) ToJSONString() string {
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

func (o *CreateReasonGroupInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *CreateReasonGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
