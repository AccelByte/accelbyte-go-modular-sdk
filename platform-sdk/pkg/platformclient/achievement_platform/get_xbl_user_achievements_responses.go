// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievement_platform

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

type GetXblUserAchievementsResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.XblUserAchievements

	Error400 *platformclientmodels.ValidationErrorEntity
}

func (m *GetXblUserAchievementsResponse) Unpack() (*platformclientmodels.XblUserAchievements, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetXblUserAchievementsReader is a Reader for the GetXblUserAchievements structure.
type GetXblUserAchievementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetXblUserAchievementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetXblUserAchievementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetXblUserAchievementsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetXblUserAchievementsOK creates a GetXblUserAchievementsOK with default headers values
func NewGetXblUserAchievementsOK() *GetXblUserAchievementsOK {
	return &GetXblUserAchievementsOK{}
}

/*GetXblUserAchievementsOK handles this case with default header values.

  OK
*/
type GetXblUserAchievementsOK struct {
	Payload *platformclientmodels.XblUserAchievements
}

func (o *GetXblUserAchievementsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl][%d] getXblUserAchievementsOK  %+v", 200, o.ToJSONString())
}

func (o *GetXblUserAchievementsOK) ToJSONString() string {
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

func (o *GetXblUserAchievementsOK) GetPayload() *platformclientmodels.XblUserAchievements {
	return o.Payload
}

func (o *GetXblUserAchievementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.XblUserAchievements)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetXblUserAchievementsBadRequest creates a GetXblUserAchievementsBadRequest with default headers values
func NewGetXblUserAchievementsBadRequest() *GetXblUserAchievementsBadRequest {
	return &GetXblUserAchievementsBadRequest{}
}

/*GetXblUserAchievementsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetXblUserAchievementsBadRequest struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *GetXblUserAchievementsBadRequest) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl][%d] getXblUserAchievementsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetXblUserAchievementsBadRequest) ToJSONString() string {
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

func (o *GetXblUserAchievementsBadRequest) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GetXblUserAchievementsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
