// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsartifact

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsartifact-sdk/pkg/dsartifactclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsartifact-sdk/pkg/dsartifactclient/artifact_upload_process_queue"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type ArtifactUploadProcessQueueService struct {
	Client           *dsartifactclient.JusticeDsartifactService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdArtifactUploadProcessQueue *string

func (aaa *ArtifactUploadProcessQueueService) UpdateFlightId(flightId string) {
	tempFlightIdArtifactUploadProcessQueue = &flightId
}

func (aaa *ArtifactUploadProcessQueueService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *ArtifactUploadProcessQueueService) ListNodesIPAddressShort(input *artifact_upload_process_queue.ListNodesIPAddressParams) (*artifact_upload_process_queue.ListNodesIPAddressResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ArtifactUploadProcessQueue.ListNodesIPAddressShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ArtifactUploadProcessQueueService) DeleteNodeByIDShort(input *artifact_upload_process_queue.DeleteNodeByIDParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ArtifactUploadProcessQueue.DeleteNodeByIDShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ArtifactUploadProcessQueueService) ListQueueShort(input *artifact_upload_process_queue.ListQueueParams) (*artifact_upload_process_queue.ListQueueResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ArtifactUploadProcessQueue.ListQueueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ArtifactUploadProcessQueueService) GetActiveQueueShort(input *artifact_upload_process_queue.GetActiveQueueParams) (*artifact_upload_process_queue.GetActiveQueueResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ArtifactUploadProcessQueue.GetActiveQueueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ArtifactUploadProcessQueueService) SetActiveQueueShort(input *artifact_upload_process_queue.SetActiveQueueParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ArtifactUploadProcessQueue.SetActiveQueueShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ArtifactUploadProcessQueueService) DeleteActiveQueueShort(input *artifact_upload_process_queue.DeleteActiveQueueParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ArtifactUploadProcessQueue.DeleteActiveQueueShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ArtifactUploadProcessQueueService) ReportFailedUploadShort(input *artifact_upload_process_queue.ReportFailedUploadParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ArtifactUploadProcessQueue.ReportFailedUploadShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ArtifactUploadProcessQueueService) DeleteQueueShort(input *artifact_upload_process_queue.DeleteQueueParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ArtifactUploadProcessQueue.DeleteQueueShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ArtifactUploadProcessQueueService) ListAllActiveQueueShort(input *artifact_upload_process_queue.ListAllActiveQueueParams) (*artifact_upload_process_queue.ListAllActiveQueueResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ArtifactUploadProcessQueue.ListAllActiveQueueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ArtifactUploadProcessQueueService) ListAllQueueShort(input *artifact_upload_process_queue.ListAllQueueParams) (*artifact_upload_process_queue.ListAllQueueResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdArtifactUploadProcessQueue != nil {
		input.XFlightId = tempFlightIdArtifactUploadProcessQueue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ArtifactUploadProcessQueue.ListAllQueueShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
