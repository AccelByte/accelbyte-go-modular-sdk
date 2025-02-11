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

type ChangePreferenceConsentResponse struct {
	legalclientmodels.ApiResponse

	Error404 *legalclientmodels.ErrorEntity
}

func (m *ChangePreferenceConsentResponse) Unpack() *legalclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 404:
			e, err := m.Error404.TranslateToApiError()
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

// ChangePreferenceConsentReader is a Reader for the ChangePreferenceConsent structure.
type ChangePreferenceConsentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ChangePreferenceConsentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewChangePreferenceConsentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewChangePreferenceConsentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/agreements/localized-policy-versions/preferences/namespaces/{namespace}/userId/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewChangePreferenceConsentOK creates a ChangePreferenceConsentOK with default headers values
func NewChangePreferenceConsentOK() *ChangePreferenceConsentOK {
	return &ChangePreferenceConsentOK{}
}

/*ChangePreferenceConsentOK handles this case with default header values.

  operation successful
*/
type ChangePreferenceConsentOK struct {
}

func (o *ChangePreferenceConsentOK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/agreements/localized-policy-versions/preferences/namespaces/{namespace}/userId/{userId}][%d] changePreferenceConsentOK ", 200)
}

func (o *ChangePreferenceConsentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewChangePreferenceConsentNotFound creates a ChangePreferenceConsentNotFound with default headers values
func NewChangePreferenceConsentNotFound() *ChangePreferenceConsentNotFound {
	return &ChangePreferenceConsentNotFound{}
}

/*ChangePreferenceConsentNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40047</td><td>errors.net.accelbyte.platform.legal.user_agreement_not_found</td></tr></table>
*/
type ChangePreferenceConsentNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *ChangePreferenceConsentNotFound) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/agreements/localized-policy-versions/preferences/namespaces/{namespace}/userId/{userId}][%d] changePreferenceConsentNotFound  %+v", 404, o.ToJSONString())
}

func (o *ChangePreferenceConsentNotFound) ToJSONString() string {
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

func (o *ChangePreferenceConsentNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ChangePreferenceConsentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
