// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policies

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

type RetrieveLatestPoliciesPublicResponse struct {
	legalclientmodels.ApiResponse
	Data []*legalclientmodels.RetrievePolicyPublicResponse

	Error404 *legalclientmodels.ErrorEntity
}

func (m *RetrieveLatestPoliciesPublicResponse) Unpack() ([]*legalclientmodels.RetrievePolicyPublicResponse, *legalclientmodels.ApiError) {
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

// RetrieveLatestPoliciesPublicReader is a Reader for the RetrieveLatestPoliciesPublic structure.
type RetrieveLatestPoliciesPublicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveLatestPoliciesPublicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveLatestPoliciesPublicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveLatestPoliciesPublicNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/public/policies/namespaces/{namespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveLatestPoliciesPublicOK creates a RetrieveLatestPoliciesPublicOK with default headers values
func NewRetrieveLatestPoliciesPublicOK() *RetrieveLatestPoliciesPublicOK {
	return &RetrieveLatestPoliciesPublicOK{}
}

/*RetrieveLatestPoliciesPublicOK handles this case with default header values.

  successful operation
*/
type RetrieveLatestPoliciesPublicOK struct {
	Payload []*legalclientmodels.RetrievePolicyPublicResponse
}

func (o *RetrieveLatestPoliciesPublicOK) Error() string {
	return fmt.Sprintf("[GET /agreement/public/policies/namespaces/{namespace}][%d] retrieveLatestPoliciesPublicOK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveLatestPoliciesPublicOK) ToJSONString() string {
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

func (o *RetrieveLatestPoliciesPublicOK) GetPayload() []*legalclientmodels.RetrievePolicyPublicResponse {
	return o.Payload
}

func (o *RetrieveLatestPoliciesPublicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveLatestPoliciesPublicNotFound creates a RetrieveLatestPoliciesPublicNotFound with default headers values
func NewRetrieveLatestPoliciesPublicNotFound() *RetrieveLatestPoliciesPublicNotFound {
	return &RetrieveLatestPoliciesPublicNotFound{}
}

/*RetrieveLatestPoliciesPublicNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40040</td><td>errors.net.accelbyte.platform.legal.user_has_no_country</td></tr></table>
*/
type RetrieveLatestPoliciesPublicNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveLatestPoliciesPublicNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/public/policies/namespaces/{namespace}][%d] retrieveLatestPoliciesPublicNotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveLatestPoliciesPublicNotFound) ToJSONString() string {
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

func (o *RetrieveLatestPoliciesPublicNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveLatestPoliciesPublicNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
