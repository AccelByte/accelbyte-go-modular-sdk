// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

type SyncXboxDLCResponse struct {
	platformclientmodels.ApiResponse

	Error400 *platformclientmodels.ErrorEntity
	Error404 *platformclientmodels.ErrorEntity
}

func (m *SyncXboxDLCResponse) Unpack() *platformclientmodels.ApiError {
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

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// SyncXboxDLCReader is a Reader for the SyncXboxDLC structure.
type SyncXboxDLCReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncXboxDLCReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSyncXboxDLCNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncXboxDLCBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSyncXboxDLCNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/xbl/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncXboxDLCNoContent creates a SyncXboxDLCNoContent with default headers values
func NewSyncXboxDLCNoContent() *SyncXboxDLCNoContent {
	return &SyncXboxDLCNoContent{}
}

/*SyncXboxDLCNoContent handles this case with default header values.

  Successful operation
*/
type SyncXboxDLCNoContent struct {
}

func (o *SyncXboxDLCNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/xbl/sync][%d] syncXboxDlcNoContent ", 204)
}

func (o *SyncXboxDLCNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSyncXboxDLCBadRequest creates a SyncXboxDLCBadRequest with default headers values
func NewSyncXboxDLCBadRequest() *SyncXboxDLCBadRequest {
	return &SyncXboxDLCBadRequest{}
}

/*SyncXboxDLCBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39125</td><td>Invalid platform [{platformId}] user token</td></tr><tr><td>39126</td><td>User id [{}] in namespace [{}] doesn't link platform [{}]</td></tr><tr><td>39221</td><td>Invalid Xbox Business Partner Certificate or password: [{message}]</td></tr></table>
*/
type SyncXboxDLCBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncXboxDLCBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/xbl/sync][%d] syncXboxDlcBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncXboxDLCBadRequest) ToJSONString() string {
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

func (o *SyncXboxDLCBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncXboxDLCBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSyncXboxDLCNotFound creates a SyncXboxDLCNotFound with default headers values
func NewSyncXboxDLCNotFound() *SyncXboxDLCNotFound {
	return &SyncXboxDLCNotFound{}
}

/*SyncXboxDLCNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39145</td><td>XBox IAP config not found in namespace [{namespace}].</td></tr></table>
*/
type SyncXboxDLCNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncXboxDLCNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/xbl/sync][%d] syncXboxDlcNotFound  %+v", 404, o.ToJSONString())
}

func (o *SyncXboxDLCNotFound) ToJSONString() string {
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

func (o *SyncXboxDLCNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncXboxDLCNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
