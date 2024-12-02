// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ugcclientmodels

import "fmt"

var (
	Error20001  = ApiError{Code: "20001", Message: "unauthorized access"}
	Error20013  = ApiError{Code: "20013", Message: "insufficient permission"}
	Error770100 = ApiError{Code: "770100", Message: "Malformed request/Invalid request body/channel do not exist"}
	Error770102 = ApiError{Code: "770102", Message: "Unable to check user ban status/Unable to save ugc content: unable to get channel"}
	Error770103 = ApiError{Code: "770103", Message: "Unable to save ugc content: shareCode exceed the limit"}
	Error770104 = ApiError{Code: "770104", Message: "User has been banned to create content"}
	Error770105 = ApiError{Code: "770105", Message: "Unable to save ugc content: failed generate upload URL"}
	Error770106 = ApiError{Code: "770106", Message: "channel doesn't exist"}
	Error770107 = ApiError{Code: "770107", Message: "Unable to update ugc content: invalid shareCode format"}
	Error770200 = ApiError{Code: "770200", Message: "Content not found"}
	Error770300 = ApiError{Code: "770300", Message: "ugc content not found"}
	Error770301 = ApiError{Code: "770301", Message: "Unable to get ugc content/Unable to get creator"}
	Error770303 = ApiError{Code: "770303", Message: "Failed generate download URL"}
	Error770500 = ApiError{Code: "770500", Message: "Invalid request body"}
	Error770502 = ApiError{Code: "770502", Message: "Unable to save channel"}
	Error770503 = ApiError{Code: "770503", Message: "Invalid channel {ID}: should uuid without hypen"}
	Error770504 = ApiError{Code: "770504", Message: "Channel already exist"}
	Error770600 = ApiError{Code: "770600", Message: "Invalid request body"}
	Error770602 = ApiError{Code: "770602", Message: "Unable to save channel"}
	Error770603 = ApiError{Code: "770603", Message: "Channel was not found"}
	Error770700 = ApiError{Code: "770700", Message: "Unable get user channels"}
	Error770702 = ApiError{Code: "770702", Message: "invalid paging parameter"}
	Error770800 = ApiError{Code: "770800", Message: "invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter"}
	Error770801 = ApiError{Code: "770801", Message: "Unable to get ugc content: database/Unable to get creator"}
	Error770803 = ApiError{Code: "770803", Message: "Failed generate download URL"}
	Error770804 = ApiError{Code: "770804", Message: "invalid paging parameter"}
	Error770805 = ApiError{Code: "770805", Message: "Unable to get ugc content: database error"}
	Error770900 = ApiError{Code: "770900", Message: "invalid paging parameter"}
	Error770901 = ApiError{Code: "770901", Message: "Unable to get ugc content: database error/Unable to get creator"}
	Error770903 = ApiError{Code: "770903", Message: "Failed generate download URL"}
	Error771000 = ApiError{Code: "771000", Message: "Malformed request/Content not found/Unable to update like status: content not found"}
	Error771001 = ApiError{Code: "771001", Message: "unable to like content/Unable to update like status: database error"}
	Error771003 = ApiError{Code: "771003", Message: "Unable to like content: too many request"}
	Error771004 = ApiError{Code: "771004", Message: "invalid paging parameter"}
	Error771006 = ApiError{Code: "771006", Message: "unable to get list of content like: database error"}
	Error771100 = ApiError{Code: "771100", Message: "unable to parse isofficial param"}
	Error771101 = ApiError{Code: "771101", Message: "Unable to get ugc content: database error"}
	Error771103 = ApiError{Code: "771103", Message: "Unable to get total liked content"}
	Error771200 = ApiError{Code: "771200", Message: "Malformed request"}
	Error771201 = ApiError{Code: "771201", Message: "Unable to update follow status: database error"}
	Error771300 = ApiError{Code: "771300", Message: "Unable to get creators: database error"}
	Error771303 = ApiError{Code: "771303", Message: "Unable to get creators: database error"}
	Error771304 = ApiError{Code: "771304", Message: "invalid paging parameter"}
	Error771310 = ApiError{Code: "771310", Message: "Unable to get ugc content: database error"}
	Error771311 = ApiError{Code: "771311", Message: "invalid paging parameter"}
	Error771401 = ApiError{Code: "771401", Message: "Malformed request/Invalid request body"}
	Error771402 = ApiError{Code: "771402", Message: "Unable to save ugc tag"}
	Error771403 = ApiError{Code: "771403", Message: "Conflicted resource indentifier"}
	Error771501 = ApiError{Code: "771501", Message: "invalid paging parameter"}
	Error771502 = ApiError{Code: "771502", Message: "Unable get user tags"}
	Error771601 = ApiError{Code: "771601", Message: "Creator not found"}
	Error771701 = ApiError{Code: "771701", Message: "Malformed request/Invalid request body"}
	Error771702 = ApiError{Code: "771702", Message: "Unable to save ugc type"}
	Error771703 = ApiError{Code: "771703", Message: "Conflicted resource indentifier"}
	Error771801 = ApiError{Code: "771801", Message: "invalid paging parameter"}
	Error771802 = ApiError{Code: "771802", Message: "Unable get types"}
	Error771901 = ApiError{Code: "771901", Message: "Malformed request/Invalid request body"}
	Error771902 = ApiError{Code: "771902", Message: "Unable update types"}
	Error771903 = ApiError{Code: "771903", Message: "Type not found"}
	Error771904 = ApiError{Code: "771904", Message: "Proposed Type already exist"}
	Error772002 = ApiError{Code: "772002", Message: "Unable delete tag"}
	Error772003 = ApiError{Code: "772003", Message: "Tag not found"}
	Error772004 = ApiError{Code: "772004", Message: "Unable delete type"}
	Error772005 = ApiError{Code: "772005", Message: "Type not found"}
	Error772101 = ApiError{Code: "772101", Message: "Malformed request/Invalid request body"}
	Error772102 = ApiError{Code: "772102", Message: "Unable to create group"}
	Error772201 = ApiError{Code: "772201", Message: "Malformed request/Invalid request body"}
	Error772202 = ApiError{Code: "772202", Message: "Unable to update group"}
	Error772203 = ApiError{Code: "772203", Message: "Group not found"}
	Error772301 = ApiError{Code: "772301", Message: "invalid paging parameter"}
	Error772302 = ApiError{Code: "772302", Message: "Unable get groups"}
	Error772402 = ApiError{Code: "772402", Message: "Unable delete groups"}
	Error772403 = ApiError{Code: "772403", Message: "Group not found"}
	Error772501 = ApiError{Code: "772501", Message: "Unable to delete channel"}
	Error772502 = ApiError{Code: "772502", Message: "Channel not found"}
	Error772601 = ApiError{Code: "772601", Message: "Malformed request"}
	Error772602 = ApiError{Code: "772602", Message: "Unable to check user ban status/Unable to get updated ugc content"}
	Error772603 = ApiError{Code: "772603", Message: "Content not found"}
	Error772604 = ApiError{Code: "772604", Message: "User has been banned to update content"}
	Error772605 = ApiError{Code: "772605", Message: "Unable to save ugc content: failed generate upload URL"}
	Error772606 = ApiError{Code: "772606", Message: "Share code already used"}
	Error772607 = ApiError{Code: "772607", Message: "Unable to update ugc content: invalid shareCode format"}
	Error772701 = ApiError{Code: "772701", Message: "Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state"}
	Error772702 = ApiError{Code: "772702", Message: "Content not found"}
	Error772801 = ApiError{Code: "772801", Message: "Malformed request/Invalid request body"}
	Error772802 = ApiError{Code: "772802", Message: "Unable update tags"}
	Error772803 = ApiError{Code: "772803", Message: "Tag not found"}
	Error772804 = ApiError{Code: "772804", Message: "Proposed Tag already exist"}
	Error772902 = ApiError{Code: "772902", Message: "Unable to add content download: database error"}
	Error772903 = ApiError{Code: "772903", Message: "Unable to add content download: content not found"}
	Error772904 = ApiError{Code: "772904", Message: "Unable to list content downloader: database error"}
	Error772906 = ApiError{Code: "772906", Message: "Unable to add content download: too many request"}
	Error773001 = ApiError{Code: "773001", Message: "Unable get group"}
	Error773002 = ApiError{Code: "773002", Message: "Group not found"}
	Error773101 = ApiError{Code: "773101", Message: "invalid paging parameter"}
	Error773102 = ApiError{Code: "773102", Message: "Unable to get ugc content: database error"}
	Error773103 = ApiError{Code: "773103", Message: "No group content was found"}
	Error773200 = ApiError{Code: "773200", Message: "ugc content not found"}
	Error773201 = ApiError{Code: "773201", Message: "Unable to get ugc content/Unable to get creator/Unable to get included group"}
	Error773203 = ApiError{Code: "773203", Message: "Failed generate download URL"}
	Error773301 = ApiError{Code: "773301", Message: "Unable to find all user group"}
	Error773302 = ApiError{Code: "773302", Message: "Groups not found"}
	Error773401 = ApiError{Code: "773401", Message: "Unable to get all user content"}
	Error773402 = ApiError{Code: "773402", Message: "Content not found"}
	Error773501 = ApiError{Code: "773501", Message: "Unable to delete channel"}
	Error773502 = ApiError{Code: "773502", Message: "Channel not found"}
	Error773601 = ApiError{Code: "773601", Message: "Unable to get all user contents/Unable to delete user states"}
	Error773602 = ApiError{Code: "773602", Message: "user states are not found: content not found"}
	Error773701 = ApiError{Code: "773701", Message: "Unable to get ugc content"}
	Error773702 = ApiError{Code: "773702", Message: "ugc content not found"}
	Error773801 = ApiError{Code: "773801", Message: "Invalid request body/Malformed request"}
	Error773802 = ApiError{Code: "773802", Message: "Unable to update hide status: database error"}
	Error773803 = ApiError{Code: "773803", Message: "Unable to update hide status: content not found"}
	Error773804 = ApiError{Code: "773804", Message: "Unable to save ugc content: failed generate upload URL"}
	Error773805 = ApiError{Code: "773805", Message: "Unable to save ugc content preview: failed generate upload URL"}
	Error773900 = ApiError{Code: "773900", Message: "Malformed request/Invalid request body"}
	Error773901 = ApiError{Code: "773901", Message: "Unable to get ugc content: database/Unable to get creator"}
	Error773902 = ApiError{Code: "773902", Message: "Failed generate download URL"}
	Error774001 = ApiError{Code: "774001", Message: "unable to read response body/unable to update file location"}
	Error774002 = ApiError{Code: "774002", Message: "unable to update content file location: content not found"}
	Error774003 = ApiError{Code: "774003", Message: "unable to update content file location"}
	Error774004 = ApiError{Code: "774004", Message: "ugc content not found"}
	Error774005 = ApiError{Code: "774005", Message: "unable to get ugc content"}
	Error774101 = ApiError{Code: "774101", Message: "ugc content not found"}
	Error774102 = ApiError{Code: "774102", Message: "version not found"}
	Error774103 = ApiError{Code: "774103", Message: "unable to get ugc content/content cannot be restored using the current content version"}
	Error774201 = ApiError{Code: "774201", Message: "Invalid request body"}
	Error774202 = ApiError{Code: "774202", Message: "Unable to save config"}
	Error774204 = ApiError{Code: "774204", Message: "invalid paging parameter"}
	Error774205 = ApiError{Code: "774205", Message: "Unable to get configs"}
	Error774301 = ApiError{Code: "774301", Message: "invalid paging parameter"}
	Error774302 = ApiError{Code: "774302", Message: "unable to get staging content"}
	Error774303 = ApiError{Code: "774303", Message: "unable to generate presigned URL"}
	Error774401 = ApiError{Code: "774401", Message: "staging content not found"}
	Error774402 = ApiError{Code: "774402", Message: "unable to get staging content"}
	Error774403 = ApiError{Code: "774403", Message: "unable to generate presigned URL"}
	Error774405 = ApiError{Code: "774405", Message: "Invalid request body"}
	Error774406 = ApiError{Code: "774406", Message: "staging content not found"}
	Error774407 = ApiError{Code: "774407", Message: "unable to approve staging content"}
	Error774408 = ApiError{Code: "774408", Message: "nable to save ugc content: shareCode exceed the limit"}
	Error774411 = ApiError{Code: "774411", Message: "Invalid request body"}
	Error774412 = ApiError{Code: "774412", Message: "user has been banned to update content"}
	Error774413 = ApiError{Code: "774413", Message: "staging content not found"}
	Error774414 = ApiError{Code: "774414", Message: "unable to update staging content"}
	Error774415 = ApiError{Code: "774415", Message: "unable to generate presigned URL"}
	Error774417 = ApiError{Code: "774417", Message: "staging content not found"}
	Error774418 = ApiError{Code: "774418", Message: "unable to delete staging content"}
)

type ApiError struct {
	Code    string
	Message string
}

func (e *ApiError) IsAvailable() bool {
	return e.Code != ""
}

type ApiResponse struct {
	IsSuccess   bool
	StatusCode  int
	ContentType *string
	Error       *ApiError
}

func (e *ApiError) Error() string {
	return fmt.Sprintf("accelbyte: %s %s", e.Code, e.Message)
}
