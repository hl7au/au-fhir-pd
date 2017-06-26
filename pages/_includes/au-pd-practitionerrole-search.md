
-----------

`GET [base]/PractitionerRole?practitioner.identifier=[system]|[code]`

**Example:** GET [base]/PractitionerRole?practitioner.identifier=http://ns.electronichealth.net.au/id/medicare-provider-number\|2426621B

*Support:* Mandatory to support search by Practitioner identifier.

*Implementation Notes:* Search based on Practitioner identifier (e.g. Provider Number)


-----------

`GET [base]/PractitionerRole?practitioner.family=[string]&practitioner.given=[string]`

**Example:** GET [base]/PractitionerRole?practitioner.family=Smith&practitioner.given=John

*Support:* Mandatory to support search by Practitioner family and or given name.

*Implementation Notes:* Search based on text name.

-----------

`GET [base]/PractitionerRole?specialty=[system]|[code]`

**Example:** GET [base]/PractitionerRole?specialty=[todo]\|[todo]

*Support:* Mandatory to support search by Specialty.

*Implementation Notes:*  Search based on specialty.

-----------

`GET [base]/PractitionerRole?organization.identifier=[system]|[code]&endpoint.connection-type=[system]|[code]&endpoint.payload-type=[system]|[code]&_include=PractitionerRole:organization&_include=PractitionerRole:endpoint`

**Example:** GET [base]/PractitionerRole?organization.identifier=HPI-O&connection-type=[todo]\|[todo]&payload-type=[todo]\|[todo]

*Support:* Mandatory to support search by HPI-O, connection type (service interface) and payload type (service category).

*Implementation Notes:* Equivalent to ELS listInteractions for organisation.

-----------

`GET [base]/PractitionerRole?practitioner.identifier=[system]|[code]&endpoint.connection-type=[system]|[code]&endpoint.payload-type=[system]|[code]&_include=PractitionerRole:organization&_include=PractitionerRole:endpoint`

**Example:** GET [base]/PractitionerRole?practitioner.identifier=HPI-I&connection-type=[todo]\|[todo]&payload-type=[todo]\|[todo]

*Support:* Mandatory to support search by HPI-I, connection type (service interface) and payload type (service category).

*Implementation Notes:* Equivalent to ELS listInteractions for individual provider.

-----------

`GET [base]/PractitionerRole?identifier=[system]|[code]&endpoint.connection-type=[system]|[code]&endpoint.payload-type=[system]|[code]&_include=PractitionerRole:organization&_include=PractitionerRole:endpoint`

**Example:** GET [base]/PractitionerRole?identifier=PRN&connection-type=[todo]\|[todo]&payload-type=[todo]\|[todo]

*Support:* Mandatory to support search by Provider Number, connection type (service interface) and payload type (service category).

*Implementation Notes:* Equivalent to ELS listInteractions for individual provider.

-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
