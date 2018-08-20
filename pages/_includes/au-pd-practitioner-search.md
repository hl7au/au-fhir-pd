-----------
**Read: Practitioner**

Read identified practitioner resource content.

`GET [base]/Practitioner/[id]`

*Example:* `GET [base]/Practitioner/1234`

*Support:* MUST support read Practitioner

*Implementation Notes:*  [(how to read resource)]

-----------
**Search: Active Status**

Search based on active status of the practitioner record.

`GET [base]/Practitioner?active=[status]`

*Example:* `GET [base]/Practitioner?active=true`

*Support:*

* MUST support search Practitioner by active status (true \| false).

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Practitioner Name**

Search based on family, given and/or any name.

`GET [base]/Practitioner?family=[string]`

`GET [base]/Practitioner?family=[string]&given=[string]`

`GET [base]/Practitioner?name=[string]`

*Example:* 

`GET [base]/Practitioner?family=Smith`

`GET [base]/Practitioner?family=Smith&practitioner.given=John`

`GET [base]/Practitioner?name=Smith`

*Support:* SHOULD support search by family, given and name.

*Implementation Notes:*  [(how to search by string)]

-----------
**Search: HPI-I**

Search based on identifier token.
 
`GET [base]/Practitioner?identifier=[system]|[value]`

*Example:* `GET [base]/Practitioner?identifier=http://ns.electronichealth.net.au/id/hi/hpii/1.0|8003610833334085`

*Support:* SHOULD support search by HPI-I.

*Implementation Notes:* [(how to search by token)]

-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
 [(how to search by quantity)]: http://hl7.org/fhir/search.html#quantity
 [(how to read resource)]: http://hl7.org/fhir/http.html#read
