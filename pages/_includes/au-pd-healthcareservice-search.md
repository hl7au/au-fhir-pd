
-----------
**Search: Healthcare Service Name**

`GET [base]/HealthcareService?name=[string]`

*Example:* 
`GET [base]/HealthcareService?name=southern%20clinic`

*Support:* Mandatory to support search by HealthcareService name.

*Implementation Notes:* [(how to search by string)]

* Search based on HealthcareService name
* Can _include details of managing organisation, endpoints and location by adding  
`&_include=HealthcareService:organization&_include=HealthcareService:endpoint&_include=HealthcareService:location`

-----------
**Search: Healthcare Service Managing Organisation Name**

`GET [base]/HealthcareService?organization.name=[string]`

*Example:* 
`GET [base]/HealthcareService?organization.name=clinigroup`

*Support:* Mandatory to support search by Organization name.

*Implementation Notes:* [(how to search by string)]

* Chained search (via Organisation) based on text name.
* Can _include details of managing organisation, endpoints and location by adding 
`&_include=HealthcareService:organization&_include=HealthcareService:endpoint&_include=HealthcareService:location`


-----------
**Search: Healthcare Service Type**

`GET [base]/HealthcareService?type=[system]|[code]`

*Example:* 
`GET [base]/HealthcareService?type=[]|[]`

*Support:* Mandatory to support search by HealthcareService type.

*Implementation Notes:* [(how to search by token)]

* Search based on type.
* Can _include details of managing organisation, endpoints and location by adding 
`&_include=HealthcareService:organization&_include=HealthcareService:endpoint&_include=HealthcareService:location`

-----------
**Search: Healthcare Service Managing Organisation HPI-O**

`GET [base]/HealthcareService?organization.identifier=[system]|[code]`

*Example:* 
`GET [base]/HealthcareService?organization.identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0|8003627500000328`

*Support:* Mandatory to support search by HPI-O.

*Implementation Notes:* [(how to search by token)]

* Chained search (via Organisation) based on identifier token.
* Equivalent to ELS listInteractions for target.
* Can _include details of managing organisation, endpoints and location by adding 
`&_include=HealthcareService:organization&_include=HealthcareService:endpoint&_include=HealthcareService:location`

-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
