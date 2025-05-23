// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreement_with_namespace

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

type RetrieveAllUsersByPolicyVersion1Response struct {
	legalclientmodels.ApiResponse
	Data *legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse

	Error404 *legalclientmodels.ErrorEntity
}

func (m *RetrieveAllUsersByPolicyVersion1Response) Unpack() (*legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse, *legalclientmodels.ApiError) {
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

// RetrieveAllUsersByPolicyVersion1Reader is a Reader for the RetrieveAllUsersByPolicyVersion1 structure.
type RetrieveAllUsersByPolicyVersion1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveAllUsersByPolicyVersion1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveAllUsersByPolicyVersion1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveAllUsersByPolicyVersion1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveAllUsersByPolicyVersion1OK creates a RetrieveAllUsersByPolicyVersion1OK with default headers values
func NewRetrieveAllUsersByPolicyVersion1OK() *RetrieveAllUsersByPolicyVersion1OK {
	return &RetrieveAllUsersByPolicyVersion1OK{}
}

/*RetrieveAllUsersByPolicyVersion1OK handles this case with default header values.

  successful operation
*/
type RetrieveAllUsersByPolicyVersion1OK struct {
	Payload *legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse
}

func (o *RetrieveAllUsersByPolicyVersion1OK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users][%d] retrieveAllUsersByPolicyVersion1OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveAllUsersByPolicyVersion1OK) ToJSONString() string {
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

func (o *RetrieveAllUsersByPolicyVersion1OK) GetPayload() *legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse {
	return o.Payload
}

func (o *RetrieveAllUsersByPolicyVersion1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveAllUsersByPolicyVersion1NotFound creates a RetrieveAllUsersByPolicyVersion1NotFound with default headers values
func NewRetrieveAllUsersByPolicyVersion1NotFound() *RetrieveAllUsersByPolicyVersion1NotFound {
	return &RetrieveAllUsersByPolicyVersion1NotFound{}
}

/*RetrieveAllUsersByPolicyVersion1NotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.policy_version_not_found</td></tr></table>
*/
type RetrieveAllUsersByPolicyVersion1NotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveAllUsersByPolicyVersion1NotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/agreements/policy-versions/users][%d] retrieveAllUsersByPolicyVersion1NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveAllUsersByPolicyVersion1NotFound) ToJSONString() string {
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

func (o *RetrieveAllUsersByPolicyVersion1NotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveAllUsersByPolicyVersion1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
