// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package base_legal_policies_with_namespace

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

type RetrievePolicyCountry1Response struct {
	legalclientmodels.ApiResponse
	Data *legalclientmodels.RetrievePolicyResponse

	Error404 *legalclientmodels.ErrorEntity
}

func (m *RetrievePolicyCountry1Response) Unpack() (*legalclientmodels.RetrievePolicyResponse, *legalclientmodels.ApiError) {
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

// RetrievePolicyCountry1Reader is a Reader for the RetrievePolicyCountry1 structure.
type RetrievePolicyCountry1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrievePolicyCountry1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrievePolicyCountry1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrievePolicyCountry1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/countries/{countryCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrievePolicyCountry1OK creates a RetrievePolicyCountry1OK with default headers values
func NewRetrievePolicyCountry1OK() *RetrievePolicyCountry1OK {
	return &RetrievePolicyCountry1OK{}
}

/*RetrievePolicyCountry1OK handles this case with default header values.

  successful operation
*/
type RetrievePolicyCountry1OK struct {
	Payload *legalclientmodels.RetrievePolicyResponse
}

func (o *RetrievePolicyCountry1OK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/countries/{countryCode}][%d] retrievePolicyCountry1OK  %+v", 200, o.ToJSONString())
}

func (o *RetrievePolicyCountry1OK) ToJSONString() string {
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

func (o *RetrievePolicyCountry1OK) GetPayload() *legalclientmodels.RetrievePolicyResponse {
	return o.Payload
}

func (o *RetrievePolicyCountry1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.RetrievePolicyResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrievePolicyCountry1NotFound creates a RetrievePolicyCountry1NotFound with default headers values
func NewRetrievePolicyCountry1NotFound() *RetrievePolicyCountry1NotFound {
	return &RetrievePolicyCountry1NotFound{}
}

/*RetrievePolicyCountry1NotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40031</td><td>errors.net.accelbyte.platform.legal.base_policy_not_found</td></tr></table>
*/
type RetrievePolicyCountry1NotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrievePolicyCountry1NotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/countries/{countryCode}][%d] retrievePolicyCountry1NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrievePolicyCountry1NotFound) ToJSONString() string {
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

func (o *RetrievePolicyCountry1NotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrievePolicyCountry1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
