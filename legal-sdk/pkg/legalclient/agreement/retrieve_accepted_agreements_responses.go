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

type RetrieveAcceptedAgreementsResponse struct {
	legalclientmodels.ApiResponse
	Data []*legalclientmodels.RetrieveAcceptedAgreementResponse
}

func (m *RetrieveAcceptedAgreementsResponse) Unpack() ([]*legalclientmodels.RetrieveAcceptedAgreementResponse, *legalclientmodels.ApiError) {
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

// RetrieveAcceptedAgreementsReader is a Reader for the RetrieveAcceptedAgreements structure.
type RetrieveAcceptedAgreementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveAcceptedAgreementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveAcceptedAgreementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/agreements/policies/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveAcceptedAgreementsOK creates a RetrieveAcceptedAgreementsOK with default headers values
func NewRetrieveAcceptedAgreementsOK() *RetrieveAcceptedAgreementsOK {
	return &RetrieveAcceptedAgreementsOK{}
}

/*RetrieveAcceptedAgreementsOK handles this case with default header values.

  successful operation
*/
type RetrieveAcceptedAgreementsOK struct {
	Payload []*legalclientmodels.RetrieveAcceptedAgreementResponse
}

func (o *RetrieveAcceptedAgreementsOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/agreements/policies/users/{userId}][%d] retrieveAcceptedAgreementsOK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveAcceptedAgreementsOK) ToJSONString() string {
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

func (o *RetrieveAcceptedAgreementsOK) GetPayload() []*legalclientmodels.RetrieveAcceptedAgreementResponse {
	return o.Payload
}

func (o *RetrieveAcceptedAgreementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
