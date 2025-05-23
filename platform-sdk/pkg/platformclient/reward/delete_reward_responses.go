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

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

type DeleteRewardResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.RewardInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *DeleteRewardResponse) Unpack() (*platformclientmodels.RewardInfo, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// DeleteRewardReader is a Reader for the DeleteReward structure.
type DeleteRewardReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteRewardReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteRewardOK()
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

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/rewards/{rewardId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteRewardOK creates a DeleteRewardOK with default headers values
func NewDeleteRewardOK() *DeleteRewardOK {
	return &DeleteRewardOK{}
}

/*DeleteRewardOK handles this case with default header values.

  successful operation
*/
type DeleteRewardOK struct {
	Payload *platformclientmodels.RewardInfo
}

func (o *DeleteRewardOK) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/rewards/{rewardId}][%d] deleteRewardOK  %+v", 200, o.ToJSONString())
}

func (o *DeleteRewardOK) ToJSONString() string {
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

func (o *DeleteRewardOK) GetPayload() *platformclientmodels.RewardInfo {
	return o.Payload
}

func (o *DeleteRewardOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.RewardInfo)

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

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>34041</td><td>Reward [{rewardId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type DeleteRewardNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeleteRewardNotFound) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/rewards/{rewardId}][%d] deleteRewardNotFound  %+v", 404, o.ToJSONString())
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

func (o *DeleteRewardNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteRewardNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
