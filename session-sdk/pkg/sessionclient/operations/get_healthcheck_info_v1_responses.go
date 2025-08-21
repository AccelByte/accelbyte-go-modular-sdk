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

	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
)

type GetHealthcheckInfoV1Response struct {
	sessionclientmodels.ApiResponse
}

func (m *GetHealthcheckInfoV1Response) Unpack() *sessionclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		default:
			return &sessionclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// GetHealthcheckInfoV1Reader is a Reader for the GetHealthcheckInfoV1 structure.
type GetHealthcheckInfoV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetHealthcheckInfoV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetHealthcheckInfoV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/healthz returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetHealthcheckInfoV1OK creates a GetHealthcheckInfoV1OK with default headers values
func NewGetHealthcheckInfoV1OK() *GetHealthcheckInfoV1OK {
	return &GetHealthcheckInfoV1OK{}
}

/*
GetHealthcheckInfoV1OK handles this case with default header values.

	OK
*/
type GetHealthcheckInfoV1OK struct {
}

func (o *GetHealthcheckInfoV1OK) Error() string {
	return fmt.Sprintf("[GET /session/healthz][%d] getHealthcheckInfoV1OK ", 200)
}

func (o *GetHealthcheckInfoV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
