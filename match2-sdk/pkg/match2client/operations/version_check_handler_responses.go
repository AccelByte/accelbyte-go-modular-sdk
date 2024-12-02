// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package operations

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2clientmodels"
)

type VersionCheckHandlerResponse struct {
	match2clientmodels.ApiResponse
}

func (m *VersionCheckHandlerResponse) Unpack() *match2clientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		default:
			return &match2clientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// VersionCheckHandlerReader is a Reader for the VersionCheckHandler structure.
type VersionCheckHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *VersionCheckHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewVersionCheckHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/version returns an error %d: %s", response.Code(), string(data))
	}
}

// NewVersionCheckHandlerOK creates a VersionCheckHandlerOK with default headers values
func NewVersionCheckHandlerOK() *VersionCheckHandlerOK {
	return &VersionCheckHandlerOK{}
}

/*VersionCheckHandlerOK handles this case with default header values.

  OK
*/
type VersionCheckHandlerOK struct {
}

func (o *VersionCheckHandlerOK) Error() string {
	return fmt.Sprintf("[GET /match2/version][%d] versionCheckHandlerOK ", 200)
}

func (o *VersionCheckHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
