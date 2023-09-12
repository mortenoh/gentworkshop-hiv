Logical: HIVPatientInfo
Parent: PatientInfo
Title: "HIV Patient Data Model"
Description: "Extension of the base patient data model. Includes properties specific to the HIV program."

* hivEnrollmentUnit 0..1 string "The organization that has first registered the person"
* programNationaId 0..* Identifier "..."
* deceased 0..1 boolean "Is patient deceased?"
* deceasedDate 0..1 boolean "When did patient die?"
* gender 1..1 Coding ""
* gender from HIVPatientGenderVS (example)
  * ^comment = "(valueset depends on the program)"
* healthFacilityCode 0..1 string "..."
* nhisId 0..1 string "..."

// @Name: Local Code Systems
// Define a local code system
CodeSystem: HIVPatientGender
Id:         patient-gender
Title:     "Patient Gender"
Description: "Patient gender codes."
* #male "Male"
* #female "Female"
* #transgender "Transgender"
* #other "Other"
* #unknown "Unknown"



ValueSet: HIVPatientGenderVS
Title: "Patient Gender Value Set"
Description: "patient gender value set."
// The "include" in this rule is optional
// http://varnomen.hgvs.org can be replaced with an alias
* include codes from system HIVPatientGender