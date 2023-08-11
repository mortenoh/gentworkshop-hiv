Logical: HIVCaseData

* initialCaseReportDate 1..1 date "Initial Case Report"

* dateHIVPositiveTest 1..1 date "Date of documented positive HIV test" 
* typeOfTesting 0..1 Coding "Type of community-level testing"
* facilityLevelTestingEntryPoint 0..1 Coding "Entry point for facility-level testing"
//* patientInKeyPopGroup 1..1 "Does this person belong to any Key Population groups"
* keyPopGroup 0..* Coding "Key Population group or groups this person belongs to"




Logical: HIVCaseVisitData

* visitDate 1..1 date "Visit date"
* dueDate 1..1 date "Visit due date" 
* reasonForVisit 0..1 Coding "The reason for this visit"
* treatmentStarted 0..1 boolean "Is the patient currently on treatment"
* dateARTInitiation 0..1 date "Date of ART initiation"
// TBD: add the constraint that can only be filled IF treatmentStarted is true
* eligibleforTBPreventiveTreatment 0..1 boolean "Is patient eligible for preventive treatment"
* treatmentStatus 0..1 Coding "The reason for this visit"
* currentlyPregnant 0..1 boolean ""
* daysARTdispensed 0..1 integer ""
* TPTEligibleDate 0..1 date "..."
* TPTRegimen 0..1 Coding "..."
* TPTInitiatedDate 0..1 date "..."
* TPTCompletedDate 0..1 date "..."

Logical: HIVFollowUp

* followUpAttemptDate 0..1 date ""
* followUpOutcome 0..1 Coding ""



Logical: HIVView

* CaseReport 0..1 HIVCaseData
* Visit 0..* 
* FollowUp

* dateHIVPositiveTest 1..1 date "Date of documented positive HIV test" 
* typeOfTesting 0..1 Coding "Type of community-level testing"
* facilityLevelTestingEntryPoint 0..1 Coding "Entry point for facility-level testing"
//* patientInKeyPopGroup 1..1 "Does this person belong to any Key Population groups"
* keyPopGroup 0..* Coding "Key Population group or groups this person belongs to"


