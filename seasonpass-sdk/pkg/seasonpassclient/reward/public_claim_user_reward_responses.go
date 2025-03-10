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

type PublicClaimUserRewardResponse struct {
	seasonpassclientmodels.ApiResponse
	Data *seasonpassclientmodels.ClaimableRewards

	Error400 *seasonpassclientmodels.ErrorEntity
	Error404 *seasonpassclientmodels.ErrorEntity
	Error409 *seasonpassclientmodels.ErrorEntity
}

func (m *PublicClaimUserRewardResponse) Unpack() (*seasonpassclientmodels.ClaimableRewards, *seasonpassclientmodels.ApiError) {
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

		case 404:
			e, err := m.Error404.TranslateToApiError()
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

		default:
			return nil, &seasonpassclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicClaimUserRewardReader is a Reader for the PublicClaimUserReward structure.
type PublicClaimUserRewardReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicClaimUserRewardReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicClaimUserRewardOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicClaimUserRewardBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicClaimUserRewardNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicClaimUserRewardConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicClaimUserRewardOK creates a PublicClaimUserRewardOK with default headers values
func NewPublicClaimUserRewardOK() *PublicClaimUserRewardOK {
	return &PublicClaimUserRewardOK{}
}

/*PublicClaimUserRewardOK handles this case with default header values.

  successful operation
*/
type PublicClaimUserRewardOK struct {
	Payload *seasonpassclientmodels.ClaimableRewards
}

func (o *PublicClaimUserRewardOK) Error() string {
	return fmt.Sprintf("[POST /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards][%d] publicClaimUserRewardOK  %+v", 200, o.ToJSONString())
}

func (o *PublicClaimUserRewardOK) ToJSONString() string {
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

func (o *PublicClaimUserRewardOK) GetPayload() *seasonpassclientmodels.ClaimableRewards {
	return o.Payload
}

func (o *PublicClaimUserRewardOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ClaimableRewards)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicClaimUserRewardBadRequest creates a PublicClaimUserRewardBadRequest with default headers values
func NewPublicClaimUserRewardBadRequest() *PublicClaimUserRewardBadRequest {
	return &PublicClaimUserRewardBadRequest{}
}

/*PublicClaimUserRewardBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49124</td><td>Manual claim not supported</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type PublicClaimUserRewardBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublicClaimUserRewardBadRequest) Error() string {
	return fmt.Sprintf("[POST /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards][%d] publicClaimUserRewardBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicClaimUserRewardBadRequest) ToJSONString() string {
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

func (o *PublicClaimUserRewardBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicClaimUserRewardBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicClaimUserRewardNotFound creates a PublicClaimUserRewardNotFound with default headers values
func NewPublicClaimUserRewardNotFound() *PublicClaimUserRewardNotFound {
	return &PublicClaimUserRewardNotFound{}
}

/*PublicClaimUserRewardNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49144</td><td>Reward [{code}] does not exist</td></tr><tr><td>49148</td><td>User season does not exist</td></tr><tr><td>49147</td><td>Published season does not exist</td></tr></table>
*/
type PublicClaimUserRewardNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublicClaimUserRewardNotFound) Error() string {
	return fmt.Sprintf("[POST /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards][%d] publicClaimUserRewardNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicClaimUserRewardNotFound) ToJSONString() string {
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

func (o *PublicClaimUserRewardNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicClaimUserRewardNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicClaimUserRewardConflict creates a PublicClaimUserRewardConflict with default headers values
func NewPublicClaimUserRewardConflict() *PublicClaimUserRewardConflict {
	return &PublicClaimUserRewardConflict{}
}

/*PublicClaimUserRewardConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49182</td><td>Reward is already claimed</td></tr><tr><td>49188</td><td>Reward is claiming</td></tr></table>
*/
type PublicClaimUserRewardConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublicClaimUserRewardConflict) Error() string {
	return fmt.Sprintf("[POST /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards][%d] publicClaimUserRewardConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicClaimUserRewardConflict) ToJSONString() string {
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

func (o *PublicClaimUserRewardConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicClaimUserRewardConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
