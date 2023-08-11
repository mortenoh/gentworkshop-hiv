Logical: HIVPatientInfo
Parent: PatientInfo
Title: "HIV Patient data model"
Description: "When a patient is added, we register the person the enrollment info"

* hivEnrollmentUnit 0..1 string "The organization that has first registered the person"
* programNationaId 0..* Identifier "..."
* deceased 0..1 boolean "Is patient deceased?"
* deceasedDate 0..1 boolean "When did patient die?"

// * healthFacilityCode 0..1 string "..."
// * nhisId 0..1 string "..."


// @Name: Local Code Systems
