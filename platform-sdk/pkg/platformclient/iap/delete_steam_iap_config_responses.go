// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

type DeleteSteamIAPConfigResponse struct {
	platformclientmodels.ApiResponse
}

func (m *DeleteSteamIAPConfigResponse) Unpack() *platformclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		default:
			return &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// DeleteSteamIAPConfigReader is a Reader for the DeleteSteamIAPConfig structure.
type DeleteSteamIAPConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSteamIAPConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteSteamIAPConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/iap/config/steam returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSteamIAPConfigNoContent creates a DeleteSteamIAPConfigNoContent with default headers values
func NewDeleteSteamIAPConfigNoContent() *DeleteSteamIAPConfigNoContent {
	return &DeleteSteamIAPConfigNoContent{}
}

/*DeleteSteamIAPConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeleteSteamIAPConfigNoContent struct {
}

func (o *DeleteSteamIAPConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/iap/config/steam][%d] deleteSteamIapConfigNoContent ", 204)
}

func (o *DeleteSteamIAPConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
