// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policies

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// Get the enum in RetrieveLatestPoliciesPublicParams
const (
	RetrieveLatestPoliciesPublicLEGALDOCUMENTTYPEConstant       = "LEGAL_DOCUMENT_TYPE"
	RetrieveLatestPoliciesPublicMARKETINGPREFERENCETYPEConstant = "MARKETING_PREFERENCE_TYPE"
)

// NewRetrieveLatestPoliciesPublicParams creates a new RetrieveLatestPoliciesPublicParams object
// with the default values initialized.
func NewRetrieveLatestPoliciesPublicParams() *RetrieveLatestPoliciesPublicParams {
	var ()
	return &RetrieveLatestPoliciesPublicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveLatestPoliciesPublicParamsWithTimeout creates a new RetrieveLatestPoliciesPublicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveLatestPoliciesPublicParamsWithTimeout(timeout time.Duration) *RetrieveLatestPoliciesPublicParams {
	var ()
	return &RetrieveLatestPoliciesPublicParams{

		timeout: timeout,
	}
}

// NewRetrieveLatestPoliciesPublicParamsWithContext creates a new RetrieveLatestPoliciesPublicParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveLatestPoliciesPublicParamsWithContext(ctx context.Context) *RetrieveLatestPoliciesPublicParams {
	var ()
	return &RetrieveLatestPoliciesPublicParams{

		Context: ctx,
	}
}

// NewRetrieveLatestPoliciesPublicParamsWithHTTPClient creates a new RetrieveLatestPoliciesPublicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveLatestPoliciesPublicParamsWithHTTPClient(client *http.Client) *RetrieveLatestPoliciesPublicParams {
	var ()
	return &RetrieveLatestPoliciesPublicParams{
		HTTPClient: client,
	}
}

/*RetrieveLatestPoliciesPublicParams contains all the parameters to send to the API endpoint
for the retrieve latest policies public operation typically these are written to a http.Request
*/
type RetrieveLatestPoliciesPublicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*AlwaysIncludeDefault
	  Always include default

	*/
	AlwaysIncludeDefault *bool
	/*DefaultOnEmpty
	  Default On Empty

	*/
	DefaultOnEmpty *bool
	/*PolicyType
	  Policy Type

	*/
	PolicyType *string
	/*Tags
	  tags, separate multiple value by commas parameter

	*/
	Tags *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithTimeout(timeout time.Duration) *RetrieveLatestPoliciesPublicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithContext(ctx context.Context) *RetrieveLatestPoliciesPublicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithHTTPClient(client *http.Client) *RetrieveLatestPoliciesPublicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithNamespace(namespace string) *RetrieveLatestPoliciesPublicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAlwaysIncludeDefault adds the alwaysIncludeDefault to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithAlwaysIncludeDefault(alwaysIncludeDefault *bool) *RetrieveLatestPoliciesPublicParams {
	o.SetAlwaysIncludeDefault(alwaysIncludeDefault)
	return o
}

// SetAlwaysIncludeDefault adds the alwaysIncludeDefault to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetAlwaysIncludeDefault(alwaysIncludeDefault *bool) {
	o.AlwaysIncludeDefault = alwaysIncludeDefault
}

// WithDefaultOnEmpty adds the defaultOnEmpty to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithDefaultOnEmpty(defaultOnEmpty *bool) *RetrieveLatestPoliciesPublicParams {
	o.SetDefaultOnEmpty(defaultOnEmpty)
	return o
}

// SetDefaultOnEmpty adds the defaultOnEmpty to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetDefaultOnEmpty(defaultOnEmpty *bool) {
	o.DefaultOnEmpty = defaultOnEmpty
}

// WithPolicyType adds the policyType to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithPolicyType(policyType *string) *RetrieveLatestPoliciesPublicParams {
	o.SetPolicyType(policyType)
	return o
}

// SetPolicyType adds the policyType to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetPolicyType(policyType *string) {
	o.PolicyType = policyType
}

// WithTags adds the tags to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithTags(tags *string) *RetrieveLatestPoliciesPublicParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetTags(tags *string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveLatestPoliciesPublicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.AlwaysIncludeDefault != nil {

		// query param alwaysIncludeDefault
		var qrAlwaysIncludeDefault bool
		if o.AlwaysIncludeDefault != nil {
			qrAlwaysIncludeDefault = *o.AlwaysIncludeDefault
		}
		qAlwaysIncludeDefault := swag.FormatBool(qrAlwaysIncludeDefault)
		if qAlwaysIncludeDefault != "" {
			if err := r.SetQueryParam("alwaysIncludeDefault", qAlwaysIncludeDefault); err != nil {
				return err
			}
		}

	}

	if o.DefaultOnEmpty != nil {

		// query param defaultOnEmpty
		var qrDefaultOnEmpty bool
		if o.DefaultOnEmpty != nil {
			qrDefaultOnEmpty = *o.DefaultOnEmpty
		}
		qDefaultOnEmpty := swag.FormatBool(qrDefaultOnEmpty)
		if qDefaultOnEmpty != "" {
			if err := r.SetQueryParam("defaultOnEmpty", qDefaultOnEmpty); err != nil {
				return err
			}
		}

	}

	if o.PolicyType != nil {

		// query param policyType
		var qrPolicyType string
		if o.PolicyType != nil {
			qrPolicyType = *o.PolicyType
		}
		qPolicyType := qrPolicyType
		if qPolicyType != "" {
			if err := r.SetQueryParam("policyType", qPolicyType); err != nil {
				return err
			}
		}

	}

	if o.Tags != nil {

		// query param tags
		var qrTags string
		if o.Tags != nil {
			qrTags = *o.Tags
		}
		qTags := qrTags
		if qTags != "" {
			if err := r.SetQueryParam("tags", qTags); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
