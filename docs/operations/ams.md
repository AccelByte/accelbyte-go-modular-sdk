[//]: # (Code generated. DO NOT EDIT.)

# Ams Service Index

&nbsp;

## Operations

### Auth Wrapper:  [Auth](../../ams-sdk/pkg/wrapper_auth.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/auth` | GET | AuthCheckShort | [AuthCheckShort](../../ams-sdk/pkg/amsclient/auth/auth_client.go) | [AuthCheckShort](../../ams-sdk/pkg/wrapper_auth.go) | [AuthCheckShort](../../samples/cli/cmd/ams/auth/authCheck.go) |

### Fleet Commander Wrapper:  [FleetCommander](../../ams-sdk/pkg/wrapper_fleetCommander.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/healthz` | GET | PortalHealthCheckShort | [PortalHealthCheckShort](../../ams-sdk/pkg/amsclient/fleet_commander/fleet_commander_client.go) | [PortalHealthCheckShort](../../ams-sdk/pkg/wrapper_fleetCommander.go) | [PortalHealthCheckShort](../../samples/cli/cmd/ams/fleetCommander/portalHealthCheck.go) |
| `/ams/version` | GET | Func1Short | [Func1Short](../../ams-sdk/pkg/amsclient/fleet_commander/fleet_commander_client.go) | [Func1Short](../../ams-sdk/pkg/wrapper_fleetCommander.go) | [Func1Short](../../samples/cli/cmd/ams/fleetCommander/func1.go) |
| `/healthz` | GET | BasicHealthCheckShort | [BasicHealthCheckShort](../../ams-sdk/pkg/amsclient/fleet_commander/fleet_commander_client.go) | [BasicHealthCheckShort](../../ams-sdk/pkg/wrapper_fleetCommander.go) | [BasicHealthCheckShort](../../samples/cli/cmd/ams/fleetCommander/basicHealthCheck.go) |

### Account Wrapper:  [Account](../../ams-sdk/pkg/wrapper_account.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/admin/namespaces/{namespace}/account` | GET | AdminAccountGetShort | [AdminAccountGetShort](../../ams-sdk/pkg/amsclient/account/account_client.go) | [AdminAccountGetShort](../../ams-sdk/pkg/wrapper_account.go) | [AdminAccountGetShort](../../samples/cli/cmd/ams/account/adminAccountGet.go) |
| `/ams/v1/admin/namespaces/{namespace}/account` | POST | AdminAccountCreateShort | [AdminAccountCreateShort](../../ams-sdk/pkg/amsclient/account/account_client.go) | [AdminAccountCreateShort](../../ams-sdk/pkg/wrapper_account.go) | [AdminAccountCreateShort](../../samples/cli/cmd/ams/account/adminAccountCreate.go) |
| `/ams/v1/admin/namespaces/{namespace}/account/link` | GET | AdminAccountLinkTokenGetShort | [AdminAccountLinkTokenGetShort](../../ams-sdk/pkg/amsclient/account/account_client.go) | [AdminAccountLinkTokenGetShort](../../ams-sdk/pkg/wrapper_account.go) | [AdminAccountLinkTokenGetShort](../../samples/cli/cmd/ams/account/adminAccountLinkTokenGet.go) |
| `/ams/v1/admin/namespaces/{namespace}/account/link` | POST | AdminAccountLinkShort | [AdminAccountLinkShort](../../ams-sdk/pkg/amsclient/account/account_client.go) | [AdminAccountLinkShort](../../ams-sdk/pkg/wrapper_account.go) | [AdminAccountLinkShort](../../samples/cli/cmd/ams/account/adminAccountLink.go) |
| `/ams/v1/namespaces/{namespace}/account` | GET | AccountGetShort | [AccountGetShort](../../ams-sdk/pkg/amsclient/account/account_client.go) | [AccountGetShort](../../ams-sdk/pkg/wrapper_account.go) | [AccountGetShort](../../samples/cli/cmd/ams/account/accountGet.go) |

### Artifacts Wrapper:  [Artifacts](../../ams-sdk/pkg/wrapper_artifacts.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/admin/namespaces/{namespace}/artifacts` | GET | ArtifactGetShort | [ArtifactGetShort](../../ams-sdk/pkg/amsclient/artifacts/artifacts_client.go) | [ArtifactGetShort](../../ams-sdk/pkg/wrapper_artifacts.go) | [ArtifactGetShort](../../samples/cli/cmd/ams/artifacts/artifactGet.go) |
| `/ams/v1/admin/namespaces/{namespace}/artifacts` | DELETE | ArtifactBulkDeleteShort | [ArtifactBulkDeleteShort](../../ams-sdk/pkg/amsclient/artifacts/artifacts_client.go) | [ArtifactBulkDeleteShort](../../ams-sdk/pkg/wrapper_artifacts.go) | [ArtifactBulkDeleteShort](../../samples/cli/cmd/ams/artifacts/artifactBulkDelete.go) |
| `/ams/v1/admin/namespaces/{namespace}/artifacts/usage` | GET | ArtifactUsageGetShort | [ArtifactUsageGetShort](../../ams-sdk/pkg/amsclient/artifacts/artifacts_client.go) | [ArtifactUsageGetShort](../../ams-sdk/pkg/wrapper_artifacts.go) | [ArtifactUsageGetShort](../../samples/cli/cmd/ams/artifacts/artifactUsageGet.go) |
| `/ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}` | DELETE | ArtifactDeleteShort | [ArtifactDeleteShort](../../ams-sdk/pkg/amsclient/artifacts/artifacts_client.go) | [ArtifactDeleteShort](../../ams-sdk/pkg/wrapper_artifacts.go) | [ArtifactDeleteShort](../../samples/cli/cmd/ams/artifacts/artifactDelete.go) |
| `/ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url` | GET | ArtifactGetURLShort | [ArtifactGetURLShort](../../ams-sdk/pkg/amsclient/artifacts/artifacts_client.go) | [ArtifactGetURLShort](../../ams-sdk/pkg/wrapper_artifacts.go) | [ArtifactGetURLShort](../../samples/cli/cmd/ams/artifacts/artifactGetURL.go) |
| `/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules` | GET | FleetArtifactSamplingRulesGetShort | [FleetArtifactSamplingRulesGetShort](../../ams-sdk/pkg/amsclient/artifacts/artifacts_client.go) | [FleetArtifactSamplingRulesGetShort](../../ams-sdk/pkg/wrapper_artifacts.go) | [FleetArtifactSamplingRulesGetShort](../../samples/cli/cmd/ams/artifacts/fleetArtifactSamplingRulesGet.go) |
| `/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules` | PUT | FleetArtifactSamplingRulesSetShort | [FleetArtifactSamplingRulesSetShort](../../ams-sdk/pkg/amsclient/artifacts/artifacts_client.go) | [FleetArtifactSamplingRulesSetShort](../../ams-sdk/pkg/wrapper_artifacts.go) | [FleetArtifactSamplingRulesSetShort](../../samples/cli/cmd/ams/artifacts/fleetArtifactSamplingRulesSet.go) |

### Development Wrapper:  [Development](../../ams-sdk/pkg/wrapper_development.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/admin/namespaces/{namespace}/development/server-configurations` | GET | DevelopmentServerConfigurationListShort | [DevelopmentServerConfigurationListShort](../../ams-sdk/pkg/amsclient/development/development_client.go) | [DevelopmentServerConfigurationListShort](../../ams-sdk/pkg/wrapper_development.go) | [DevelopmentServerConfigurationListShort](../../samples/cli/cmd/ams/development/developmentServerConfigurationList.go) |
| `/ams/v1/admin/namespaces/{namespace}/development/server-configurations` | POST | DevelopmentServerConfigurationCreateShort | [DevelopmentServerConfigurationCreateShort](../../ams-sdk/pkg/amsclient/development/development_client.go) | [DevelopmentServerConfigurationCreateShort](../../ams-sdk/pkg/wrapper_development.go) | [DevelopmentServerConfigurationCreateShort](../../samples/cli/cmd/ams/development/developmentServerConfigurationCreate.go) |
| `/ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}` | GET | DevelopmentServerConfigurationGetShort | [DevelopmentServerConfigurationGetShort](../../ams-sdk/pkg/amsclient/development/development_client.go) | [DevelopmentServerConfigurationGetShort](../../ams-sdk/pkg/wrapper_development.go) | [DevelopmentServerConfigurationGetShort](../../samples/cli/cmd/ams/development/developmentServerConfigurationGet.go) |
| `/ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}` | DELETE | DevelopmentServerConfigurationDeleteShort | [DevelopmentServerConfigurationDeleteShort](../../ams-sdk/pkg/amsclient/development/development_client.go) | [DevelopmentServerConfigurationDeleteShort](../../ams-sdk/pkg/wrapper_development.go) | [DevelopmentServerConfigurationDeleteShort](../../samples/cli/cmd/ams/development/developmentServerConfigurationDelete.go) |
| `/ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}` | PATCH | DevelopmentServerConfigurationPatchShort | [DevelopmentServerConfigurationPatchShort](../../ams-sdk/pkg/amsclient/development/development_client.go) | [DevelopmentServerConfigurationPatchShort](../../ams-sdk/pkg/wrapper_development.go) | [DevelopmentServerConfigurationPatchShort](../../samples/cli/cmd/ams/development/developmentServerConfigurationPatch.go) |

### Fleets Wrapper:  [Fleets](../../ams-sdk/pkg/wrapper_fleets.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/admin/namespaces/{namespace}/fleets` | GET | FleetListShort | [FleetListShort](../../ams-sdk/pkg/amsclient/fleets/fleets_client.go) | [FleetListShort](../../ams-sdk/pkg/wrapper_fleets.go) | [FleetListShort](../../samples/cli/cmd/ams/fleets/fleetList.go) |
| `/ams/v1/admin/namespaces/{namespace}/fleets` | POST | FleetCreateShort | [FleetCreateShort](../../ams-sdk/pkg/amsclient/fleets/fleets_client.go) | [FleetCreateShort](../../ams-sdk/pkg/wrapper_fleets.go) | [FleetCreateShort](../../samples/cli/cmd/ams/fleets/fleetCreate.go) |
| `/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}` | GET | FleetGetShort | [FleetGetShort](../../ams-sdk/pkg/amsclient/fleets/fleets_client.go) | [FleetGetShort](../../ams-sdk/pkg/wrapper_fleets.go) | [FleetGetShort](../../samples/cli/cmd/ams/fleets/fleetGet.go) |
| `/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}` | PUT | FleetUpdateShort | [FleetUpdateShort](../../ams-sdk/pkg/amsclient/fleets/fleets_client.go) | [FleetUpdateShort](../../ams-sdk/pkg/wrapper_fleets.go) | [FleetUpdateShort](../../samples/cli/cmd/ams/fleets/fleetUpdate.go) |
| `/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}` | DELETE | FleetDeleteShort | [FleetDeleteShort](../../ams-sdk/pkg/amsclient/fleets/fleets_client.go) | [FleetDeleteShort](../../ams-sdk/pkg/wrapper_fleets.go) | [FleetDeleteShort](../../samples/cli/cmd/ams/fleets/fleetDelete.go) |
| `/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers` | GET | FleetServersShort | [FleetServersShort](../../ams-sdk/pkg/amsclient/fleets/fleets_client.go) | [FleetServersShort](../../ams-sdk/pkg/wrapper_fleets.go) | [FleetServersShort](../../samples/cli/cmd/ams/fleets/fleetServers.go) |
| `/ams/v1/namespaces/{namespace}/fleets/{fleetID}/claim` | PUT | FleetClaimByIDShort | [FleetClaimByIDShort](../../ams-sdk/pkg/amsclient/fleets/fleets_client.go) | [FleetClaimByIDShort](../../ams-sdk/pkg/wrapper_fleets.go) | [FleetClaimByIDShort](../../samples/cli/cmd/ams/fleets/fleetClaimByID.go) |
| `/ams/v1/namespaces/{namespace}/servers/claim` | PUT | FleetClaimByKeysShort | [FleetClaimByKeysShort](../../ams-sdk/pkg/amsclient/fleets/fleets_client.go) | [FleetClaimByKeysShort](../../ams-sdk/pkg/wrapper_fleets.go) | [FleetClaimByKeysShort](../../samples/cli/cmd/ams/fleets/fleetClaimByKeys.go) |

### Servers Wrapper:  [Servers](../../ams-sdk/pkg/wrapper_servers.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history` | GET | FleetServerHistoryShort | [FleetServerHistoryShort](../../ams-sdk/pkg/amsclient/servers/servers_client.go) | [FleetServerHistoryShort](../../ams-sdk/pkg/wrapper_servers.go) | [FleetServerHistoryShort](../../samples/cli/cmd/ams/servers/fleetServerHistory.go) |
| `/ams/v1/admin/namespaces/{namespace}/servers/{serverID}` | GET | FleetServerInfoShort | [FleetServerInfoShort](../../ams-sdk/pkg/amsclient/servers/servers_client.go) | [FleetServerInfoShort](../../ams-sdk/pkg/wrapper_servers.go) | [FleetServerInfoShort](../../samples/cli/cmd/ams/servers/fleetServerInfo.go) |
| `/ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo` | GET | FleetServerConnectionInfoShort | [FleetServerConnectionInfoShort](../../ams-sdk/pkg/amsclient/servers/servers_client.go) | [FleetServerConnectionInfoShort](../../ams-sdk/pkg/wrapper_servers.go) | [FleetServerConnectionInfoShort](../../samples/cli/cmd/ams/servers/fleetServerConnectionInfo.go) |
| `/ams/v1/admin/namespaces/{namespace}/servers/{serverID}/history` | GET | ServerHistoryShort | [ServerHistoryShort](../../ams-sdk/pkg/amsclient/servers/servers_client.go) | [ServerHistoryShort](../../ams-sdk/pkg/wrapper_servers.go) | [ServerHistoryShort](../../samples/cli/cmd/ams/servers/serverHistory.go) |

### Images Wrapper:  [Images](../../ams-sdk/pkg/wrapper_images.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/admin/namespaces/{namespace}/images` | GET | ImageListShort | [ImageListShort](../../ams-sdk/pkg/amsclient/images/images_client.go) | [ImageListShort](../../ams-sdk/pkg/wrapper_images.go) | [ImageListShort](../../samples/cli/cmd/ams/images/imageList.go) |
| `/ams/v1/admin/namespaces/{namespace}/images-storage` | GET | ImagesStorageShort | [ImagesStorageShort](../../ams-sdk/pkg/amsclient/images/images_client.go) | [ImagesStorageShort](../../ams-sdk/pkg/wrapper_images.go) | [ImagesStorageShort](../../samples/cli/cmd/ams/images/imagesStorage.go) |
| `/ams/v1/admin/namespaces/{namespace}/images/{imageID}` | GET | ImageGetShort | [ImageGetShort](../../ams-sdk/pkg/amsclient/images/images_client.go) | [ImageGetShort](../../ams-sdk/pkg/wrapper_images.go) | [ImageGetShort](../../samples/cli/cmd/ams/images/imageGet.go) |
| `/ams/v1/admin/namespaces/{namespace}/images/{imageID}` | DELETE | ImageMarkForDeletionShort | [ImageMarkForDeletionShort](../../ams-sdk/pkg/amsclient/images/images_client.go) | [ImageMarkForDeletionShort](../../ams-sdk/pkg/wrapper_images.go) | [ImageMarkForDeletionShort](../../samples/cli/cmd/ams/images/imageMarkForDeletion.go) |
| `/ams/v1/admin/namespaces/{namespace}/images/{imageID}` | PATCH | ImagePatchShort | [ImagePatchShort](../../ams-sdk/pkg/amsclient/images/images_client.go) | [ImagePatchShort](../../ams-sdk/pkg/wrapper_images.go) | [ImagePatchShort](../../samples/cli/cmd/ams/images/imagePatch.go) |
| `/ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore` | POST | ImageUnmarkForDeletionShort | [ImageUnmarkForDeletionShort](../../ams-sdk/pkg/amsclient/images/images_client.go) | [ImageUnmarkForDeletionShort](../../ams-sdk/pkg/wrapper_images.go) | [ImageUnmarkForDeletionShort](../../samples/cli/cmd/ams/images/imageUnmarkForDeletion.go) |

### AMS QoS Wrapper:  [AMSQoS](../../ams-sdk/pkg/wrapper_amsQoS.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/admin/namespaces/{namespace}/qos` | GET | QoSRegionsGetShort | [QoSRegionsGetShort](../../ams-sdk/pkg/amsclient/a_m_s_qo_s/ams_qo_s_client.go) | [QoSRegionsGetShort](../../ams-sdk/pkg/wrapper_amsQoS.go) | [QoSRegionsGetShort](../../samples/cli/cmd/ams/amsQoS/qoSRegionsGet.go) |
| `/ams/v1/admin/namespaces/{namespace}/qos/{region}` | PATCH | QoSRegionsUpdateShort | [QoSRegionsUpdateShort](../../ams-sdk/pkg/amsclient/a_m_s_qo_s/ams_qo_s_client.go) | [QoSRegionsUpdateShort](../../ams-sdk/pkg/wrapper_amsQoS.go) | [QoSRegionsUpdateShort](../../samples/cli/cmd/ams/amsQoS/qoSRegionsUpdate.go) |

### AMS Info Wrapper:  [AMSInfo](../../ams-sdk/pkg/wrapper_amsInfo.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/admin/namespaces/{namespace}/regions` | GET | InfoRegionsShort | [InfoRegionsShort](../../ams-sdk/pkg/amsclient/a_m_s_info/ams_info_client.go) | [InfoRegionsShort](../../ams-sdk/pkg/wrapper_amsInfo.go) | [InfoRegionsShort](../../samples/cli/cmd/ams/amsInfo/infoRegions.go) |
| `/ams/v1/admin/namespaces/{namespace}/supported-instances` | GET | InfoSupportedInstancesShort | [InfoSupportedInstancesShort](../../ams-sdk/pkg/amsclient/a_m_s_info/ams_info_client.go) | [InfoSupportedInstancesShort](../../ams-sdk/pkg/wrapper_amsInfo.go) | [InfoSupportedInstancesShort](../../samples/cli/cmd/ams/amsInfo/infoSupportedInstances.go) |
| `/ams/v1/upload-url` | GET | UploadURLGetShort | [UploadURLGetShort](../../ams-sdk/pkg/amsclient/a_m_s_info/ams_info_client.go) | [UploadURLGetShort](../../ams-sdk/pkg/wrapper_amsInfo.go) | [UploadURLGetShort](../../samples/cli/cmd/ams/amsInfo/uploadURLGet.go) |

### Watchdogs Wrapper:  [Watchdogs](../../ams-sdk/pkg/wrapper_watchdogs.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/namespaces/{namespace}/local/{watchdogID}/connect` | GET | LocalWatchdogConnectShort | [LocalWatchdogConnectShort](../../ams-sdk/pkg/amsclient/watchdogs/watchdogs_client.go) | [LocalWatchdogConnectShort](../../ams-sdk/pkg/wrapper_watchdogs.go) | [LocalWatchdogConnectShort](../../samples/cli/cmd/ams/watchdogs/localWatchdogConnect.go) |
| `/ams/v1/namespaces/{namespace}/watchdogs/{watchdogID}/connect` | GET | WatchdogConnectShort | [WatchdogConnectShort](../../ams-sdk/pkg/amsclient/watchdogs/watchdogs_client.go) | [WatchdogConnectShort](../../ams-sdk/pkg/wrapper_watchdogs.go) | [WatchdogConnectShort](../../samples/cli/cmd/ams/watchdogs/watchdogConnect.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `api.AMSRegionsResponse` | [ApiAMSRegionsResponse ](../../ams-sdk/pkg/amsclientmodels/api_a_m_s_regions_response.go) |
| `api.AccountCreateRequest` | [ApiAccountCreateRequest ](../../ams-sdk/pkg/amsclientmodels/api_account_create_request.go) |
| `api.AccountCreateResponse` | [ApiAccountCreateResponse ](../../ams-sdk/pkg/amsclientmodels/api_account_create_response.go) |
| `api.AccountLimits` | [ApiAccountLimits ](../../ams-sdk/pkg/amsclientmodels/api_account_limits.go) |
| `api.AccountLinkRequest` | [ApiAccountLinkRequest ](../../ams-sdk/pkg/amsclientmodels/api_account_link_request.go) |
| `api.AccountLinkResponse` | [ApiAccountLinkResponse ](../../ams-sdk/pkg/amsclientmodels/api_account_link_response.go) |
| `api.AccountLinkTokenResponse` | [ApiAccountLinkTokenResponse ](../../ams-sdk/pkg/amsclientmodels/api_account_link_token_response.go) |
| `api.AccountResponse` | [ApiAccountResponse ](../../ams-sdk/pkg/amsclientmodels/api_account_response.go) |
| `api.ArtifactListResponse` | [ApiArtifactListResponse ](../../ams-sdk/pkg/amsclientmodels/api_artifact_list_response.go) |
| `api.ArtifactResponse` | [ApiArtifactResponse ](../../ams-sdk/pkg/amsclientmodels/api_artifact_response.go) |
| `api.ArtifactSamplingRule` | [ApiArtifactSamplingRule ](../../ams-sdk/pkg/amsclientmodels/api_artifact_sampling_rule.go) |
| `api.ArtifactTypeSamplingRules` | [ApiArtifactTypeSamplingRules ](../../ams-sdk/pkg/amsclientmodels/api_artifact_type_sampling_rules.go) |
| `api.ArtifactURLResponse` | [ApiArtifactURLResponse ](../../ams-sdk/pkg/amsclientmodels/api_artifact_url_response.go) |
| `api.ArtifactUsageResponse` | [ApiArtifactUsageResponse ](../../ams-sdk/pkg/amsclientmodels/api_artifact_usage_response.go) |
| `api.Capacity` | [ApiCapacity ](../../ams-sdk/pkg/amsclientmodels/api_capacity.go) |
| `api.CoredumpSamplingRules` | [ApiCoredumpSamplingRules ](../../ams-sdk/pkg/amsclientmodels/api_coredump_sampling_rules.go) |
| `api.DSHistoryEvent` | [ApiDSHistoryEvent ](../../ams-sdk/pkg/amsclientmodels/api_d_s_history_event.go) |
| `api.DSHistoryList` | [ApiDSHistoryList ](../../ams-sdk/pkg/amsclientmodels/api_d_s_history_list.go) |
| `api.DSHostConfiguration` | [ApiDSHostConfiguration ](../../ams-sdk/pkg/amsclientmodels/api_d_s_host_configuration.go) |
| `api.DSHostConfigurationParameters` | [ApiDSHostConfigurationParameters ](../../ams-sdk/pkg/amsclientmodels/api_d_s_host_configuration_parameters.go) |
| `api.DevelopmentServerConfigurationCreateRequest` | [ApiDevelopmentServerConfigurationCreateRequest ](../../ams-sdk/pkg/amsclientmodels/api_development_server_configuration_create_request.go) |
| `api.DevelopmentServerConfigurationCreateResponse` | [ApiDevelopmentServerConfigurationCreateResponse ](../../ams-sdk/pkg/amsclientmodels/api_development_server_configuration_create_response.go) |
| `api.DevelopmentServerConfigurationGetResponse` | [ApiDevelopmentServerConfigurationGetResponse ](../../ams-sdk/pkg/amsclientmodels/api_development_server_configuration_get_response.go) |
| `api.DevelopmentServerConfigurationListResponse` | [ApiDevelopmentServerConfigurationListResponse ](../../ams-sdk/pkg/amsclientmodels/api_development_server_configuration_list_response.go) |
| `api.DevelopmentServerConfigurationUpdateRequest` | [ApiDevelopmentServerConfigurationUpdateRequest ](../../ams-sdk/pkg/amsclientmodels/api_development_server_configuration_update_request.go) |
| `api.FleetArtifactsSampleRules` | [ApiFleetArtifactsSampleRules ](../../ams-sdk/pkg/amsclientmodels/api_fleet_artifacts_sample_rules.go) |
| `api.FleetClaimByKeysReq` | [ApiFleetClaimByKeysReq ](../../ams-sdk/pkg/amsclientmodels/api_fleet_claim_by_keys_req.go) |
| `api.FleetClaimReq` | [ApiFleetClaimReq ](../../ams-sdk/pkg/amsclientmodels/api_fleet_claim_req.go) |
| `api.FleetClaimResponse` | [ApiFleetClaimResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_claim_response.go) |
| `api.FleetCreateResponse` | [ApiFleetCreateResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_create_response.go) |
| `api.FleetGetResponse` | [ApiFleetGetResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_get_response.go) |
| `api.FleetListItemResponse` | [ApiFleetListItemResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_list_item_response.go) |
| `api.FleetListResponse` | [ApiFleetListResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_list_response.go) |
| `api.FleetParameters` | [ApiFleetParameters ](../../ams-sdk/pkg/amsclientmodels/api_fleet_parameters.go) |
| `api.FleetRegionalServerCounts` | [ApiFleetRegionalServerCounts ](../../ams-sdk/pkg/amsclientmodels/api_fleet_regional_server_counts.go) |
| `api.FleetServerConnectionInfoResponse` | [ApiFleetServerConnectionInfoResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_server_connection_info_response.go) |
| `api.FleetServerHistoryEventResponse` | [ApiFleetServerHistoryEventResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_server_history_event_response.go) |
| `api.FleetServerHistoryResponse` | [ApiFleetServerHistoryResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_server_history_response.go) |
| `api.FleetServerInfoResponse` | [ApiFleetServerInfoResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_server_info_response.go) |
| `api.FleetServersResponse` | [ApiFleetServersResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_servers_response.go) |
| `api.ImageDeploymentProfile` | [ApiImageDeploymentProfile ](../../ams-sdk/pkg/amsclientmodels/api_image_deployment_profile.go) |
| `api.ImageDetails` | [ApiImageDetails ](../../ams-sdk/pkg/amsclientmodels/api_image_details.go) |
| `api.ImageList` | [ApiImageList ](../../ams-sdk/pkg/amsclientmodels/api_image_list.go) |
| `api.ImageListItem` | [ApiImageListItem ](../../ams-sdk/pkg/amsclientmodels/api_image_list_item.go) |
| `api.ImageStorage` | [ApiImageStorage ](../../ams-sdk/pkg/amsclientmodels/api_image_storage.go) |
| `api.ImageUpdate` | [ApiImageUpdate ](../../ams-sdk/pkg/amsclientmodels/api_image_update.go) |
| `api.InstanceType` | [ApiInstanceType ](../../ams-sdk/pkg/amsclientmodels/api_instance_type.go) |
| `api.InstanceTypesResponse` | [ApiInstanceTypesResponse ](../../ams-sdk/pkg/amsclientmodels/api_instance_types_response.go) |
| `api.PagingInfo` | [ApiPagingInfo ](../../ams-sdk/pkg/amsclientmodels/api_paging_info.go) |
| `api.PortConfiguration` | [ApiPortConfiguration ](../../ams-sdk/pkg/amsclientmodels/api_port_configuration.go) |
| `api.QoSEndpointResponse` | [ApiQoSEndpointResponse ](../../ams-sdk/pkg/amsclientmodels/api_qo_s_endpoint_response.go) |
| `api.QoSServer` | [ApiQoSServer ](../../ams-sdk/pkg/amsclientmodels/api_qo_s_server.go) |
| `api.ReferencingFleet` | [ApiReferencingFleet ](../../ams-sdk/pkg/amsclientmodels/api_referencing_fleet.go) |
| `api.RegionConfig` | [ApiRegionConfig ](../../ams-sdk/pkg/amsclientmodels/api_region_config.go) |
| `api.Timeout` | [ApiTimeout ](../../ams-sdk/pkg/amsclientmodels/api_timeout.go) |
| `api.UpdateServerRequest` | [ApiUpdateServerRequest ](../../ams-sdk/pkg/amsclientmodels/api_update_server_request.go) |
| `pagination.PaginationInfo` | [PaginationPaginationInfo ](../../ams-sdk/pkg/amsclientmodels/pagination_pagination_info.go) |
| `response.ErrorResponse` | [ResponseErrorResponse ](../../ams-sdk/pkg/amsclientmodels/response_error_response.go) |
