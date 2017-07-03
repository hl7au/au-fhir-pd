
-----------
**Search: Provider Practitioner Name**

`GET [base]/PractitionerRole?practitioner.family=[string]&practitioner.given=[string]`

*Example:* 
`GET [base]/PractitionerRole?practitioner.family=Smith&practitioner.given=John`

*Support* Mandatory to support search by Practitioner family and or given name.

*Implementation Notes:*  [(how to search by string)]

* Search based on text name.
* Can _include details of managing organisation, endpoints and location by adding 
`&_include=PractitionerRole:organization&_include=PractitionerRole:endpoint&_include=PractitionerRole:location`

-----------
**Search: Provider Specialty**

`GET [base]/PractitionerRole?specialty=[system]|[code]`

*Example:* 
`GET [base]/PractitionerRole?specialty=[todo]|[todo]`

*Support* Mandatory to support search by Specialty.

*Implementation Notes:* [(how to search by token)]

* Search based on specialty.
* Can _include details of managing organisation, endpoints and location by adding 
`&_include=PractitionerRole:organization&_include=PractitionerRole:endpoint&_include=PractitionerRole:location`


-----------
**Search: Provider Managing Organisation HPI-O**

`GET [base]/PractitionerRole?organization.identifier=[system]|[code]`

*Example:* 
`GET [base]/PractitionerRole?organization.identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0|8003627500000328`

*Support* Mandatory to support search by HPI-O.

*Implementation Notes:* [(how to search by token)]

* Equivalent to ELS listInteractions for target.
* Can _include details of managing organisation, endpoints and location by adding 
`&_include=PractitionerRole:organization&_include=PractitionerRole:endpoint&_include=PractitionerRole:location`
* Can add required support for interface and/or payload capability 
`&endpoint.connection-type=[todo]|[todo]&endpoint.payload-type=[todo]|[todo]`

-----------
**Search: Provider Practitioner HPI-I**

`GET [base]/PractitionerRole?practitioner.identifier=[system]|[code]`

*Example:* 
`GET [base]/PractitionerRole?practitioner.identifier=http://ns.electronichealth.net.au/id/hi/hpii/1.0|8003610833334085`

*Support* Mandatory to support search by HPI-I.

*Implementation Notes:* [(how to search by token)]

* Equivalent to ELS listInteractions for target individual provider.
* Can _include details of managing organisation, endpoints and location by adding 
`&_include=PractitionerRole:organization&_include=PractitionerRole:endpoint&_include=PractitionerRole:location`
* Can add required support for interface and/or payload capability
`&endpoint.connection-type=[todo]|[todo]&endpoint.payload-type=[todo]|[todo]`

-----------
**Search: Provider Number**

`GET [base]/PractitionerRole?identifier=[system]|[code]`

*Example:* 
`GET [base]/PractitionerRole?identifier=http://ns.electronichealth.net.au/id/medicare-provider-number|2426621B`

*Support* Mandatory to support search by Provider Number.

*Implementation Notes:* [(how to search by token)]

* Equivalent to ELS listInteractions for target individual provider.
* Can _include details of managing organisation, endpoints and location by adding 
`&_include=PractitionerRole:organization&_include=PractitionerRole:endpoint&_include=PractitionerRole:location`
* Can add required support for interface and/or payload capability
`&endpoint.connection-type=[todo]|[todo]&endpoint.payload-type=[todo]|[todo]`

-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
