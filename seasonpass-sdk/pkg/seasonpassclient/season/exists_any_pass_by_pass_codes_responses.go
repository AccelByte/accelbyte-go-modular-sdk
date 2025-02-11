// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

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

type ExistsAnyPassByPassCodesResponse struct {
	seasonpassclientmodels.ApiResponse
	Data *seasonpassclientmodels.Ownership

	Error400 *seasonpassclientmodels.ErrorEntity
}

func (m *ExistsAnyPassByPassCodesResponse) Unpack() (*seasonpassclientmodels.Ownership, *seasonpassclientmodels.ApiError) {
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

		default:
			return nil, &seasonpassclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// ExistsAnyPassByPassCodesReader is a Reader for the ExistsAnyPassByPassCodes structure.
type ExistsAnyPassByPassCodesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ExistsAnyPassByPassCodesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewExistsAnyPassByPassCodesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewExistsAnyPassByPassCodesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any returns an error %d: %s", response.Code(), string(data))
	}
}

// NewExistsAnyPassByPassCodesOK creates a ExistsAnyPassByPassCodesOK with default headers values
func NewExistsAnyPassByPassCodesOK() *ExistsAnyPassByPassCodesOK {
	return &ExistsAnyPassByPassCodesOK{}
}

/*ExistsAnyPassByPassCodesOK handles this case with default header values.

  successful operation
*/
type ExistsAnyPassByPassCodesOK struct {
	Payload *seasonpassclientmodels.Ownership
}

func (o *ExistsAnyPassByPassCodesOK) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any][%d] existsAnyPassByPassCodesOK  %+v", 200, o.ToJSONString())
}

func (o *ExistsAnyPassByPassCodesOK) ToJSONString() string {
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

func (o *ExistsAnyPassByPassCodesOK) GetPayload() *seasonpassclientmodels.Ownership {
	return o.Payload
}

func (o *ExistsAnyPassByPassCodesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.Ownership)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewExistsAnyPassByPassCodesBadRequest creates a ExistsAnyPassByPassCodesBadRequest with default headers values
func NewExistsAnyPassByPassCodesBadRequest() *ExistsAnyPassByPassCodesBadRequest {
	return &ExistsAnyPassByPassCodesBadRequest{}
}

/*ExistsAnyPassByPassCodesBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type ExistsAnyPassByPassCodesBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *ExistsAnyPassByPassCodesBadRequest) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any][%d] existsAnyPassByPassCodesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ExistsAnyPassByPassCodesBadRequest) ToJSONString() string {
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

func (o *ExistsAnyPassByPassCodesBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ExistsAnyPassByPassCodesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
