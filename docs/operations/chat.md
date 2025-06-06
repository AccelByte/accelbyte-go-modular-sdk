[//]: # (Code generated. DO NOT EDIT.)

# Chat Service Index

&nbsp;

## Operations

### topic Wrapper:  [Topic](../../chat-sdk/pkg/wrapper_topic.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/chat/admin/namespaces/{namespace}/chat/filter` | POST | AdminFilterChatMessageShort | [AdminFilterChatMessageShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminFilterChatMessageShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminFilterChatMessageShort](../../samples/cli/cmd/chat/topic/adminFilterChatMessage.go) |
| `/chat/admin/namespaces/{namespace}/chats` | GET | AdminChatHistoryShort | [AdminChatHistoryShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminChatHistoryShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminChatHistoryShort](../../samples/cli/cmd/chat/topic/adminChatHistory.go) |
| `/chat/admin/namespaces/{namespace}/namespace-topic` | POST | AdminCreateNamespaceTopicShort | [AdminCreateNamespaceTopicShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminCreateNamespaceTopicShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminCreateNamespaceTopicShort](../../samples/cli/cmd/chat/topic/adminCreateNamespaceTopic.go) |
| `/chat/admin/namespaces/{namespace}/topic` | GET | AdminTopicListShort | [AdminTopicListShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminTopicListShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminTopicListShort](../../samples/cli/cmd/chat/topic/adminTopicList.go) |
| `/chat/admin/namespaces/{namespace}/topic` | POST | AdminCreateTopicShort | [AdminCreateTopicShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminCreateTopicShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminCreateTopicShort](../../samples/cli/cmd/chat/topic/adminCreateTopic.go) |
| `/chat/admin/namespaces/{namespace}/topic/channel` | GET | AdminChannelTopicListShort | [AdminChannelTopicListShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminChannelTopicListShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminChannelTopicListShort](../../samples/cli/cmd/chat/topic/adminChannelTopicList.go) |
| `/chat/admin/namespaces/{namespace}/topic/channel/summary` | GET | AdminChannelTopicSummaryShort | [AdminChannelTopicSummaryShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminChannelTopicSummaryShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminChannelTopicSummaryShort](../../samples/cli/cmd/chat/topic/adminChannelTopicSummary.go) |
| `/chat/admin/namespaces/{namespace}/topic/log` | GET | AdminQueryTopicLogShort | [AdminQueryTopicLogShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminQueryTopicLogShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminQueryTopicLogShort](../../samples/cli/cmd/chat/topic/adminQueryTopicLog.go) |
| `/chat/admin/namespaces/{namespace}/topic/{topic}` | PUT | AdminUpdateTopicShort | [AdminUpdateTopicShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminUpdateTopicShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminUpdateTopicShort](../../samples/cli/cmd/chat/topic/adminUpdateTopic.go) |
| `/chat/admin/namespaces/{namespace}/topic/{topic}` | DELETE | AdminDeleteTopicShort | [AdminDeleteTopicShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminDeleteTopicShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminDeleteTopicShort](../../samples/cli/cmd/chat/topic/adminDeleteTopic.go) |
| `/chat/admin/namespaces/{namespace}/topic/{topic}/ban-members` | POST | AdminBanTopicMembersShort | [AdminBanTopicMembersShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminBanTopicMembersShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminBanTopicMembersShort](../../samples/cli/cmd/chat/topic/adminBanTopicMembers.go) |
| `/chat/admin/namespaces/{namespace}/topic/{topic}/channel` | GET | AdminChannelTopicInfoShort | [AdminChannelTopicInfoShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminChannelTopicInfoShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminChannelTopicInfoShort](../../samples/cli/cmd/chat/topic/adminChannelTopicInfo.go) |
| [DEPRECATED] `/chat/admin/namespaces/{namespace}/topic/{topic}/chats` | GET | AdminTopicChatHistoryShort | [AdminTopicChatHistoryShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminTopicChatHistoryShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminTopicChatHistoryShort](../../samples/cli/cmd/chat/topic/adminTopicChatHistory.go) |
| `/chat/admin/namespaces/{namespace}/topic/{topic}/chats` | POST | AdminSendChatShort | [AdminSendChatShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminSendChatShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminSendChatShort](../../samples/cli/cmd/chat/topic/adminSendChat.go) |
| `/chat/admin/namespaces/{namespace}/topic/{topic}/chats/{chatId}` | DELETE | AdminDeleteChatShort | [AdminDeleteChatShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminDeleteChatShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminDeleteChatShort](../../samples/cli/cmd/chat/topic/adminDeleteChat.go) |
| `/chat/admin/namespaces/{namespace}/topic/{topic}/members` | GET | AdminTopicMembersShort | [AdminTopicMembersShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminTopicMembersShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminTopicMembersShort](../../samples/cli/cmd/chat/topic/adminTopicMembers.go) |
| `/chat/admin/namespaces/{namespace}/topic/{topic}/shards` | GET | AdminTopicShardsShort | [AdminTopicShardsShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminTopicShardsShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminTopicShardsShort](../../samples/cli/cmd/chat/topic/adminTopicShards.go) |
| `/chat/admin/namespaces/{namespace}/topic/{topic}/unban-members` | POST | AdminUnbanTopicMembersShort | [AdminUnbanTopicMembersShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminUnbanTopicMembersShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminUnbanTopicMembersShort](../../samples/cli/cmd/chat/topic/adminUnbanTopicMembers.go) |
| `/chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}` | POST | AdminAddTopicMemberShort | [AdminAddTopicMemberShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminAddTopicMemberShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminAddTopicMemberShort](../../samples/cli/cmd/chat/topic/adminAddTopicMember.go) |
| `/chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}` | DELETE | AdminRemoveTopicMemberShort | [AdminRemoveTopicMemberShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminRemoveTopicMemberShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminRemoveTopicMemberShort](../../samples/cli/cmd/chat/topic/adminRemoveTopicMember.go) |
| `/chat/admin/namespaces/{namespace}/topics` | GET | AdminQueryTopicShort | [AdminQueryTopicShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminQueryTopicShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminQueryTopicShort](../../samples/cli/cmd/chat/topic/adminQueryTopic.go) |
| `/chat/admin/namespaces/{namespace}/users/{userId}/topics` | GET | AdminQueryUsersTopicShort | [AdminQueryUsersTopicShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [AdminQueryUsersTopicShort](../../chat-sdk/pkg/wrapper_topic.go) | [AdminQueryUsersTopicShort](../../samples/cli/cmd/chat/topic/adminQueryUsersTopic.go) |
| `/chat/public/namespaces/{namespace}/muted` | GET | PublicGetMutedTopicsShort | [PublicGetMutedTopicsShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [PublicGetMutedTopicsShort](../../chat-sdk/pkg/wrapper_topic.go) | [PublicGetMutedTopicsShort](../../samples/cli/cmd/chat/topic/publicGetMutedTopics.go) |
| `/chat/public/namespaces/{namespace}/topic` | GET | PublicTopicListShort | [PublicTopicListShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [PublicTopicListShort](../../chat-sdk/pkg/wrapper_topic.go) | [PublicTopicListShort](../../samples/cli/cmd/chat/topic/publicTopicList.go) |
| `/chat/public/namespaces/{namespace}/topic/{topic}/ban-members` | POST | PublicBanTopicMembersShort | [PublicBanTopicMembersShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [PublicBanTopicMembersShort](../../chat-sdk/pkg/wrapper_topic.go) | [PublicBanTopicMembersShort](../../samples/cli/cmd/chat/topic/publicBanTopicMembers.go) |
| `/chat/public/namespaces/{namespace}/topic/{topic}/chats` | GET | PublicChatHistoryShort | [PublicChatHistoryShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [PublicChatHistoryShort](../../chat-sdk/pkg/wrapper_topic.go) | [PublicChatHistoryShort](../../samples/cli/cmd/chat/topic/publicChatHistory.go) |
| `/chat/public/namespaces/{namespace}/topic/{topic}/chats/{chatId}` | DELETE | PublicDeleteChatShort | [PublicDeleteChatShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [PublicDeleteChatShort](../../chat-sdk/pkg/wrapper_topic.go) | [PublicDeleteChatShort](../../samples/cli/cmd/chat/topic/publicDeleteChat.go) |
| `/chat/public/namespaces/{namespace}/topic/{topic}/mute` | PUT | PublicMuteUserShort | [PublicMuteUserShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [PublicMuteUserShort](../../chat-sdk/pkg/wrapper_topic.go) | [PublicMuteUserShort](../../samples/cli/cmd/chat/topic/publicMuteUser.go) |
| `/chat/public/namespaces/{namespace}/topic/{topic}/unban-members` | POST | PublicUnbanTopicMembersShort | [PublicUnbanTopicMembersShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [PublicUnbanTopicMembersShort](../../chat-sdk/pkg/wrapper_topic.go) | [PublicUnbanTopicMembersShort](../../samples/cli/cmd/chat/topic/publicUnbanTopicMembers.go) |
| `/chat/public/namespaces/{namespace}/topic/{topic}/unmute` | PUT | PublicUnmuteUserShort | [PublicUnmuteUserShort](../../chat-sdk/pkg/chatclient/topic/topic_client.go) | [PublicUnmuteUserShort](../../chat-sdk/pkg/wrapper_topic.go) | [PublicUnmuteUserShort](../../samples/cli/cmd/chat/topic/publicUnmuteUser.go) |

### config Wrapper:  [Config](../../chat-sdk/pkg/wrapper_config.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/chat/v1/admin/config` | GET | AdminGetAllConfigV1Short | [AdminGetAllConfigV1Short](../../chat-sdk/pkg/chatclient/config/config_client.go) | [AdminGetAllConfigV1Short](../../chat-sdk/pkg/wrapper_config.go) | [AdminGetAllConfigV1Short](../../samples/cli/cmd/chat/config/adminGetAllConfigV1.go) |
| `/chat/v1/admin/config/log` | GET | AdminGetLogConfigShort | [AdminGetLogConfigShort](../../chat-sdk/pkg/chatclient/config/config_client.go) | [AdminGetLogConfigShort](../../chat-sdk/pkg/wrapper_config.go) | [AdminGetLogConfigShort](../../samples/cli/cmd/chat/config/adminGetLogConfig.go) |
| `/chat/v1/admin/config/log` | PATCH | AdminPatchUpdateLogConfigShort | [AdminPatchUpdateLogConfigShort](../../chat-sdk/pkg/chatclient/config/config_client.go) | [AdminPatchUpdateLogConfigShort](../../chat-sdk/pkg/wrapper_config.go) | [AdminPatchUpdateLogConfigShort](../../samples/cli/cmd/chat/config/adminPatchUpdateLogConfig.go) |
| `/chat/v1/admin/config/namespaces/{namespace}` | GET | AdminGetConfigV1Short | [AdminGetConfigV1Short](../../chat-sdk/pkg/chatclient/config/config_client.go) | [AdminGetConfigV1Short](../../chat-sdk/pkg/wrapper_config.go) | [AdminGetConfigV1Short](../../samples/cli/cmd/chat/config/adminGetConfigV1.go) |
| `/chat/v1/admin/config/namespaces/{namespace}` | PUT | AdminUpdateConfigV1Short | [AdminUpdateConfigV1Short](../../chat-sdk/pkg/chatclient/config/config_client.go) | [AdminUpdateConfigV1Short](../../chat-sdk/pkg/wrapper_config.go) | [AdminUpdateConfigV1Short](../../samples/cli/cmd/chat/config/adminUpdateConfigV1.go) |
| `/chat/v1/admin/config/namespaces/{namespace}/export` | GET | ExportConfigShort | [ExportConfigShort](../../chat-sdk/pkg/chatclient/config/config_client.go) | [ExportConfigShort](../../chat-sdk/pkg/wrapper_config.go) | [ExportConfigShort](../../samples/cli/cmd/chat/config/exportConfig.go) |
| `/chat/v1/admin/config/namespaces/{namespace}/import` | POST | ImportConfigShort | [ImportConfigShort](../../chat-sdk/pkg/chatclient/config/config_client.go) | [ImportConfigShort](../../chat-sdk/pkg/wrapper_config.go) | [ImportConfigShort](../../samples/cli/cmd/chat/config/importConfig.go) |
| `/chat/v1/public/config/namespaces/{namespace}` | GET | PublicGetConfigV1Short | [PublicGetConfigV1Short](../../chat-sdk/pkg/chatclient/config/config_client.go) | [PublicGetConfigV1Short](../../chat-sdk/pkg/wrapper_config.go) | [PublicGetConfigV1Short](../../samples/cli/cmd/chat/config/publicGetConfigV1.go) |

### inbox Wrapper:  [Inbox](../../chat-sdk/pkg/wrapper_inbox.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/chat/v1/admin/inbox/namespaces/{namespace}/categories` | GET | AdminGetInboxCategoriesShort | [AdminGetInboxCategoriesShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminGetInboxCategoriesShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminGetInboxCategoriesShort](../../samples/cli/cmd/chat/inbox/adminGetInboxCategories.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/categories` | POST | AdminAddInboxCategoryShort | [AdminAddInboxCategoryShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminAddInboxCategoryShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminAddInboxCategoryShort](../../samples/cli/cmd/chat/inbox/adminAddInboxCategory.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}` | DELETE | AdminDeleteInboxCategoryShort | [AdminDeleteInboxCategoryShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminDeleteInboxCategoryShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminDeleteInboxCategoryShort](../../samples/cli/cmd/chat/inbox/adminDeleteInboxCategory.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}` | PATCH | AdminUpdateInboxCategoryShort | [AdminUpdateInboxCategoryShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminUpdateInboxCategoryShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminUpdateInboxCategoryShort](../../samples/cli/cmd/chat/inbox/adminUpdateInboxCategory.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json` | GET | AdminGetCategorySchemaShort | [AdminGetCategorySchemaShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminGetCategorySchemaShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminGetCategorySchemaShort](../../samples/cli/cmd/chat/inbox/adminGetCategorySchema.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/list/topic/kafka` | GET | AdminListKafkaTopicShort | [AdminListKafkaTopicShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminListKafkaTopicShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminListKafkaTopicShort](../../samples/cli/cmd/chat/inbox/adminListKafkaTopic.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/message/{messageId}` | DELETE | AdminDeleteInboxMessageShort | [AdminDeleteInboxMessageShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminDeleteInboxMessageShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminDeleteInboxMessageShort](../../samples/cli/cmd/chat/inbox/adminDeleteInboxMessage.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/messages` | GET | AdminGetInboxMessagesShort | [AdminGetInboxMessagesShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminGetInboxMessagesShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminGetInboxMessagesShort](../../samples/cli/cmd/chat/inbox/adminGetInboxMessages.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/messages` | POST | AdminSaveInboxMessageShort | [AdminSaveInboxMessageShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminSaveInboxMessageShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminSaveInboxMessageShort](../../samples/cli/cmd/chat/inbox/adminSaveInboxMessage.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/unsend` | POST | AdminUnsendInboxMessageShort | [AdminUnsendInboxMessageShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminUnsendInboxMessageShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminUnsendInboxMessageShort](../../samples/cli/cmd/chat/inbox/adminUnsendInboxMessage.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/users` | GET | AdminGetInboxUsersShort | [AdminGetInboxUsersShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminGetInboxUsersShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminGetInboxUsersShort](../../samples/cli/cmd/chat/inbox/adminGetInboxUsers.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}` | PATCH | AdminUpdateInboxMessageShort | [AdminUpdateInboxMessageShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminUpdateInboxMessageShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminUpdateInboxMessageShort](../../samples/cli/cmd/chat/inbox/adminUpdateInboxMessage.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}/send` | POST | AdminSendInboxMessageShort | [AdminSendInboxMessageShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminSendInboxMessageShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminSendInboxMessageShort](../../samples/cli/cmd/chat/inbox/adminSendInboxMessage.go) |
| `/chat/v1/admin/inbox/namespaces/{namespace}/stats` | GET | AdminGetInboxStatsShort | [AdminGetInboxStatsShort](../../chat-sdk/pkg/chatclient/inbox/inbox_client.go) | [AdminGetInboxStatsShort](../../chat-sdk/pkg/wrapper_inbox.go) | [AdminGetInboxStatsShort](../../samples/cli/cmd/chat/inbox/adminGetInboxStats.go) |

### moderation Wrapper:  [Moderation](../../chat-sdk/pkg/wrapper_moderation.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}` | GET | AdminGetChatSnapshotShort | [AdminGetChatSnapshotShort](../../chat-sdk/pkg/chatclient/moderation/moderation_client.go) | [AdminGetChatSnapshotShort](../../chat-sdk/pkg/wrapper_moderation.go) | [AdminGetChatSnapshotShort](../../samples/cli/cmd/chat/moderation/adminGetChatSnapshot.go) |
| `/chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}` | DELETE | AdminDeleteChatSnapshotShort | [AdminDeleteChatSnapshotShort](../../chat-sdk/pkg/chatclient/moderation/moderation_client.go) | [AdminDeleteChatSnapshotShort](../../chat-sdk/pkg/wrapper_moderation.go) | [AdminDeleteChatSnapshotShort](../../samples/cli/cmd/chat/moderation/adminDeleteChatSnapshot.go) |
| `/chat/v1/public/namespaces/{namespace}/topic/{topic}/snapshot/{chatId}` | GET | PublicGetChatSnapshotShort | [PublicGetChatSnapshotShort](../../chat-sdk/pkg/chatclient/moderation/moderation_client.go) | [PublicGetChatSnapshotShort](../../chat-sdk/pkg/wrapper_moderation.go) | [PublicGetChatSnapshotShort](../../samples/cli/cmd/chat/moderation/publicGetChatSnapshot.go) |

### profanity Wrapper:  [Profanity](../../chat-sdk/pkg/wrapper_profanity.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/chat/v1/admin/profanity/namespaces/{namespace}/dictionary` | GET | AdminProfanityQueryShort | [AdminProfanityQueryShort](../../chat-sdk/pkg/chatclient/profanity/profanity_client.go) | [AdminProfanityQueryShort](../../chat-sdk/pkg/wrapper_profanity.go) | [AdminProfanityQueryShort](../../samples/cli/cmd/chat/profanity/adminProfanityQuery.go) |
| `/chat/v1/admin/profanity/namespaces/{namespace}/dictionary` | POST | AdminProfanityCreateShort | [AdminProfanityCreateShort](../../chat-sdk/pkg/chatclient/profanity/profanity_client.go) | [AdminProfanityCreateShort](../../chat-sdk/pkg/wrapper_profanity.go) | [AdminProfanityCreateShort](../../samples/cli/cmd/chat/profanity/adminProfanityCreate.go) |
| `/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/bulk` | POST | AdminProfanityCreateBulkShort | [AdminProfanityCreateBulkShort](../../chat-sdk/pkg/chatclient/profanity/profanity_client.go) | [AdminProfanityCreateBulkShort](../../chat-sdk/pkg/wrapper_profanity.go) | [AdminProfanityCreateBulkShort](../../samples/cli/cmd/chat/profanity/adminProfanityCreateBulk.go) |
| `/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/export` | GET | AdminProfanityExportShort | [AdminProfanityExportShort](../../chat-sdk/pkg/chatclient/profanity/profanity_client.go) | [AdminProfanityExportShort](../../chat-sdk/pkg/wrapper_profanity.go) | [AdminProfanityExportShort](../../samples/cli/cmd/chat/profanity/adminProfanityExport.go) |
| `/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/group` | GET | AdminProfanityGroupShort | [AdminProfanityGroupShort](../../chat-sdk/pkg/chatclient/profanity/profanity_client.go) | [AdminProfanityGroupShort](../../chat-sdk/pkg/wrapper_profanity.go) | [AdminProfanityGroupShort](../../samples/cli/cmd/chat/profanity/adminProfanityGroup.go) |
| `/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import` | POST | AdminProfanityImportShort | [AdminProfanityImportShort](../../chat-sdk/pkg/chatclient/profanity/profanity_client.go) | [AdminProfanityImportShort](../../chat-sdk/pkg/wrapper_profanity.go) | [AdminProfanityImportShort](../../samples/cli/cmd/chat/profanity/adminProfanityImport.go) |
| `/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}` | PUT | AdminProfanityUpdateShort | [AdminProfanityUpdateShort](../../chat-sdk/pkg/chatclient/profanity/profanity_client.go) | [AdminProfanityUpdateShort](../../chat-sdk/pkg/wrapper_profanity.go) | [AdminProfanityUpdateShort](../../samples/cli/cmd/chat/profanity/adminProfanityUpdate.go) |
| `/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}` | DELETE | AdminProfanityDeleteShort | [AdminProfanityDeleteShort](../../chat-sdk/pkg/chatclient/profanity/profanity_client.go) | [AdminProfanityDeleteShort](../../chat-sdk/pkg/wrapper_profanity.go) | [AdminProfanityDeleteShort](../../samples/cli/cmd/chat/profanity/adminProfanityDelete.go) |

### Operations Wrapper:  [Operations](../../chat-sdk/pkg/wrapper_operations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/chat/v1/messages` | GET | PublicGetMessagesShort | [PublicGetMessagesShort](../../chat-sdk/pkg/chatclient/operations/operations_client.go) | [PublicGetMessagesShort](../../chat-sdk/pkg/wrapper_operations.go) | [PublicGetMessagesShort](../../samples/cli/cmd/chat/operations/publicGetMessages.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `api.AddMemberParams` | [ApiAddMemberParams ](../../chat-sdk/pkg/chatclientmodels/api_add_member_params.go) |
| `api.CreateNamespaceTopicParams` | [ApiCreateNamespaceTopicParams ](../../chat-sdk/pkg/chatclientmodels/api_create_namespace_topic_params.go) |
| `api.CreateTopicParams` | [ApiCreateTopicParams ](../../chat-sdk/pkg/chatclientmodels/api_create_topic_params.go) |
| `api.CreateTopicResponse` | [ApiCreateTopicResponse ](../../chat-sdk/pkg/chatclientmodels/api_create_topic_response.go) |
| `api.MuteUserRequest` | [ApiMuteUserRequest ](../../chat-sdk/pkg/chatclientmodels/api_mute_user_request.go) |
| `api.MutedTopicResponse` | [ApiMutedTopicResponse ](../../chat-sdk/pkg/chatclientmodels/api_muted_topic_response.go) |
| `api.SendChatParams` | [ApiSendChatParams ](../../chat-sdk/pkg/chatclientmodels/api_send_chat_params.go) |
| `api.UnmuteUserRequest` | [ApiUnmuteUserRequest ](../../chat-sdk/pkg/chatclientmodels/api_unmute_user_request.go) |
| `api.UpdateTopicParams` | [ApiUpdateTopicParams ](../../chat-sdk/pkg/chatclientmodels/api_update_topic_params.go) |
| `log.AppMessageDeclaration` | [LogAppMessageDeclaration ](../../chat-sdk/pkg/chatclientmodels/log_app_message_declaration.go) |
| `logconfig.Configuration` | [LogconfigConfiguration ](../../chat-sdk/pkg/chatclientmodels/logconfig_configuration.go) |
| `message.ActionAddUserToTopicResult` | [MessageActionAddUserToTopicResult ](../../chat-sdk/pkg/chatclientmodels/message_action_add_user_to_topic_result.go) |
| `message.ActionDeleteTopicResult` | [MessageActionDeleteTopicResult ](../../chat-sdk/pkg/chatclientmodels/message_action_delete_topic_result.go) |
| `models.AddInboxCategoryRequest` | [ModelsAddInboxCategoryRequest ](../../chat-sdk/pkg/chatclientmodels/models_add_inbox_category_request.go) |
| `models.AddInboxCategoryResponse` | [ModelsAddInboxCategoryResponse ](../../chat-sdk/pkg/chatclientmodels/models_add_inbox_category_response.go) |
| `models.BanTopicMemberParam` | [ModelsBanTopicMemberParam ](../../chat-sdk/pkg/chatclientmodels/models_ban_topic_member_param.go) |
| `models.BanTopicMemberResult` | [ModelsBanTopicMemberResult ](../../chat-sdk/pkg/chatclientmodels/models_ban_topic_member_result.go) |
| `models.CategoryHook` | [ModelsCategoryHook ](../../chat-sdk/pkg/chatclientmodels/models_category_hook.go) |
| `models.ChannelTopicResponse` | [ModelsChannelTopicResponse ](../../chat-sdk/pkg/chatclientmodels/models_channel_topic_response.go) |
| `models.ChannelTopicSummaryResponse` | [ModelsChannelTopicSummaryResponse ](../../chat-sdk/pkg/chatclientmodels/models_channel_topic_summary_response.go) |
| `models.ChannelTopicWithPaginationResponse` | [ModelsChannelTopicWithPaginationResponse ](../../chat-sdk/pkg/chatclientmodels/models_channel_topic_with_pagination_response.go) |
| `models.ChatMessageResponse` | [ModelsChatMessageResponse ](../../chat-sdk/pkg/chatclientmodels/models_chat_message_response.go) |
| `models.ChatMessageWithPaginationResponse` | [ModelsChatMessageWithPaginationResponse ](../../chat-sdk/pkg/chatclientmodels/models_chat_message_with_pagination_response.go) |
| `models.ChatSnapshotMessage` | [ModelsChatSnapshotMessage ](../../chat-sdk/pkg/chatclientmodels/models_chat_snapshot_message.go) |
| `models.ChatSnapshots` | [ModelsChatSnapshots ](../../chat-sdk/pkg/chatclientmodels/models_chat_snapshots.go) |
| `models.Config` | [ModelsConfig ](../../chat-sdk/pkg/chatclientmodels/models_config.go) |
| `models.ConfigExport` | [ModelsConfigExport ](../../chat-sdk/pkg/chatclientmodels/models_config_export.go) |
| `models.ConfigList` | [ModelsConfigList ](../../chat-sdk/pkg/chatclientmodels/models_config_list.go) |
| `models.ConfigResponse` | [ModelsConfigResponse ](../../chat-sdk/pkg/chatclientmodels/models_config_response.go) |
| `models.Dictionary` | [ModelsDictionary ](../../chat-sdk/pkg/chatclientmodels/models_dictionary.go) |
| `models.DictionaryChild` | [ModelsDictionaryChild ](../../chat-sdk/pkg/chatclientmodels/models_dictionary_child.go) |
| `models.DictionaryExport` | [ModelsDictionaryExport ](../../chat-sdk/pkg/chatclientmodels/models_dictionary_export.go) |
| `models.DictionaryExportItem` | [ModelsDictionaryExportItem ](../../chat-sdk/pkg/chatclientmodels/models_dictionary_export_item.go) |
| `models.DictionaryGroup` | [ModelsDictionaryGroup ](../../chat-sdk/pkg/chatclientmodels/models_dictionary_group.go) |
| `models.DictionaryImportResult` | [ModelsDictionaryImportResult ](../../chat-sdk/pkg/chatclientmodels/models_dictionary_import_result.go) |
| `models.DictionaryInsertBulkRequest` | [ModelsDictionaryInsertBulkRequest ](../../chat-sdk/pkg/chatclientmodels/models_dictionary_insert_bulk_request.go) |
| `models.DictionaryInsertRequest` | [ModelsDictionaryInsertRequest ](../../chat-sdk/pkg/chatclientmodels/models_dictionary_insert_request.go) |
| `models.DictionaryQueryResult` | [ModelsDictionaryQueryResult ](../../chat-sdk/pkg/chatclientmodels/models_dictionary_query_result.go) |
| `models.DictionaryUpdateRequest` | [ModelsDictionaryUpdateRequest ](../../chat-sdk/pkg/chatclientmodels/models_dictionary_update_request.go) |
| `models.DictionaryWithChildren` | [ModelsDictionaryWithChildren ](../../chat-sdk/pkg/chatclientmodels/models_dictionary_with_children.go) |
| `models.DictionaryWordChanges` | [ModelsDictionaryWordChanges ](../../chat-sdk/pkg/chatclientmodels/models_dictionary_word_changes.go) |
| `models.GetInboxCategoriesResponseItem` | [ModelsGetInboxCategoriesResponseItem ](../../chat-sdk/pkg/chatclientmodels/models_get_inbox_categories_response_item.go) |
| `models.GetInboxMessagesResponse` | [ModelsGetInboxMessagesResponse ](../../chat-sdk/pkg/chatclientmodels/models_get_inbox_messages_response.go) |
| `models.GetInboxMessagesResponseData` | [ModelsGetInboxMessagesResponseData ](../../chat-sdk/pkg/chatclientmodels/models_get_inbox_messages_response_data.go) |
| `models.GetInboxStatsResponse` | [ModelsGetInboxStatsResponse ](../../chat-sdk/pkg/chatclientmodels/models_get_inbox_stats_response.go) |
| `models.GetInboxUsersResponse` | [ModelsGetInboxUsersResponse ](../../chat-sdk/pkg/chatclientmodels/models_get_inbox_users_response.go) |
| `models.GetListTopicKafkaResponse` | [ModelsGetListTopicKafkaResponse ](../../chat-sdk/pkg/chatclientmodels/models_get_list_topic_kafka_response.go) |
| `models.ImportConfigResponse` | [ModelsImportConfigResponse ](../../chat-sdk/pkg/chatclientmodels/models_import_config_response.go) |
| `models.JSONSchemaType` | [ModelsJSONSchemaType ](../../chat-sdk/pkg/chatclientmodels/models_json_schema_type.go) |
| `models.MessageRequest` | [ModelsMessageRequest ](../../chat-sdk/pkg/chatclientmodels/models_message_request.go) |
| `models.MessageResultWithAttributes` | [ModelsMessageResultWithAttributes ](../../chat-sdk/pkg/chatclientmodels/models_message_result_with_attributes.go) |
| `models.MessageStats` | [ModelsMessageStats ](../../chat-sdk/pkg/chatclientmodels/models_message_stats.go) |
| `models.Pagination` | [ModelsPagination ](../../chat-sdk/pkg/chatclientmodels/models_pagination.go) |
| `models.PublicBanTopicMembersRequest` | [ModelsPublicBanTopicMembersRequest ](../../chat-sdk/pkg/chatclientmodels/models_public_ban_topic_members_request.go) |
| `models.PublicBanTopicMembersResponse` | [ModelsPublicBanTopicMembersResponse ](../../chat-sdk/pkg/chatclientmodels/models_public_ban_topic_members_response.go) |
| `models.PublicConfigResponse` | [ModelsPublicConfigResponse ](../../chat-sdk/pkg/chatclientmodels/models_public_config_response.go) |
| `models.PublicUnbanTopicMembersRequest` | [ModelsPublicUnbanTopicMembersRequest ](../../chat-sdk/pkg/chatclientmodels/models_public_unban_topic_members_request.go) |
| `models.PublicUnbanTopicMembersResponse` | [ModelsPublicUnbanTopicMembersResponse ](../../chat-sdk/pkg/chatclientmodels/models_public_unban_topic_members_response.go) |
| `models.SaveInboxMessageRequest` | [ModelsSaveInboxMessageRequest ](../../chat-sdk/pkg/chatclientmodels/models_save_inbox_message_request.go) |
| `models.SaveInboxMessageResponse` | [ModelsSaveInboxMessageResponse ](../../chat-sdk/pkg/chatclientmodels/models_save_inbox_message_response.go) |
| `models.SendInboxMessageRequest` | [ModelsSendInboxMessageRequest ](../../chat-sdk/pkg/chatclientmodels/models_send_inbox_message_request.go) |
| `models.SendInboxMessageResponse` | [ModelsSendInboxMessageResponse ](../../chat-sdk/pkg/chatclientmodels/models_send_inbox_message_response.go) |
| `models.TopicInfo` | [ModelsTopicInfo ](../../chat-sdk/pkg/chatclientmodels/models_topic_info.go) |
| `models.TopicLogItem` | [ModelsTopicLogItem ](../../chat-sdk/pkg/chatclientmodels/models_topic_log_item.go) |
| `models.TopicLogWithPaginationResponse` | [ModelsTopicLogWithPaginationResponse ](../../chat-sdk/pkg/chatclientmodels/models_topic_log_with_pagination_response.go) |
| `models.TopicMemberResponse` | [ModelsTopicMemberResponse ](../../chat-sdk/pkg/chatclientmodels/models_topic_member_response.go) |
| `models.TopicMemberWithPaginationResponse` | [ModelsTopicMemberWithPaginationResponse ](../../chat-sdk/pkg/chatclientmodels/models_topic_member_with_pagination_response.go) |
| `models.TopicResponse` | [ModelsTopicResponse ](../../chat-sdk/pkg/chatclientmodels/models_topic_response.go) |
| `models.UnbanTopicMemberParam` | [ModelsUnbanTopicMemberParam ](../../chat-sdk/pkg/chatclientmodels/models_unban_topic_member_param.go) |
| `models.UnbanTopicMemberResult` | [ModelsUnbanTopicMemberResult ](../../chat-sdk/pkg/chatclientmodels/models_unban_topic_member_result.go) |
| `models.UnsendInboxMessageRequest` | [ModelsUnsendInboxMessageRequest ](../../chat-sdk/pkg/chatclientmodels/models_unsend_inbox_message_request.go) |
| `models.UnsendInboxMessageResponse` | [ModelsUnsendInboxMessageResponse ](../../chat-sdk/pkg/chatclientmodels/models_unsend_inbox_message_response.go) |
| `models.UpdateInboxCategoryRequest` | [ModelsUpdateInboxCategoryRequest ](../../chat-sdk/pkg/chatclientmodels/models_update_inbox_category_request.go) |
| `models.UpdateInboxMessageRequest` | [ModelsUpdateInboxMessageRequest ](../../chat-sdk/pkg/chatclientmodels/models_update_inbox_message_request.go) |
| `models.UserInbox` | [ModelsUserInbox ](../../chat-sdk/pkg/chatclientmodels/models_user_inbox.go) |
| `response.Error` | [ResponseError ](../../chat-sdk/pkg/chatclientmodels/response_error.go) |
| `restapi.ErrorResponseBody` | [RestapiErrorResponseBody ](../../chat-sdk/pkg/chatclientmodels/restapi_error_response_body.go) |
| `topic.InfoMember` | [TopicInfoMember ](../../chat-sdk/pkg/chatclientmodels/topic_info_member.go) |
