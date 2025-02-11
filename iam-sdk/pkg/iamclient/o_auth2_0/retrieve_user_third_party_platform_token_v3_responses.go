// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package o_auth2_0

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

type RetrieveUserThirdPartyPlatformTokenV3Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.OauthmodelTokenThirdPartyResponse

	Error401 *iamclientmodels.OauthmodelErrorResponse
	Error403 *iamclientmodels.OauthmodelErrorResponse
	Error404 *iamclientmodels.OauthmodelErrorResponse
}

func (m *RetrieveUserThirdPartyPlatformTokenV3Response) Unpack() (*iamclientmodels.OauthmodelTokenThirdPartyResponse, *iamclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 403:
			e, err := m.Error403.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// RetrieveUserThirdPartyPlatformTokenV3Reader is a Reader for the RetrieveUserThirdPartyPlatformTokenV3 structure.
type RetrieveUserThirdPartyPlatformTokenV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveUserThirdPartyPlatformTokenV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveUserThirdPartyPlatformTokenV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRetrieveUserThirdPartyPlatformTokenV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRetrieveUserThirdPartyPlatformTokenV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveUserThirdPartyPlatformTokenV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/oauth/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveUserThirdPartyPlatformTokenV3OK creates a RetrieveUserThirdPartyPlatformTokenV3OK with default headers values
func NewRetrieveUserThirdPartyPlatformTokenV3OK() *RetrieveUserThirdPartyPlatformTokenV3OK {
	return &RetrieveUserThirdPartyPlatformTokenV3OK{}
}

/*RetrieveUserThirdPartyPlatformTokenV3OK handles this case with default header values.

  Token returned
*/
type RetrieveUserThirdPartyPlatformTokenV3OK struct {
	Payload *iamclientmodels.OauthmodelTokenThirdPartyResponse
}

func (o *RetrieveUserThirdPartyPlatformTokenV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/oauth/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken][%d] retrieveUserThirdPartyPlatformTokenV3OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveUserThirdPartyPlatformTokenV3OK) ToJSONString() string {
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

func (o *RetrieveUserThirdPartyPlatformTokenV3OK) GetPayload() *iamclientmodels.OauthmodelTokenThirdPartyResponse {
	return o.Payload
}

func (o *RetrieveUserThirdPartyPlatformTokenV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenThirdPartyResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveUserThirdPartyPlatformTokenV3Unauthorized creates a RetrieveUserThirdPartyPlatformTokenV3Unauthorized with default headers values
func NewRetrieveUserThirdPartyPlatformTokenV3Unauthorized() *RetrieveUserThirdPartyPlatformTokenV3Unauthorized {
	return &RetrieveUserThirdPartyPlatformTokenV3Unauthorized{}
}

/*RetrieveUserThirdPartyPlatformTokenV3Unauthorized handles this case with default header values.

  Client authentication failed
*/
type RetrieveUserThirdPartyPlatformTokenV3Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *RetrieveUserThirdPartyPlatformTokenV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/oauth/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken][%d] retrieveUserThirdPartyPlatformTokenV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RetrieveUserThirdPartyPlatformTokenV3Unauthorized) ToJSONString() string {
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

func (o *RetrieveUserThirdPartyPlatformTokenV3Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *RetrieveUserThirdPartyPlatformTokenV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveUserThirdPartyPlatformTokenV3Forbidden creates a RetrieveUserThirdPartyPlatformTokenV3Forbidden with default headers values
func NewRetrieveUserThirdPartyPlatformTokenV3Forbidden() *RetrieveUserThirdPartyPlatformTokenV3Forbidden {
	return &RetrieveUserThirdPartyPlatformTokenV3Forbidden{}
}

/*RetrieveUserThirdPartyPlatformTokenV3Forbidden handles this case with default header values.

  Unauthorized access
*/
type RetrieveUserThirdPartyPlatformTokenV3Forbidden struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *RetrieveUserThirdPartyPlatformTokenV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/oauth/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken][%d] retrieveUserThirdPartyPlatformTokenV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RetrieveUserThirdPartyPlatformTokenV3Forbidden) ToJSONString() string {
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

func (o *RetrieveUserThirdPartyPlatformTokenV3Forbidden) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *RetrieveUserThirdPartyPlatformTokenV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveUserThirdPartyPlatformTokenV3NotFound creates a RetrieveUserThirdPartyPlatformTokenV3NotFound with default headers values
func NewRetrieveUserThirdPartyPlatformTokenV3NotFound() *RetrieveUserThirdPartyPlatformTokenV3NotFound {
	return &RetrieveUserThirdPartyPlatformTokenV3NotFound{}
}

/*RetrieveUserThirdPartyPlatformTokenV3NotFound handles this case with default header values.

  Platform Token Not Found
*/
type RetrieveUserThirdPartyPlatformTokenV3NotFound struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *RetrieveUserThirdPartyPlatformTokenV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/oauth/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken][%d] retrieveUserThirdPartyPlatformTokenV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveUserThirdPartyPlatformTokenV3NotFound) ToJSONString() string {
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

func (o *RetrieveUserThirdPartyPlatformTokenV3NotFound) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *RetrieveUserThirdPartyPlatformTokenV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
