
-----------

`GET [base]/HealthcareService?name=[string]`

**Example:** GET [base]/HealthcareService?name=southern%20clinic

*Support:* Mandatory to support search by HealthcareService name.

*Implementation Notes:* Search based on HealthcareService name

-----------

`GET [base]/HealthcareService?organization.name=[string]`

**Example:** GET [base]/HealthcareService?organization.name=clinigroup

*Support:* Mandatory to support search by Organization name.

*Implementation Notes:* Search based on text name.

-----------

`GET [base]/HealthcareService?type=[system]|[code]`

**Example:** GET [base]/HealthcareService?type=[todo]\|[todo]

*Support:* Mandatory to support search by HealthcareService type.

*Implementation Notes:*  Search based on type.

-----------

`GET [base]/HealthcareService?organization.identifier=[system]|[code]&endpoint.connection-type=[system]|[code]&endpoint.payload-type=[system]|[code]&_include=HealthcareService:organization&_include=HealthcareService:endpoint`

**Example:** GET [base]/HealthcareService?organization.identifier=HPI-O&connection-type=[todo]\|[todo]&payload-type=[todo]\|[todo]

*Support:* Mandatory to support search by HPI-O, connection type (service interface) and payload type (service category).

*Implementation Notes:* Equivalent to ELS listInteractions for organisation.


-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
