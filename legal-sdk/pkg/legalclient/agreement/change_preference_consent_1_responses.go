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

type ChangePreferenceConsent1Response struct {
	legalclientmodels.ApiResponse

	Error400 *legalclientmodels.ErrorEntity
}

func (m *ChangePreferenceConsent1Response) Unpack() *legalclientmodels.ApiError {
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

// ChangePreferenceConsent1Reader is a Reader for the ChangePreferenceConsent1 structure.
type ChangePreferenceConsent1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ChangePreferenceConsent1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewChangePreferenceConsent1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewChangePreferenceConsent1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/public/agreements/localized-policy-versions/preferences returns an error %d: %s", response.Code(), string(data))
	}
}

// NewChangePreferenceConsent1OK creates a ChangePreferenceConsent1OK with default headers values
func NewChangePreferenceConsent1OK() *ChangePreferenceConsent1OK {
	return &ChangePreferenceConsent1OK{}
}

/*ChangePreferenceConsent1OK handles this case with default header values.

  Successful operation
*/
type ChangePreferenceConsent1OK struct {
}

func (o *ChangePreferenceConsent1OK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/public/agreements/localized-policy-versions/preferences][%d] changePreferenceConsent1OK ", 200)
}

func (o *ChangePreferenceConsent1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewChangePreferenceConsent1BadRequest creates a ChangePreferenceConsent1BadRequest with default headers values
func NewChangePreferenceConsent1BadRequest() *ChangePreferenceConsent1BadRequest {
	return &ChangePreferenceConsent1BadRequest{}
}

/*ChangePreferenceConsent1BadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40017</td><td>Policy with id : [{policyId}] is not marketing preference</td></tr><tr><td>40045</td><td>errors.net.accelbyte.platform.legal.user_id_needed</td></tr></table>
*/
type ChangePreferenceConsent1BadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *ChangePreferenceConsent1BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/public/agreements/localized-policy-versions/preferences][%d] changePreferenceConsent1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *ChangePreferenceConsent1BadRequest) ToJSONString() string {
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

func (o *ChangePreferenceConsent1BadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ChangePreferenceConsent1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
