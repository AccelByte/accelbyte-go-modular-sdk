// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

type ResetPasswordResponse struct {
	iamclientmodels.ApiResponse

	Error400 string
	Error403 string
	Error404 string
	Error500 string
}

func (m *ResetPasswordResponse) Unpack() *iamclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			return &iamclientmodels.ApiError{Code: "400", Message: m.Error400}

		case 403:
			return &iamclientmodels.ApiError{Code: "403", Message: m.Error403}

		case 404:
			return &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		case 500:
			return &iamclientmodels.ApiError{Code: "500", Message: m.Error500}

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// ResetPasswordReader is a Reader for the ResetPassword structure.
type ResetPasswordReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ResetPasswordReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewResetPasswordNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewResetPasswordBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewResetPasswordForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewResetPasswordNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewResetPasswordInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/resetPassword returns an error %d: %s", response.Code(), string(data))
	}
}

// NewResetPasswordNoContent creates a ResetPasswordNoContent with default headers values
func NewResetPasswordNoContent() *ResetPasswordNoContent {
	return &ResetPasswordNoContent{}
}

/*ResetPasswordNoContent handles this case with default header values.

  Operation succeeded
*/
type ResetPasswordNoContent struct {
}

func (o *ResetPasswordNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/resetPassword][%d] resetPasswordNoContent ", 204)
}

func (o *ResetPasswordNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewResetPasswordBadRequest creates a ResetPasswordBadRequest with default headers values
func NewResetPasswordBadRequest() *ResetPasswordBadRequest {
	return &ResetPasswordBadRequest{}
}

/*ResetPasswordBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>1014016</td><td>unable to parse request body</td></tr><tr><td>1015073</td><td>new password same as old password</td></tr></table>
*/
type ResetPasswordBadRequest struct {
}

func (o *ResetPasswordBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/resetPassword][%d] resetPasswordBadRequest ", 400)
}

func (o *ResetPasswordBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewResetPasswordForbidden creates a ResetPasswordForbidden with default headers values
func NewResetPasswordForbidden() *ResetPasswordForbidden {
	return &ResetPasswordForbidden{}
}

/*ResetPasswordForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>1014021</td><td>verification code expired</td></tr><tr><td>1014019</td><td>verification code already used</td></tr><tr><td>1014020</td><td>verification code invalid</td></tr><tr><td>1014018</td><td>verification code not found</td></tr></table>
*/
type ResetPasswordForbidden struct {
}

func (o *ResetPasswordForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/resetPassword][%d] resetPasswordForbidden ", 403)
}

func (o *ResetPasswordForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewResetPasswordNotFound creates a ResetPasswordNotFound with default headers values
func NewResetPasswordNotFound() *ResetPasswordNotFound {
	return &ResetPasswordNotFound{}
}

/*ResetPasswordNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>1014017</td><td>user not found</td></tr></table>
*/
type ResetPasswordNotFound struct {
}

func (o *ResetPasswordNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/resetPassword][%d] resetPasswordNotFound ", 404)
}

func (o *ResetPasswordNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewResetPasswordInternalServerError creates a ResetPasswordInternalServerError with default headers values
func NewResetPasswordInternalServerError() *ResetPasswordInternalServerError {
	return &ResetPasswordInternalServerError{}
}

/*ResetPasswordInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type ResetPasswordInternalServerError struct {
}

func (o *ResetPasswordInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/resetPassword][%d] resetPasswordInternalServerError ", 500)
}

func (o *ResetPasswordInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
