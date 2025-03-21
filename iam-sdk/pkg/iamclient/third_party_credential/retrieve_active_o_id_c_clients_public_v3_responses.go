// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package third_party_credential

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

type RetrieveActiveOIDCClientsPublicV3Response struct {
	iamclientmodels.ApiResponse
	Data []*iamclientmodels.ModelPublicThirdPartyPlatformInfo

	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *RetrieveActiveOIDCClientsPublicV3Response) Unpack() ([]*iamclientmodels.ModelPublicThirdPartyPlatformInfo, *iamclientmodels.ApiError) {
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
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

// RetrieveActiveOIDCClientsPublicV3Reader is a Reader for the RetrieveActiveOIDCClientsPublicV3 structure.
type RetrieveActiveOIDCClientsPublicV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveActiveOIDCClientsPublicV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveActiveOIDCClientsPublicV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveActiveOIDCClientsPublicV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRetrieveActiveOIDCClientsPublicV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/platforms/clients/oidc returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveActiveOIDCClientsPublicV3OK creates a RetrieveActiveOIDCClientsPublicV3OK with default headers values
func NewRetrieveActiveOIDCClientsPublicV3OK() *RetrieveActiveOIDCClientsPublicV3OK {
	return &RetrieveActiveOIDCClientsPublicV3OK{}
}

/*RetrieveActiveOIDCClientsPublicV3OK handles this case with default header values.

  All Active OIDC Credential Retrieved
*/
type RetrieveActiveOIDCClientsPublicV3OK struct {
	Payload []*iamclientmodels.ModelPublicThirdPartyPlatformInfo
}

func (o *RetrieveActiveOIDCClientsPublicV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/oidc][%d] retrieveActiveOIdCClientsPublicV3OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveActiveOIDCClientsPublicV3OK) ToJSONString() string {
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

func (o *RetrieveActiveOIDCClientsPublicV3OK) GetPayload() []*iamclientmodels.ModelPublicThirdPartyPlatformInfo {
	return o.Payload
}

func (o *RetrieveActiveOIDCClientsPublicV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveActiveOIDCClientsPublicV3NotFound creates a RetrieveActiveOIDCClientsPublicV3NotFound with default headers values
func NewRetrieveActiveOIDCClientsPublicV3NotFound() *RetrieveActiveOIDCClientsPublicV3NotFound {
	return &RetrieveActiveOIDCClientsPublicV3NotFound{}
}

/*RetrieveActiveOIDCClientsPublicV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10175</td><td>third party credential not found</td></tr></table>
*/
type RetrieveActiveOIDCClientsPublicV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveActiveOIDCClientsPublicV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/oidc][%d] retrieveActiveOIdCClientsPublicV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveActiveOIDCClientsPublicV3NotFound) ToJSONString() string {
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

func (o *RetrieveActiveOIDCClientsPublicV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveActiveOIDCClientsPublicV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveActiveOIDCClientsPublicV3InternalServerError creates a RetrieveActiveOIDCClientsPublicV3InternalServerError with default headers values
func NewRetrieveActiveOIDCClientsPublicV3InternalServerError() *RetrieveActiveOIDCClientsPublicV3InternalServerError {
	return &RetrieveActiveOIDCClientsPublicV3InternalServerError{}
}

/*RetrieveActiveOIDCClientsPublicV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type RetrieveActiveOIDCClientsPublicV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveActiveOIDCClientsPublicV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/platforms/clients/oidc][%d] retrieveActiveOIdCClientsPublicV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RetrieveActiveOIDCClientsPublicV3InternalServerError) ToJSONString() string {
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

func (o *RetrieveActiveOIDCClientsPublicV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveActiveOIDCClientsPublicV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
