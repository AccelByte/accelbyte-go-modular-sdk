// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policy_versions

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

type RetrieveSinglePolicyVersionResponse struct {
	legalclientmodels.ApiResponse
	Data []*legalclientmodels.RetrievePolicyVersionResponse

	Error404 *legalclientmodels.ErrorEntity
}

func (m *RetrieveSinglePolicyVersionResponse) Unpack() ([]*legalclientmodels.RetrievePolicyVersionResponse, *legalclientmodels.ApiError) {
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

// RetrieveSinglePolicyVersionReader is a Reader for the RetrieveSinglePolicyVersion structure.
type RetrieveSinglePolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveSinglePolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveSinglePolicyVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveSinglePolicyVersionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/policies/{policyId}/versions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveSinglePolicyVersionOK creates a RetrieveSinglePolicyVersionOK with default headers values
func NewRetrieveSinglePolicyVersionOK() *RetrieveSinglePolicyVersionOK {
	return &RetrieveSinglePolicyVersionOK{}
}

/*RetrieveSinglePolicyVersionOK handles this case with default header values.

  successful operation
*/
type RetrieveSinglePolicyVersionOK struct {
	Payload []*legalclientmodels.RetrievePolicyVersionResponse
}

func (o *RetrieveSinglePolicyVersionOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/policies/{policyId}/versions][%d] retrieveSinglePolicyVersionOK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveSinglePolicyVersionOK) ToJSONString() string {
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

func (o *RetrieveSinglePolicyVersionOK) GetPayload() []*legalclientmodels.RetrievePolicyVersionResponse {
	return o.Payload
}

func (o *RetrieveSinglePolicyVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveSinglePolicyVersionNotFound creates a RetrieveSinglePolicyVersionNotFound with default headers values
func NewRetrieveSinglePolicyVersionNotFound() *RetrieveSinglePolicyVersionNotFound {
	return &RetrieveSinglePolicyVersionNotFound{}
}

/*RetrieveSinglePolicyVersionNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40036</td><td>errors.net.accelbyte.platform.legal.policy_version_id_not_found</td></tr></table>
*/
type RetrieveSinglePolicyVersionNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveSinglePolicyVersionNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/policies/{policyId}/versions][%d] retrieveSinglePolicyVersionNotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveSinglePolicyVersionNotFound) ToJSONString() string {
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

func (o *RetrieveSinglePolicyVersionNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveSinglePolicyVersionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
