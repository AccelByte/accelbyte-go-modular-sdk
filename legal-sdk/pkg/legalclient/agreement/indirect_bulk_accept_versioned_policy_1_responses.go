// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreement

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
)

type IndirectBulkAcceptVersionedPolicy1Response struct {
	legalclientmodels.ApiResponse
	Data *legalclientmodels.AcceptAgreementResponse

	Error404 *legalclientmodels.ErrorEntity
}

func (m *IndirectBulkAcceptVersionedPolicy1Response) Unpack() (*legalclientmodels.AcceptAgreementResponse, *legalclientmodels.ApiError) {
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
			return nil, &legalclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// IndirectBulkAcceptVersionedPolicy1Reader is a Reader for the IndirectBulkAcceptVersionedPolicy1 structure.
type IndirectBulkAcceptVersionedPolicy1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *IndirectBulkAcceptVersionedPolicy1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewIndirectBulkAcceptVersionedPolicy1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewIndirectBulkAcceptVersionedPolicy1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/public/agreements/policies/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewIndirectBulkAcceptVersionedPolicy1Created creates a IndirectBulkAcceptVersionedPolicy1Created with default headers values
func NewIndirectBulkAcceptVersionedPolicy1Created() *IndirectBulkAcceptVersionedPolicy1Created {
	return &IndirectBulkAcceptVersionedPolicy1Created{}
}

/*IndirectBulkAcceptVersionedPolicy1Created handles this case with default header values.

  successful operation
*/
type IndirectBulkAcceptVersionedPolicy1Created struct {
	Payload *legalclientmodels.AcceptAgreementResponse
}

func (o *IndirectBulkAcceptVersionedPolicy1Created) Error() string {
	return fmt.Sprintf("[POST /agreement/public/agreements/policies/users/{userId}][%d] indirectBulkAcceptVersionedPolicy1Created  %+v", 201, o.ToJSONString())
}

func (o *IndirectBulkAcceptVersionedPolicy1Created) ToJSONString() string {
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

func (o *IndirectBulkAcceptVersionedPolicy1Created) GetPayload() *legalclientmodels.AcceptAgreementResponse {
	return o.Payload
}

func (o *IndirectBulkAcceptVersionedPolicy1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.AcceptAgreementResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewIndirectBulkAcceptVersionedPolicy1NotFound creates a IndirectBulkAcceptVersionedPolicy1NotFound with default headers values
func NewIndirectBulkAcceptVersionedPolicy1NotFound() *IndirectBulkAcceptVersionedPolicy1NotFound {
	return &IndirectBulkAcceptVersionedPolicy1NotFound{}
}

/*IndirectBulkAcceptVersionedPolicy1NotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.policy_version_not_found</td></tr></table>
*/
type IndirectBulkAcceptVersionedPolicy1NotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *IndirectBulkAcceptVersionedPolicy1NotFound) Error() string {
	return fmt.Sprintf("[POST /agreement/public/agreements/policies/users/{userId}][%d] indirectBulkAcceptVersionedPolicy1NotFound  %+v", 404, o.ToJSONString())
}

func (o *IndirectBulkAcceptVersionedPolicy1NotFound) ToJSONString() string {
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

func (o *IndirectBulkAcceptVersionedPolicy1NotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *IndirectBulkAcceptVersionedPolicy1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
