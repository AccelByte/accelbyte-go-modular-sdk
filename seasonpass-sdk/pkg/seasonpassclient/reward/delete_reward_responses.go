// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

type DeleteRewardResponse struct {
	seasonpassclientmodels.ApiResponse

	Error400 *seasonpassclientmodels.ErrorEntity
	Error404 *seasonpassclientmodels.ErrorEntity
	Error409 *seasonpassclientmodels.ErrorEntity
}

func (m *DeleteRewardResponse) Unpack() *seasonpassclientmodels.ApiError {
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

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 409:
			e, err := m.Error409.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &seasonpassclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// DeleteRewardReader is a Reader for the DeleteReward structure.
type DeleteRewardReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteRewardReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteRewardNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteRewardBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteRewardNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDeleteRewardConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteRewardNoContent creates a DeleteRewardNoContent with default headers values
func NewDeleteRewardNoContent() *DeleteRewardNoContent {
	return &DeleteRewardNoContent{}
}

/*DeleteRewardNoContent handles this case with default header values.

  Delete reward successfully
*/
type DeleteRewardNoContent struct {
}

func (o *DeleteRewardNoContent) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}][%d] deleteRewardNoContent ", 204)
}

func (o *DeleteRewardNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteRewardBadRequest creates a DeleteRewardBadRequest with default headers values
func NewDeleteRewardBadRequest() *DeleteRewardBadRequest {
	return &DeleteRewardBadRequest{}
}

/*DeleteRewardBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type DeleteRewardBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *DeleteRewardBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}][%d] deleteRewardBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteRewardBadRequest) ToJSONString() string {
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

func (o *DeleteRewardBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteRewardBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteRewardNotFound creates a DeleteRewardNotFound with default headers values
func NewDeleteRewardNotFound() *DeleteRewardNotFound {
	return &DeleteRewardNotFound{}
}

/*DeleteRewardNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49144</td><td>Reward [{code}] does not exist</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type DeleteRewardNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *DeleteRewardNotFound) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}][%d] deleteRewardNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteRewardNotFound) ToJSONString() string {
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

func (o *DeleteRewardNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteRewardNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteRewardConflict creates a DeleteRewardConflict with default headers values
func NewDeleteRewardConflict() *DeleteRewardConflict {
	return &DeleteRewardConflict{}
}

/*DeleteRewardConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49171</td><td>Season is not updatable in status [{status}]</td></tr><tr><td>49179</td><td>Reward [{code}] is in use</td></tr></table>
*/
type DeleteRewardConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *DeleteRewardConflict) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}][%d] deleteRewardConflict  %+v", 409, o.ToJSONString())
}

func (o *DeleteRewardConflict) ToJSONString() string {
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

func (o *DeleteRewardConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteRewardConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
