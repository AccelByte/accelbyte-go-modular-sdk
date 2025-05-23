// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package utility

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

type CheckReadinessResponse struct {
	legalclientmodels.ApiResponse
	Data *legalclientmodels.LegalReadinessStatusResponse
}

func (m *CheckReadinessResponse) Unpack() (*legalclientmodels.LegalReadinessStatusResponse, *legalclientmodels.ApiError) {
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

// CheckReadinessReader is a Reader for the CheckReadiness structure.
type CheckReadinessReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CheckReadinessReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCheckReadinessOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/public/readiness returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCheckReadinessOK creates a CheckReadinessOK with default headers values
func NewCheckReadinessOK() *CheckReadinessOK {
	return &CheckReadinessOK{}
}

/*CheckReadinessOK handles this case with default header values.

  successful operation
*/
type CheckReadinessOK struct {
	Payload *legalclientmodels.LegalReadinessStatusResponse
}

func (o *CheckReadinessOK) Error() string {
	return fmt.Sprintf("[GET /agreement/public/readiness][%d] checkReadinessOK  %+v", 200, o.ToJSONString())
}

func (o *CheckReadinessOK) ToJSONString() string {
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

func (o *CheckReadinessOK) GetPayload() *legalclientmodels.LegalReadinessStatusResponse {
	return o.Payload
}

func (o *CheckReadinessOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.LegalReadinessStatusResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
