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

type RetrievePoliciesResponse struct {
	legalclientmodels.ApiResponse
	Data []*legalclientmodels.RetrievePolicyResponse
}

func (m *RetrievePoliciesResponse) Unpack() ([]*legalclientmodels.RetrievePolicyResponse, *legalclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		default:
			return nil, &legalclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// RetrievePoliciesReader is a Reader for the RetrievePolicies structure.
type RetrievePoliciesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrievePoliciesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrievePoliciesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/policies/countries/{countryCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrievePoliciesOK creates a RetrievePoliciesOK with default headers values
func NewRetrievePoliciesOK() *RetrievePoliciesOK {
	return &RetrievePoliciesOK{}
}

/*RetrievePoliciesOK handles this case with default header values.

  successful operation
*/
type RetrievePoliciesOK struct {
	Payload []*legalclientmodels.RetrievePolicyResponse
}

func (o *RetrievePoliciesOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/policies/countries/{countryCode}][%d] retrievePoliciesOK  %+v", 200, o.ToJSONString())
}

func (o *RetrievePoliciesOK) ToJSONString() string {
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

func (o *RetrievePoliciesOK) GetPayload() []*legalclientmodels.RetrievePolicyResponse {
	return o.Payload
}

func (o *RetrievePoliciesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
