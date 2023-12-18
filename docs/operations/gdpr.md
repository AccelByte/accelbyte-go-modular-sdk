[//]: # (Code generated. DO NOT EDIT.)

# Gdpr Service Index

&nbsp;

## Operations

### Data Deletion Wrapper:  [DataDeletion](../../gdpr-sdk/pkg/wrapper_dataDeletion.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/gdpr/admin/namespaces/{namespace}/deletions` | GET | AdminGetListDeletionDataRequestShort | [AdminGetListDeletionDataRequestShort](../../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [AdminGetListDeletionDataRequestShort](../../gdpr-sdk/pkg/wrapper_dataDeletion.go) | [AdminGetListDeletionDataRequestShort](../../samples/cli/cmd/gdpr/dataDeletion/adminGetListDeletionDataRequest.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions` | GET | AdminGetUserAccountDeletionRequestShort | [AdminGetUserAccountDeletionRequestShort](../../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [AdminGetUserAccountDeletionRequestShort](../../gdpr-sdk/pkg/wrapper_dataDeletion.go) | [AdminGetUserAccountDeletionRequestShort](../../samples/cli/cmd/gdpr/dataDeletion/adminGetUserAccountDeletionRequest.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions` | POST | AdminSubmitUserAccountDeletionRequestShort | [AdminSubmitUserAccountDeletionRequestShort](../../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [AdminSubmitUserAccountDeletionRequestShort](../../gdpr-sdk/pkg/wrapper_dataDeletion.go) | [AdminSubmitUserAccountDeletionRequestShort](../../samples/cli/cmd/gdpr/dataDeletion/adminSubmitUserAccountDeletionRequest.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions` | DELETE | AdminCancelUserAccountDeletionRequestShort | [AdminCancelUserAccountDeletionRequestShort](../../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [AdminCancelUserAccountDeletionRequestShort](../../gdpr-sdk/pkg/wrapper_dataDeletion.go) | [AdminCancelUserAccountDeletionRequestShort](../../samples/cli/cmd/gdpr/dataDeletion/adminCancelUserAccountDeletionRequest.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/deletions` | POST | PublicSubmitUserAccountDeletionRequestShort | [PublicSubmitUserAccountDeletionRequestShort](../../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [PublicSubmitUserAccountDeletionRequestShort](../../gdpr-sdk/pkg/wrapper_dataDeletion.go) | [PublicSubmitUserAccountDeletionRequestShort](../../samples/cli/cmd/gdpr/dataDeletion/publicSubmitUserAccountDeletionRequest.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/deletions` | DELETE | PublicCancelUserAccountDeletionRequestShort | [PublicCancelUserAccountDeletionRequestShort](../../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [PublicCancelUserAccountDeletionRequestShort](../../gdpr-sdk/pkg/wrapper_dataDeletion.go) | [PublicCancelUserAccountDeletionRequestShort](../../samples/cli/cmd/gdpr/dataDeletion/publicCancelUserAccountDeletionRequest.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status` | GET | PublicGetUserAccountDeletionStatusShort | [PublicGetUserAccountDeletionStatusShort](../../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [PublicGetUserAccountDeletionStatusShort](../../gdpr-sdk/pkg/wrapper_dataDeletion.go) | [PublicGetUserAccountDeletionStatusShort](../../samples/cli/cmd/gdpr/dataDeletion/publicGetUserAccountDeletionStatus.go) |
| `/gdpr/public/users/me/deletions` | POST | PublicSubmitMyAccountDeletionRequestShort | [PublicSubmitMyAccountDeletionRequestShort](../../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [PublicSubmitMyAccountDeletionRequestShort](../../gdpr-sdk/pkg/wrapper_dataDeletion.go) | [PublicSubmitMyAccountDeletionRequestShort](../../samples/cli/cmd/gdpr/dataDeletion/publicSubmitMyAccountDeletionRequest.go) |
| `/gdpr/public/users/me/deletions` | DELETE | PublicCancelMyAccountDeletionRequestShort | [PublicCancelMyAccountDeletionRequestShort](../../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [PublicCancelMyAccountDeletionRequestShort](../../gdpr-sdk/pkg/wrapper_dataDeletion.go) | [PublicCancelMyAccountDeletionRequestShort](../../samples/cli/cmd/gdpr/dataDeletion/publicCancelMyAccountDeletionRequest.go) |
| `/gdpr/public/users/me/deletions/status` | GET | PublicGetMyAccountDeletionStatusShort | [PublicGetMyAccountDeletionStatusShort](../../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [PublicGetMyAccountDeletionStatusShort](../../gdpr-sdk/pkg/wrapper_dataDeletion.go) | [PublicGetMyAccountDeletionStatusShort](../../samples/cli/cmd/gdpr/dataDeletion/publicGetMyAccountDeletionStatus.go) |

### Configuration Wrapper:  [Configuration](../../gdpr-sdk/pkg/wrapper_configuration.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/gdpr/admin/namespaces/{namespace}/emails/configurations` | GET | GetAdminEmailConfigurationShort | [GetAdminEmailConfigurationShort](../../gdpr-sdk/pkg/gdprclient/configuration/configuration_client.go) | [GetAdminEmailConfigurationShort](../../gdpr-sdk/pkg/wrapper_configuration.go) | [GetAdminEmailConfigurationShort](../../samples/cli/cmd/gdpr/configuration/getAdminEmailConfiguration.go) |
| `/gdpr/admin/namespaces/{namespace}/emails/configurations` | PUT | UpdateAdminEmailConfigurationShort | [UpdateAdminEmailConfigurationShort](../../gdpr-sdk/pkg/gdprclient/configuration/configuration_client.go) | [UpdateAdminEmailConfigurationShort](../../gdpr-sdk/pkg/wrapper_configuration.go) | [UpdateAdminEmailConfigurationShort](../../samples/cli/cmd/gdpr/configuration/updateAdminEmailConfiguration.go) |
| `/gdpr/admin/namespaces/{namespace}/emails/configurations` | POST | SaveAdminEmailConfigurationShort | [SaveAdminEmailConfigurationShort](../../gdpr-sdk/pkg/gdprclient/configuration/configuration_client.go) | [SaveAdminEmailConfigurationShort](../../gdpr-sdk/pkg/wrapper_configuration.go) | [SaveAdminEmailConfigurationShort](../../samples/cli/cmd/gdpr/configuration/saveAdminEmailConfiguration.go) |
| `/gdpr/admin/namespaces/{namespace}/emails/configurations` | DELETE | DeleteAdminEmailConfigurationShort | [DeleteAdminEmailConfigurationShort](../../gdpr-sdk/pkg/gdprclient/configuration/configuration_client.go) | [DeleteAdminEmailConfigurationShort](../../gdpr-sdk/pkg/wrapper_configuration.go) | [DeleteAdminEmailConfigurationShort](../../samples/cli/cmd/gdpr/configuration/deleteAdminEmailConfiguration.go) |
| `/gdpr/admin/namespaces/{namespace}/services/configurations` | GET | AdminGetServicesConfigurationShort | [AdminGetServicesConfigurationShort](../../gdpr-sdk/pkg/gdprclient/configuration/configuration_client.go) | [AdminGetServicesConfigurationShort](../../gdpr-sdk/pkg/wrapper_configuration.go) | [AdminGetServicesConfigurationShort](../../samples/cli/cmd/gdpr/configuration/adminGetServicesConfiguration.go) |
| `/gdpr/admin/namespaces/{namespace}/services/configurations` | PUT | AdminUpdateServicesConfigurationShort | [AdminUpdateServicesConfigurationShort](../../gdpr-sdk/pkg/gdprclient/configuration/configuration_client.go) | [AdminUpdateServicesConfigurationShort](../../gdpr-sdk/pkg/wrapper_configuration.go) | [AdminUpdateServicesConfigurationShort](../../samples/cli/cmd/gdpr/configuration/adminUpdateServicesConfiguration.go) |
| `/gdpr/admin/namespaces/{namespace}/services/configurations/reset` | DELETE | AdminResetServicesConfigurationShort | [AdminResetServicesConfigurationShort](../../gdpr-sdk/pkg/gdprclient/configuration/configuration_client.go) | [AdminResetServicesConfigurationShort](../../gdpr-sdk/pkg/wrapper_configuration.go) | [AdminResetServicesConfigurationShort](../../samples/cli/cmd/gdpr/configuration/adminResetServicesConfiguration.go) |

### Data Retrieval Wrapper:  [DataRetrieval](../../gdpr-sdk/pkg/wrapper_dataRetrieval.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/gdpr/admin/namespaces/{namespace}/requests` | GET | AdminGetListPersonalDataRequestShort | [AdminGetListPersonalDataRequestShort](../../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [AdminGetListPersonalDataRequestShort](../../gdpr-sdk/pkg/wrapper_dataRetrieval.go) | [AdminGetListPersonalDataRequestShort](../../samples/cli/cmd/gdpr/dataRetrieval/adminGetListPersonalDataRequest.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/requests` | GET | AdminGetUserPersonalDataRequestsShort | [AdminGetUserPersonalDataRequestsShort](../../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [AdminGetUserPersonalDataRequestsShort](../../gdpr-sdk/pkg/wrapper_dataRetrieval.go) | [AdminGetUserPersonalDataRequestsShort](../../samples/cli/cmd/gdpr/dataRetrieval/adminGetUserPersonalDataRequests.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/requests` | POST | AdminRequestDataRetrievalShort | [AdminRequestDataRetrievalShort](../../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [AdminRequestDataRetrievalShort](../../gdpr-sdk/pkg/wrapper_dataRetrieval.go) | [AdminRequestDataRetrievalShort](../../samples/cli/cmd/gdpr/dataRetrieval/adminRequestDataRetrieval.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}` | DELETE | AdminCancelUserPersonalDataRequestShort | [AdminCancelUserPersonalDataRequestShort](../../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [AdminCancelUserPersonalDataRequestShort](../../gdpr-sdk/pkg/wrapper_dataRetrieval.go) | [AdminCancelUserPersonalDataRequestShort](../../samples/cli/cmd/gdpr/dataRetrieval/adminCancelUserPersonalDataRequest.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate` | POST | AdminGeneratePersonalDataURLShort | [AdminGeneratePersonalDataURLShort](../../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [AdminGeneratePersonalDataURLShort](../../gdpr-sdk/pkg/wrapper_dataRetrieval.go) | [AdminGeneratePersonalDataURLShort](../../samples/cli/cmd/gdpr/dataRetrieval/adminGeneratePersonalDataURL.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/requests` | GET | PublicGetUserPersonalDataRequestsShort | [PublicGetUserPersonalDataRequestsShort](../../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [PublicGetUserPersonalDataRequestsShort](../../gdpr-sdk/pkg/wrapper_dataRetrieval.go) | [PublicGetUserPersonalDataRequestsShort](../../samples/cli/cmd/gdpr/dataRetrieval/publicGetUserPersonalDataRequests.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/requests` | POST | PublicRequestDataRetrievalShort | [PublicRequestDataRetrievalShort](../../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [PublicRequestDataRetrievalShort](../../gdpr-sdk/pkg/wrapper_dataRetrieval.go) | [PublicRequestDataRetrievalShort](../../samples/cli/cmd/gdpr/dataRetrieval/publicRequestDataRetrieval.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}` | DELETE | PublicCancelUserPersonalDataRequestShort | [PublicCancelUserPersonalDataRequestShort](../../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [PublicCancelUserPersonalDataRequestShort](../../gdpr-sdk/pkg/wrapper_dataRetrieval.go) | [PublicCancelUserPersonalDataRequestShort](../../samples/cli/cmd/gdpr/dataRetrieval/publicCancelUserPersonalDataRequest.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate` | POST | PublicGeneratePersonalDataURLShort | [PublicGeneratePersonalDataURLShort](../../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [PublicGeneratePersonalDataURLShort](../../gdpr-sdk/pkg/wrapper_dataRetrieval.go) | [PublicGeneratePersonalDataURLShort](../../samples/cli/cmd/gdpr/dataRetrieval/publicGeneratePersonalDataURL.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `dto.ExtendConfigDTO` | [DtoExtendConfigDTO ](../../gdpr-sdk/pkg/gdprclientmodels/dto_extend_config_dto.go) |
| `dto.ServiceConfigDTO` | [DtoServiceConfigDTO ](../../gdpr-sdk/pkg/gdprclientmodels/dto_service_config_dto.go) |
| `dto.ServiceConfigurationDTO` | [DtoServiceConfigurationDTO ](../../gdpr-sdk/pkg/gdprclientmodels/dto_service_configuration_dto.go) |
| `dto.ServiceConfigurationUpdateRequest` | [DtoServiceConfigurationUpdateRequest ](../../gdpr-sdk/pkg/gdprclientmodels/dto_service_configuration_update_request.go) |
| `dto.ServicesConfigurationResponse` | [DtoServicesConfigurationResponse ](../../gdpr-sdk/pkg/gdprclientmodels/dto_services_configuration_response.go) |
| `models.DataRetrievalResponse` | [ModelsDataRetrievalResponse ](../../gdpr-sdk/pkg/gdprclientmodels/models_data_retrieval_response.go) |
| `models.DeletionData` | [ModelsDeletionData ](../../gdpr-sdk/pkg/gdprclientmodels/models_deletion_data.go) |
| `models.DeletionStatus` | [ModelsDeletionStatus ](../../gdpr-sdk/pkg/gdprclientmodels/models_deletion_status.go) |
| `models.ListDeletionDataResponse` | [ModelsListDeletionDataResponse ](../../gdpr-sdk/pkg/gdprclientmodels/models_list_deletion_data_response.go) |
| `models.ListPersonalDataResponse` | [ModelsListPersonalDataResponse ](../../gdpr-sdk/pkg/gdprclientmodels/models_list_personal_data_response.go) |
| `models.Pagination` | [ModelsPagination ](../../gdpr-sdk/pkg/gdprclientmodels/models_pagination.go) |
| `models.PersonalData` | [ModelsPersonalData ](../../gdpr-sdk/pkg/gdprclientmodels/models_personal_data.go) |
| `models.RequestDeleteResponse` | [ModelsRequestDeleteResponse ](../../gdpr-sdk/pkg/gdprclientmodels/models_request_delete_response.go) |
| `models.UserDataURL` | [ModelsUserDataURL ](../../gdpr-sdk/pkg/gdprclientmodels/models_user_data_url.go) |
| `models.UserPersonalData` | [ModelsUserPersonalData ](../../gdpr-sdk/pkg/gdprclientmodels/models_user_personal_data.go) |
| `models.UserPersonalDataResponse` | [ModelsUserPersonalDataResponse ](../../gdpr-sdk/pkg/gdprclientmodels/models_user_personal_data_response.go) |
| `response.Error` | [ResponseError ](../../gdpr-sdk/pkg/gdprclientmodels/response_error.go) |
