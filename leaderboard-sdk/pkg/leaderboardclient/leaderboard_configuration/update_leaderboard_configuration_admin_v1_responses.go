// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_configuration

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// UpdateLeaderboardConfigurationAdminV1Reader is a Reader for the UpdateLeaderboardConfigurationAdminV1 structure.
type UpdateLeaderboardConfigurationAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateLeaderboardConfigurationAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateLeaderboardConfigurationAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateLeaderboardConfigurationAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateLeaderboardConfigurationAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateLeaderboardConfigurationAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateLeaderboardConfigurationAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateLeaderboardConfigurationAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateLeaderboardConfigurationAdminV1OK creates a UpdateLeaderboardConfigurationAdminV1OK with default headers values
func NewUpdateLeaderboardConfigurationAdminV1OK() *UpdateLeaderboardConfigurationAdminV1OK {
	return &UpdateLeaderboardConfigurationAdminV1OK{}
}

/*UpdateLeaderboardConfigurationAdminV1OK handles this case with default header values.

  OK
*/
type UpdateLeaderboardConfigurationAdminV1OK struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardConfigResp
}

func (o *UpdateLeaderboardConfigurationAdminV1OK) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV1OK) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV1OK) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardConfigResp {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetLeaderboardConfigResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateLeaderboardConfigurationAdminV1BadRequest creates a UpdateLeaderboardConfigurationAdminV1BadRequest with default headers values
func NewUpdateLeaderboardConfigurationAdminV1BadRequest() *UpdateLeaderboardConfigurationAdminV1BadRequest {
	return &UpdateLeaderboardConfigurationAdminV1BadRequest{}
}

/*UpdateLeaderboardConfigurationAdminV1BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateLeaderboardConfigurationAdminV1BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *UpdateLeaderboardConfigurationAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV1BadRequest) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV1BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateLeaderboardConfigurationAdminV1Unauthorized creates a UpdateLeaderboardConfigurationAdminV1Unauthorized with default headers values
func NewUpdateLeaderboardConfigurationAdminV1Unauthorized() *UpdateLeaderboardConfigurationAdminV1Unauthorized {
	return &UpdateLeaderboardConfigurationAdminV1Unauthorized{}
}

/*UpdateLeaderboardConfigurationAdminV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateLeaderboardConfigurationAdminV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *UpdateLeaderboardConfigurationAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV1Unauthorized) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateLeaderboardConfigurationAdminV1Forbidden creates a UpdateLeaderboardConfigurationAdminV1Forbidden with default headers values
func NewUpdateLeaderboardConfigurationAdminV1Forbidden() *UpdateLeaderboardConfigurationAdminV1Forbidden {
	return &UpdateLeaderboardConfigurationAdminV1Forbidden{}
}

/*UpdateLeaderboardConfigurationAdminV1Forbidden handles this case with default header values.

  Forbidden
*/
type UpdateLeaderboardConfigurationAdminV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *UpdateLeaderboardConfigurationAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV1Forbidden) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateLeaderboardConfigurationAdminV1NotFound creates a UpdateLeaderboardConfigurationAdminV1NotFound with default headers values
func NewUpdateLeaderboardConfigurationAdminV1NotFound() *UpdateLeaderboardConfigurationAdminV1NotFound {
	return &UpdateLeaderboardConfigurationAdminV1NotFound{}
}

/*UpdateLeaderboardConfigurationAdminV1NotFound handles this case with default header values.

  Not Found
*/
type UpdateLeaderboardConfigurationAdminV1NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *UpdateLeaderboardConfigurationAdminV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV1NotFound) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV1NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateLeaderboardConfigurationAdminV1InternalServerError creates a UpdateLeaderboardConfigurationAdminV1InternalServerError with default headers values
func NewUpdateLeaderboardConfigurationAdminV1InternalServerError() *UpdateLeaderboardConfigurationAdminV1InternalServerError {
	return &UpdateLeaderboardConfigurationAdminV1InternalServerError{}
}

/*UpdateLeaderboardConfigurationAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateLeaderboardConfigurationAdminV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *UpdateLeaderboardConfigurationAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] updateLeaderboardConfigurationAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateLeaderboardConfigurationAdminV1InternalServerError) ToJSONString() string {
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

func (o *UpdateLeaderboardConfigurationAdminV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateLeaderboardConfigurationAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
