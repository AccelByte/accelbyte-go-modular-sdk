#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..42"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'hqWcNeHj3kOUaZyD' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "BCVBBKXgyy1HVwfY", "updatedAt": "UJeAzNqgv2Ei2lKU", "value": {"7ih98IzqdXu49avp": {}, "Z0DmFmFDExuAwaDf": {}, "sp8Td5tbNVNTY2ei": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'rH0e1zTCkHKpydBh' \
    --limit '19' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 't40hV9WiOMd2VHhI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'neL9P7iYgNJplcOf' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'ljv9WafjbQTFpmUc' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'pVRP1e2nKnHpYXq3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["6XsdGVy0TEo1Ef12", "DOHF82OeS7gjiEbs", "Cdz3BG2N5SXYTopA"], "user_id": "o7YcfmL1UKu4BKER"}, {"keys": ["2L0OsvFx1rIQ6ctb", "6y3dJ76ON5OIJQuL", "793QCtpHFt1PoRme"], "user_id": "O4l207NJ4egwJ4eF"}, {"keys": ["8AVWiodMqOP9VeNQ", "UhOl3Sbn4Fg3BrEs", "26L7iUrDWd2P2nT2"], "user_id": "9kL5kJkmurxtlvlV"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key '5x8FLAOOXZeXVFGI' \
    --namespace $AB_NAMESPACE \
    --userId 'pUU41nYeYHTVOcnf' \
    --body '{"set_by": "kvfSEiGxXgEGPeX8", "updatedAt": "5yXIHAt55X2WSVJj", "value": {"EPafTltqKRXxHVT8": {}, "H1o6EyHJvM4nTtAD": {}, "8UVpeNjbm9ZrQpPe": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key '3PkU7wv4GpSr0S07' \
    --namespace $AB_NAMESPACE \
    --userId 'u6Gjox4Esk2Fsm88' \
    --body '{"set_by": "8kw9WE3gzO0Tu1zl", "updatedAt": "mek3PQ0r2SFmFP4P", "value": {"RN5sGz7PkYhAUzBe": {}, "ktZ0vPU4cK8KDbSN": {}, "dXixjaelsRCQDqUQ": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'kzfjxaZrO8KfqbQL' \
    --limit '61' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'iUDjUsJkqy56eaP0' \
    --namespace $AB_NAMESPACE \
    --userId 'yYwAFBVGEd14EZ7Z' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'lf377fqcGOzXsCbz' \
    --namespace $AB_NAMESPACE \
    --userId 'rGUkEKtwccFLr3ie' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'MlKleK33MStiv2Gc' \
    --namespace $AB_NAMESPACE \
    --userId 'xAnqEqBpVaWgCb5o' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'miuHWrfYSId8fcHK' \
    --namespace $AB_NAMESPACE \
    --userId 'rER7SMAlcgvj0lEE' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key '9Xbrbc0Rx35sdsOD' \
    --namespace $AB_NAMESPACE \
    --userId 'vAexp7s4KDorrRpN' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'qZm5vT5gijeB4xCU' \
    --namespace $AB_NAMESPACE \
    --userId 'H9IH4ujkE2NSaxZl' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'fJsqiprwZGBiX2FH' \
    --namespace $AB_NAMESPACE \
    --userId 'o3fzqJA3wNjnfdGr' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'tvSST32cqeF8AX1j' \
    --namespace $AB_NAMESPACE \
    --userId 'cAl7z9WU89kCdI0I' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'h3jrh35VBzbchRr6' \
    --namespace $AB_NAMESPACE \
    --userId 'mgsT4nl1fhR3wLaz' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'jqllmQY7vzscoZmb' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "iZ7mByl2lt5Yur2K", "value": {"JBttMIQyE50VmClJ": {}, "FeknjibKvClUCGuP": {}, "n5pBJsnBiV8mNXKq": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["uBCZumBc3EZHe2Wn", "q6AresNDshzGKAUJ", "45PJVCp73OSaypub"]}' \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'IOLK4WX3sPgVgxus' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'rJHWzQNAuljqM0Th' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'SOGmB0Yrl5Wm7wgT' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'Jb4cgFhhNdzZwKTC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'qNpmS6iZi00fKyNZ' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["LZBsTXsDqOldBf3H", "paPhGDa5bhqpO8lk", "lFbXJIagcPodKnez"]}' \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["5qXvufJjgcFbLxxA", "zBO8GQK6R2Kn6URa", "kk2OH9zUkz5DMA8n"]}' \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'lgYTGxWW7LO6BshP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key '23c4QmLTxUPggAJH' \
    --namespace $AB_NAMESPACE \
    --userId 'f5cTIdSZWtJNyCox' \
    --body '{"updatedAt": "k8yBXBKgDnp2QQuu", "value": {"nuWZd2vsXRLhpkp7": {}, "e9mHNYDgVbN2foVl": {}, "C4UdPZIDHDj76o1g": {}}}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'f7gKDziEFKEHVf2Z' \
    --namespace $AB_NAMESPACE \
    --userId 'DhuzXQTXJvMc9VrN' \
    --body '{"updatedAt": "3BbfTPtTBA2v3qVx", "value": {"w5Fokml7M7PKSQsg": {}, "BZie8SlNhYxVwLIy": {}, "bg0jEfdpxCK19Eqn": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z8CFWsc2nRBlVZXB' \
    --limit '58' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 34 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 35 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Q7Wv3FCmzdxHuNtP' \
    --body '{"keys": ["W397JikWO4Y6zUnC", "5vY06xpdkRh2zarl", "yZPFZfG7NpRJ9MdZ"]}' \
    > test.out 2>&1
eval_tap $? 35 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 36 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'nyskbKmVyRiwUooc' \
    --namespace $AB_NAMESPACE \
    --userId 'i0ocip7Rrp8ksmgZ' \
    > test.out 2>&1
eval_tap $? 36 'GetPlayerRecordHandlerV1' test.out

#- 37 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'Cno4mSvcBFbyym74' \
    --namespace $AB_NAMESPACE \
    --userId '9gQAE9xBqxAXQGLW' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'PutPlayerRecordHandlerV1' test.out

#- 38 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'F7aP8K1ezBBndtaQ' \
    --namespace $AB_NAMESPACE \
    --userId 'ynKzQj5R0KpatMuL' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'PostPlayerRecordHandlerV1' test.out

#- 39 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 's5WFnJo2sI7LHdyB' \
    --namespace $AB_NAMESPACE \
    --userId 'E0pTAXITnhPS9aKO' \
    > test.out 2>&1
eval_tap $? 39 'DeletePlayerRecordHandlerV1' test.out

#- 40 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '4y5WKCjgImEr14yg' \
    --namespace $AB_NAMESPACE \
    --userId '3gekopggEdcu5SP6' \
    > test.out 2>&1
eval_tap $? 40 'GetPlayerPublicRecordHandlerV1' test.out

#- 41 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'B7n9gRBxeCJ26vjr' \
    --namespace $AB_NAMESPACE \
    --userId 'KBGZzekv8qjzQ9XK' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'PutPlayerPublicRecordHandlerV1' test.out

#- 42 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'mTo96DycjXHJHBTO' \
    --namespace $AB_NAMESPACE \
    --userId 'TMRZeau1MebXHhnV' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 42 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE