// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gametelemetry_operations

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk/pkg/gametelemetryclientmodels"
)

// ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostReader is a Reader for the ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost structure.
type ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /game-telemetry/v1/protected/events returns an error %d: %s", response.Code(), string(data))
	}
}

// NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent creates a ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent with default headers values
func NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent() *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent {
	return &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent{}
}

/*ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent handles this case with default header values.

  Successful Response
*/
type ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent struct {
}

func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent) Error() string {
	return fmt.Sprintf("[POST /game-telemetry/v1/protected/events][%d] protectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent ", 204)
}

func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity creates a ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity with default headers values
func NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity() *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity {
	return &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity{}
}

/*ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity handles this case with default header values.

  Validation Error
*/
type ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity struct {
	Payload *gametelemetryclientmodels.HTTPValidationError
}

func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /game-telemetry/v1/protected/events][%d] protectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity) ToJSONString() string {
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

func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity) GetPayload() *gametelemetryclientmodels.HTTPValidationError {
	return o.Payload
}

func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gametelemetryclientmodels.HTTPValidationError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
