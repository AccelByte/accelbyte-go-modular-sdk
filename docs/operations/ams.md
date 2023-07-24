# Ams Service Index

&nbsp;

## Operations

### Account Wrapper:  [Account](../../ams-sdk/pkg/wrapper_account.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/admin/namespaces/{namespace}/account` | GET | AccountGetShort | [AccountGetShort](../../ams-sdk/pkg/amsclient/account/account_client.go) | [AccountGetShort](../../ams-sdk/pkg/wrapper_account.go) | [AccountGetShort](../../samples/cli/cmd/ams/account/accountGet.go) |
| `/ams/v1/admin/namespaces/{namespace}/account` | POST | AccountCreateShort | [AccountCreateShort](../../ams-sdk/pkg/amsclient/account/account_client.go) | [AccountCreateShort](../../ams-sdk/pkg/wrapper_account.go) | [AccountCreateShort](../../samples/cli/cmd/ams/account/accountCreate.go) |
| `/ams/v1/admin/namespaces/{namespace}/account/link` | GET | AccountLinkTokenGetShort | [AccountLinkTokenGetShort](../../ams-sdk/pkg/amsclient/account/account_client.go) | [AccountLinkTokenGetShort](../../ams-sdk/pkg/wrapper_account.go) | [AccountLinkTokenGetShort](../../samples/cli/cmd/ams/account/accountLinkTokenGet.go) |
| `/ams/v1/admin/namespaces/{namespace}/account/link` | POST | AccountLinkShort | [AccountLinkShort](../../ams-sdk/pkg/amsclient/account/account_client.go) | [AccountLinkShort](../../ams-sdk/pkg/wrapper_account.go) | [AccountLinkShort](../../samples/cli/cmd/ams/account/accountLink.go) |

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
| `/ams/v1/admin/namespaces/{namespace}/servers/{serverID}/history` | GET | ServerHistoryShort | [ServerHistoryShort](../../ams-sdk/pkg/amsclient/servers/servers_client.go) | [ServerHistoryShort](../../ams-sdk/pkg/wrapper_servers.go) | [ServerHistoryShort](../../samples/cli/cmd/ams/servers/serverHistory.go) |

### Images Wrapper:  [Images](../../ams-sdk/pkg/wrapper_images.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/admin/namespaces/{namespace}/images` | GET | ImageListShort | [ImageListShort](../../ams-sdk/pkg/amsclient/images/images_client.go) | [ImageListShort](../../ams-sdk/pkg/wrapper_images.go) | [ImageListShort](../../samples/cli/cmd/ams/images/imageList.go) |
| `/ams/v1/admin/namespaces/{namespace}/images/{imageID}` | GET | ImageGetShort | [ImageGetShort](../../ams-sdk/pkg/amsclient/images/images_client.go) | [ImageGetShort](../../ams-sdk/pkg/wrapper_images.go) | [ImageGetShort](../../samples/cli/cmd/ams/images/imageGet.go) |
| `/ams/v1/admin/namespaces/{namespace}/images/{imageID}` | PATCH | ImagePatchShort | [ImagePatchShort](../../ams-sdk/pkg/amsclient/images/images_client.go) | [ImagePatchShort](../../ams-sdk/pkg/wrapper_images.go) | [ImagePatchShort](../../samples/cli/cmd/ams/images/imagePatch.go) |

### AMS Info Wrapper:  [AMSInfo](../../ams-sdk/pkg/wrapper_amsInfo.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/admin/namespaces/{namespace}/regions` | GET | InfoRegionsShort | [InfoRegionsShort](../../ams-sdk/pkg/amsclient/a_m_s_info/ams_info_client.go) | [InfoRegionsShort](../../ams-sdk/pkg/wrapper_amsInfo.go) | [InfoRegionsShort](../../samples/cli/cmd/ams/amsInfo/infoRegions.go) |
| `/ams/v1/admin/namespaces/{namespace}/supported-instances` | GET | InfoSupportedInstancesShort | [InfoSupportedInstancesShort](../../ams-sdk/pkg/amsclient/a_m_s_info/ams_info_client.go) | [InfoSupportedInstancesShort](../../ams-sdk/pkg/wrapper_amsInfo.go) | [InfoSupportedInstancesShort](../../samples/cli/cmd/ams/amsInfo/infoSupportedInstances.go) |

### Watchdogs Wrapper:  [Watchdogs](../../ams-sdk/pkg/wrapper_watchdogs.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/v1/namespaces/{namespace}/watchdogs/{watchdogID}/connect` | GET | WatchdogConnectShort | [WatchdogConnectShort](../../ams-sdk/pkg/amsclient/watchdogs/watchdogs_client.go) | [WatchdogConnectShort](../../ams-sdk/pkg/wrapper_watchdogs.go) | [WatchdogConnectShort](../../samples/cli/cmd/ams/watchdogs/watchdogConnect.go) |

### Fleet Commander Wrapper:  [FleetCommander](../../ams-sdk/pkg/wrapper_fleetCommander.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ams/version` | GET | Func1Short | [Func1Short](../../ams-sdk/pkg/amsclient/fleet_commander/fleet_commander_client.go) | [Func1Short](../../ams-sdk/pkg/wrapper_fleetCommander.go) | [Func1Short](../../samples/cli/cmd/ams/fleetCommander/func1.go) |

