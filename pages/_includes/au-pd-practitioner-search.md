
-----------
##### *Search: Practitioner HPI-I*

`GET [base]/Practitioner?identifier=[system]|[code]`

*Example:* 
`GET [base]/Practitioner?identifier=http://ns.electronichealth.net.au/id/hi/hpii/1.0|8003610833334085`

*Support:* Mandatory to search by identifier.

*Implementation Notes:* [(how to search by token)]
* Search based on practitioner identifier  (e.g. HPI-I)

-----------
##### *Search: Practitioner Name*

`GET [base]/Practitioner?family=[string]&given=[string]`

*Example:* 
`GET [base]/Practitioner?family=Smith&given=John`

*Support:* Mandatory to support search by Practitioner name.

*Implementation Notes:* [(how to search by string)]
* Search based on text name

-----------
 [(how to search by reference)]: {{ site.data.fhir.path }}/search.html#reference
 [(how to search by token)]: {{ site.data.fhir.path }}/search.html#token
 [(how to search by date)]: {{ site.data.fhir.path }}/search.html#date
 [(how to search by string)]: {{ site.data.fhir.path }}/search.html#string