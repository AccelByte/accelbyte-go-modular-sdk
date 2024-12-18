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

type AcceptVersionedPolicyResponse struct {
	legalclientmodels.ApiResponse

	Error400 *legalclientmodels.ErrorEntity
}

func (m *AcceptVersionedPolicyResponse) Unpack() *legalclientmodels.ApiError {
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

		default:
			return &legalclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AcceptVersionedPolicyReader is a Reader for the AcceptVersionedPolicy structure.
type AcceptVersionedPolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AcceptVersionedPolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAcceptVersionedPolicyCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAcceptVersionedPolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/public/agreements/localized-policy-versions/{localizedPolicyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAcceptVersionedPolicyCreated creates a AcceptVersionedPolicyCreated with default headers values
func NewAcceptVersionedPolicyCreated() *AcceptVersionedPolicyCreated {
	return &AcceptVersionedPolicyCreated{}
}

/*AcceptVersionedPolicyCreated handles this case with default header values.

  successful anonymize
*/
type AcceptVersionedPolicyCreated struct {
}

func (o *AcceptVersionedPolicyCreated) Error() string {
	return fmt.Sprintf("[POST /agreement/public/agreements/localized-policy-versions/{localizedPolicyVersionId}][%d] acceptVersionedPolicyCreated ", 201)
}

func (o *AcceptVersionedPolicyCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAcceptVersionedPolicyBadRequest creates a AcceptVersionedPolicyBadRequest with default headers values
func NewAcceptVersionedPolicyBadRequest() *AcceptVersionedPolicyBadRequest {
	return &AcceptVersionedPolicyBadRequest{}
}

/*AcceptVersionedPolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40045</td><td>errors.net.accelbyte.platform.legal.user_id_needed</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.invalid_localize_policy_version_id</td></tr></table>
*/
type AcceptVersionedPolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *AcceptVersionedPolicyBadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/public/agreements/localized-policy-versions/{localizedPolicyVersionId}][%d] acceptVersionedPolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AcceptVersionedPolicyBadRequest) ToJSONString() string {
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

func (o *AcceptVersionedPolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AcceptVersionedPolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
