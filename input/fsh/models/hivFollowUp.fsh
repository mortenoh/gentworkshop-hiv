Logical: HIVFollowUp
Title: "HIV Follow-Up"
Description: "Report filled out for follow-up."
* followUpAttemptDate 1..1 date ""
* followUpMethod 1..1 Coding ""
* followUpMethod from HIVFollowUpMethodsVS (example)
* followUpOutcome 1..1 Coding ""
* followUpOutcome from HIVFollowUpOutcomesVS (example)
* followUpReason 1..1 Coding ""
* followUpReason from HIVReasonsForFollowUpVS (example)
* followUpNotes 0..1 string ""

// Local Code systems
CodeSystem: HIVFollowUpMethods
Title: "HIV Follow-up Methods"
Description: "Methods used for HIV follow-up."
* #SMS "Text message"
* #PHONECALL "Phone"
* #HOMEVISIT "Home Visit"
* #OTHER "Other"

CodeSystem: HIVFollowUpOutcomes
Title: "HIV Follow-up Outcomes"
Description: "Outcomes for HIV follow-up."
* #RESCHEDULED "Returning to clinic"
* #TRANSFERRED_OUT "Self-transferred out"
* #HOSPITALIZED "Hospitalized"
* #REFUSED_TO_RETURN "Refused to return"
* #NORESPONSE "Not located"
* #DIED_REPORTED "Died (reported)"
* #DIED_CONFIRMED "Confirmed Dead"

CodeSystem: HIVReasonsForFollowUp
Title: "HIV Follow-up Reasons"
Description: "Reasons for HIV follow-up."
* #MISSED_CLINICAL_VISIT "Missed clinical care visit"
* #MISSED_ARV_PICKUP "Missed medication pickup"
* #MISSED_VISIT_NONCLINICAL "Missed non-clinical visit"
* #ART_NOT_STARTED "Did not initiate ART"
* #HIV_INCONCLUSIVE "Inconclusive HIV status"
* #TEST_RESULTS "Test results received"
* #OTHER_REASON "Other follow up reason (specify)"

// ValueSets
ValueSet: HIVFollowUpMethodsVS
Title: "HIV Follow-up Methods Value Set"
Description: "A value set including all methods used for HIV follow-up."
* include codes from system HIVFollowUpMethods

ValueSet: HIVFollowUpOutcomesVS
Title: "HIV Follow-up Outcome Value Set"
Description: "A value set including all possible outcomes of HIV follow-up."
* include codes from system HIVFollowUpOutcomes

ValueSet: HIVReasonsForFollowUpVS
Title: "HIV Follow-up Reasons Value Set"
Description: "A value set including all possible reasons for HIV follow-up."
* include codes from system HIVReasonsForFollowUp