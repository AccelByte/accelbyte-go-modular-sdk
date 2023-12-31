// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmakingclientmodels

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsRuleSet Models rule set
//
// swagger:model Models rule set.
type ModelsRuleSet struct {

	// alliance
	// Required: true
	Alliance *ModelsAllianceRule `json:"alliance"`

	// alliance_flexing_rule
	AllianceFlexingRule []*ModelsAllianceFlexingRule `json:"alliance_flexing_rule,omitempty"`

	// batch_size
	// Required: true
	// Format: int32
	BatchSize *int32 `json:"batch_size"`

	// bucket_mmr_rule
	BucketMmrRule *ModelsBucketMMRRule `json:"bucket_mmr_rule,omitempty"`

	// flexing_rule
	// Required: true
	FlexingRule []*ModelsFlexingRule `json:"flexing_rule"`

	// match_options
	// Required: true
	MatchOptions *ModelsMatchOptionRule `json:"match_options"`

	// matching_rule
	// Required: true
	MatchingRule []*ModelsMatchingRule `json:"matching_rule"`

	// rebalance_enable
	// Required: true
	RebalanceEnable *bool `json:"rebalance_enable"`

	// sort_ticket
	// Required: true
	SortTicket *ModelsSortTicket `json:"sort_ticket"`

	// sort_tickets
	// Required: true
	SortTickets []*ModelsSortTicketRule `json:"sort_tickets"`

	// sub_game_modes
	SubGameModes map[string]ModelsSubGameMode `json:"sub_game_modes,omitempty"`

	// ticket_flexing_selection
	// Enum: ['newest', 'oldest', 'pivot', 'random']
	// Required: true
	TicketFlexingSelection *string `json:"ticket_flexing_selection"`

	// ticket_flexing_selections
	// Required: true
	TicketFlexingSelections []*ModelsSelectionRule `json:"ticket_flexing_selections"`

	// use_newest_ticket_for_flexing
	UseNewestTicketForFlexing bool `json:"use_newest_ticket_for_flexing"`
}

// Validate validates this Models rule set
func (m *ModelsRuleSet) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAlliance(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBatchSize(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFlexingRule(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchOptions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchingRule(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRebalanceEnable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSortTicket(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSortTickets(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketFlexingSelection(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketFlexingSelections(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsRuleSet) validateAlliance(formats strfmt.Registry) error {

	if err := validate.Required("alliance", "body", m.Alliance); err != nil {
		return err
	}

	if m.Alliance != nil {
		if err := m.Alliance.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("alliance")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsRuleSet) validateBatchSize(formats strfmt.Registry) error {

	if err := validate.Required("batch_size", "body", m.BatchSize); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRuleSet) validateFlexingRule(formats strfmt.Registry) error {

	if err := validate.Required("flexing_rule", "body", m.FlexingRule); err != nil {
		return err
	}

	for i := 0; i < len(m.FlexingRule); i++ {
		if swag.IsZero(m.FlexingRule[i]) { // not required
			continue
		}

		if m.FlexingRule[i] != nil {
			if err := m.FlexingRule[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("flexing_rule" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsRuleSet) validateMatchOptions(formats strfmt.Registry) error {

	if err := validate.Required("match_options", "body", m.MatchOptions); err != nil {
		return err
	}

	if m.MatchOptions != nil {
		if err := m.MatchOptions.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("match_options")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsRuleSet) validateMatchingRule(formats strfmt.Registry) error {

	if err := validate.Required("matching_rule", "body", m.MatchingRule); err != nil {
		return err
	}

	for i := 0; i < len(m.MatchingRule); i++ {
		if swag.IsZero(m.MatchingRule[i]) { // not required
			continue
		}

		if m.MatchingRule[i] != nil {
			if err := m.MatchingRule[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("matching_rule" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsRuleSet) validateRebalanceEnable(formats strfmt.Registry) error {

	if err := validate.Required("rebalance_enable", "body", m.RebalanceEnable); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRuleSet) validateSortTicket(formats strfmt.Registry) error {

	if err := validate.Required("sort_ticket", "body", m.SortTicket); err != nil {
		return err
	}

	if m.SortTicket != nil {
		if err := m.SortTicket.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("sort_ticket")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsRuleSet) validateSortTickets(formats strfmt.Registry) error {

	if err := validate.Required("sort_tickets", "body", m.SortTickets); err != nil {
		return err
	}

	for i := 0; i < len(m.SortTickets); i++ {
		if swag.IsZero(m.SortTickets[i]) { // not required
			continue
		}

		if m.SortTickets[i] != nil {
			if err := m.SortTickets[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("sort_tickets" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

var modelsRuleSetTypeTicketFlexingSelectionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["NEWEST", "OLDEST", "PIVOT", "RANDOM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsRuleSetTypeTicketFlexingSelectionPropEnum = append(modelsRuleSetTypeTicketFlexingSelectionPropEnum, v)
	}
}

const (

	// ModelsRuleSetTicketFlexingSelectionNEWEST captures enum value "NEWEST"
	ModelsRuleSetTicketFlexingSelectionNEWEST string = "NEWEST"

	// ModelsRuleSetTicketFlexingSelectionOLDEST captures enum value "OLDEST"
	ModelsRuleSetTicketFlexingSelectionOLDEST string = "OLDEST"

	// ModelsRuleSetTicketFlexingSelectionPIVOT captures enum value "PIVOT"
	ModelsRuleSetTicketFlexingSelectionPIVOT string = "PIVOT"

	// ModelsRuleSetTicketFlexingSelectionRANDOM captures enum value "RANDOM"
	ModelsRuleSetTicketFlexingSelectionRANDOM string = "RANDOM"
)

// prop value enum
func (m *ModelsRuleSet) validateTicketFlexingSelectionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsRuleSetTypeTicketFlexingSelectionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsRuleSet) validateTicketFlexingSelection(formats strfmt.Registry) error {

	if err := validate.Required("ticket_flexing_selection", "body", m.TicketFlexingSelection); err != nil {
		return err
	}

	// value enum
	if err := m.validateTicketFlexingSelectionEnum("ticket_flexing_selection", "body", *m.TicketFlexingSelection); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRuleSet) validateTicketFlexingSelections(formats strfmt.Registry) error {

	if err := validate.Required("ticket_flexing_selections", "body", m.TicketFlexingSelections); err != nil {
		return err
	}

	for i := 0; i < len(m.TicketFlexingSelections); i++ {
		if swag.IsZero(m.TicketFlexingSelections[i]) { // not required
			continue
		}

		if m.TicketFlexingSelections[i] != nil {
			if err := m.TicketFlexingSelections[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("ticket_flexing_selections" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRuleSet) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRuleSet) UnmarshalBinary(b []byte) error {
	var res ModelsRuleSet
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
