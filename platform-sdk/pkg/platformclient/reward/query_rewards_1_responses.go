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

type QueryRewards1Response struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.RewardPagingSlicedResult

	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *QueryRewards1Response) Unpack() (*platformclientmodels.RewardPagingSlicedResult, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 422:
			e, err := m.Error422.TranslateToApiError()
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

// QueryRewards1Reader is a Reader for the QueryRewards1 structure.
type QueryRewards1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryRewards1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryRewards1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewQueryRewards1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/rewards/byCriteria returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryRewards1OK creates a QueryRewards1OK with default headers values
func NewQueryRewards1OK() *QueryRewards1OK {
	return &QueryRewards1OK{}
}

/*QueryRewards1OK handles this case with default header values.

  successful operation
*/
type QueryRewards1OK struct {
	Payload *platformclientmodels.RewardPagingSlicedResult
}

func (o *QueryRewards1OK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/rewards/byCriteria][%d] queryRewards1OK  %+v", 200, o.ToJSONString())
}

func (o *QueryRewards1OK) ToJSONString() string {
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

func (o *QueryRewards1OK) GetPayload() *platformclientmodels.RewardPagingSlicedResult {
	return o.Payload
}

func (o *QueryRewards1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.RewardPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryRewards1UnprocessableEntity creates a QueryRewards1UnprocessableEntity with default headers values
func NewQueryRewards1UnprocessableEntity() *QueryRewards1UnprocessableEntity {
	return &QueryRewards1UnprocessableEntity{}
}

/*QueryRewards1UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type QueryRewards1UnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *QueryRewards1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/rewards/byCriteria][%d] queryRewards1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *QueryRewards1UnprocessableEntity) ToJSONString() string {
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

func (o *QueryRewards1UnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *QueryRewards1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
