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

type BulkAcceptVersionedPolicyResponse struct {
	legalclientmodels.ApiResponse
	Data *legalclientmodels.AcceptAgreementResponse

	Error400 *legalclientmodels.ErrorEntity
}

func (m *BulkAcceptVersionedPolicyResponse) Unpack() (*legalclientmodels.AcceptAgreementResponse, *legalclientmodels.ApiError) {
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
			return nil, &legalclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// BulkAcceptVersionedPolicyReader is a Reader for the BulkAcceptVersionedPolicy structure.
type BulkAcceptVersionedPolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkAcceptVersionedPolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewBulkAcceptVersionedPolicyCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkAcceptVersionedPolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/public/agreements/policies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkAcceptVersionedPolicyCreated creates a BulkAcceptVersionedPolicyCreated with default headers values
func NewBulkAcceptVersionedPolicyCreated() *BulkAcceptVersionedPolicyCreated {
	return &BulkAcceptVersionedPolicyCreated{}
}

/*BulkAcceptVersionedPolicyCreated handles this case with default header values.

  successful operation
*/
type BulkAcceptVersionedPolicyCreated struct {
	Payload *legalclientmodels.AcceptAgreementResponse
}

func (o *BulkAcceptVersionedPolicyCreated) Error() string {
	return fmt.Sprintf("[POST /agreement/public/agreements/policies][%d] bulkAcceptVersionedPolicyCreated  %+v", 201, o.ToJSONString())
}

func (o *BulkAcceptVersionedPolicyCreated) ToJSONString() string {
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

func (o *BulkAcceptVersionedPolicyCreated) GetPayload() *legalclientmodels.AcceptAgreementResponse {
	return o.Payload
}

func (o *BulkAcceptVersionedPolicyCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkAcceptVersionedPolicyBadRequest creates a BulkAcceptVersionedPolicyBadRequest with default headers values
func NewBulkAcceptVersionedPolicyBadRequest() *BulkAcceptVersionedPolicyBadRequest {
	return &BulkAcceptVersionedPolicyBadRequest{}
}

/*BulkAcceptVersionedPolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40045</td><td>errors.net.accelbyte.platform.legal.user_id_needed</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.invalid_localize_policy_version_id</td></tr></table>
*/
type BulkAcceptVersionedPolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *BulkAcceptVersionedPolicyBadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/public/agreements/policies][%d] bulkAcceptVersionedPolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkAcceptVersionedPolicyBadRequest) ToJSONString() string {
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

func (o *BulkAcceptVersionedPolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkAcceptVersionedPolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
