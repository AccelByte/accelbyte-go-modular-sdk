// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package o_auth2_0

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

type AuthCodeRequestV3Response struct {
	iamclientmodels.ApiResponse

	Data string
}

func (m *AuthCodeRequestV3Response) Unpack() *iamclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AuthCodeRequestV3Reader is a Reader for the AuthCodeRequestV3 structure.
type AuthCodeRequestV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AuthCodeRequestV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 302:
		result := NewAuthCodeRequestV3Found()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/oauth/platforms/{platformId}/authorize returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAuthCodeRequestV3Found creates a AuthCodeRequestV3Found with default headers values
func NewAuthCodeRequestV3Found() *AuthCodeRequestV3Found {
	return &AuthCodeRequestV3Found{}
}

/*AuthCodeRequestV3Found handles this case with default header values.

  Found. Redirect to client’s redirect URI with either code or error on the query parameter
*/
type AuthCodeRequestV3Found struct {
	Location string
}

func (o *AuthCodeRequestV3Found) Error() string {
	return fmt.Sprintf("[GET /iam/v3/oauth/platforms/{platformId}/authorize][%d] authCodeRequestV3Found ", 302)
}

func (o *AuthCodeRequestV3Found) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