### Operations Wrapper:  [Operations](../../ams-sdk/pkg/wrapper_operations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/healthz` | GET | BasicHealthCheckShort | [BasicHealthCheckShort](../../ams-sdk/pkg/amsclient/operations/operations_client.go) | [BasicHealthCheckShort](../../ams-sdk/pkg/wrapper_operations.go) | [BasicHealthCheckShort](../../samples/cli/cmd/ams/operations/basicHealthCheck.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `api.AccountCreateRequest` | [ApiAccountCreateRequest ](../../ams-sdk/pkg/amsclientmodels/api_account_create_request.go) |
| `api.AccountCreateResponse` | [ApiAccountCreateResponse ](../../ams-sdk/pkg/amsclientmodels/api_account_create_response.go) |
| `api.AccountLinkRequest` | [ApiAccountLinkRequest ](../../ams-sdk/pkg/amsclientmodels/api_account_link_request.go) |
| `api.AccountLinkResponse` | [ApiAccountLinkResponse ](../../ams-sdk/pkg/amsclientmodels/api_account_link_response.go) |
| `api.AccountLinkTokenResponse` | [ApiAccountLinkTokenResponse ](../../ams-sdk/pkg/amsclientmodels/api_account_link_token_response.go) |
| `api.AccountResponse` | [ApiAccountResponse ](../../ams-sdk/pkg/amsclientmodels/api_account_response.go) |
| `api.AvailableInstanceTypesResponse` | [ApiAvailableInstanceTypesResponse ](../../ams-sdk/pkg/amsclientmodels/api_available_instance_types_response.go) |
| `api.DSHistoryEvent` | [ApiDSHistoryEvent ](../../ams-sdk/pkg/amsclientmodels/api_d_s_history_event.go) |
| `api.DSHistoryList` | [ApiDSHistoryList ](../../ams-sdk/pkg/amsclientmodels/api_d_s_history_list.go) |
| `api.DSHostConfiguration` | [ApiDSHostConfiguration ](../../ams-sdk/pkg/amsclientmodels/api_d_s_host_configuration.go) |
| `api.FleetClaimByKeysReq` | [ApiFleetClaimByKeysReq ](../../ams-sdk/pkg/amsclientmodels/api_fleet_claim_by_keys_req.go) |
| `api.FleetClaimReq` | [ApiFleetClaimReq ](../../ams-sdk/pkg/amsclientmodels/api_fleet_claim_req.go) |
| `api.FleetClaimResponse` | [ApiFleetClaimResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_claim_response.go) |
| `api.FleetCreateResponse` | [ApiFleetCreateResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_create_response.go) |
| `api.FleetGetResponse` | [ApiFleetGetResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_get_response.go) |
| `api.FleetListItemResponse` | [ApiFleetListItemResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_list_item_response.go) |
| `api.FleetListResponse` | [ApiFleetListResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_list_response.go) |
| `api.FleetParameters` | [ApiFleetParameters ](../../ams-sdk/pkg/amsclientmodels/api_fleet_parameters.go) |
| `api.FleetRegionalServerCounts` | [ApiFleetRegionalServerCounts ](../../ams-sdk/pkg/amsclientmodels/api_fleet_regional_server_counts.go) |
| `api.FleetServerHistoryEventResponse` | [ApiFleetServerHistoryEventResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_server_history_event_response.go) |
| `api.FleetServerHistoryResponse` | [ApiFleetServerHistoryResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_server_history_response.go) |
| `api.FleetServerInfoResponse` | [ApiFleetServerInfoResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_server_info_response.go) |
| `api.FleetServersResponse` | [ApiFleetServersResponse ](../../ams-sdk/pkg/amsclientmodels/api_fleet_servers_response.go) |
| `api.ImageDeploymentProfile` | [ApiImageDeploymentProfile ](../../ams-sdk/pkg/amsclientmodels/api_image_deployment_profile.go) |
| `api.ImageDetails` | [ApiImageDetails ](../../ams-sdk/pkg/amsclientmodels/api_image_details.go) |
| `api.ImageList` | [ApiImageList ](../../ams-sdk/pkg/amsclientmodels/api_image_list.go) |
| `api.ImageListItem` | [ApiImageListItem ](../../ams-sdk/pkg/amsclientmodels/api_image_list_item.go) |
| `api.ImageUpdate` | [ApiImageUpdate ](../../ams-sdk/pkg/amsclientmodels/api_image_update.go) |
| `api.InstanceTypeDescriptionResponse` | [ApiInstanceTypeDescriptionResponse ](../../ams-sdk/pkg/amsclientmodels/api_instance_type_description_response.go) |
| `api.PagingInfo` | [ApiPagingInfo ](../../ams-sdk/pkg/amsclientmodels/api_paging_info.go) |
| `api.PortConfiguration` | [ApiPortConfiguration ](../../ams-sdk/pkg/amsclientmodels/api_port_configuration.go) |
| `api.ReferencingFleet` | [ApiReferencingFleet ](../../ams-sdk/pkg/amsclientmodels/api_referencing_fleet.go) |
| `api.RegionConfig` | [ApiRegionConfig ](../../ams-sdk/pkg/amsclientmodels/api_region_config.go) |
| `api.RegionsResponse` | [ApiRegionsResponse ](../../ams-sdk/pkg/amsclientmodels/api_regions_response.go) |
| `api.Timeout` | [ApiTimeout ](../../ams-sdk/pkg/amsclientmodels/api_timeout.go) |
| `response.ErrorResponse` | [ResponseErrorResponse ](../../ams-sdk/pkg/amsclientmodels/response_error_response.go) |
