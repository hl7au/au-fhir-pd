
-----------
**Read: Organisation**

Read identified organisation resource content.

`GET [base]/Organization/[id]`

*Example:* `GET [base]/Organization/1234`

*Support:* MUST support read Organisation

*Implementation Notes:*  [(how to read resource)]

-----------
**Search: Active Status**

Search based on active status of the organisation record.

`GET [base]/Organization?active=[status]`

*Example:* `GET [base]/Organization?active=true`

*Support:* MUST support search Organization by active status (true \| false).

*Implementation Notes:* [(how to search by token)]

-----------
**Search: HPI-O**

Search based on identifier token.

`GET [base]/Organization?identifier=[system]|[value]`

*Example:* `GET [base]/Organization?identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0|8003627500000328`

*Support:* SHOULD support search by HPI-O.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Name**

Search for a organisation by name.

`GET [base]/Organization?name=[string]`

*Example:* `GET [base]/Organization?name=southern%20clinic`

*Support:*

* MUST support search by Organisation name.

*Implementation Notes:* [(how to search by string)]

-----------
**Search: Combination**

* Searches MUST be able to be perfomed in a single request using logical AND for criteria. e.g name and status

-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
 [(how to search by quantity)]: http://hl7.org/fhir/search.html#quantity
 [(how to read resource)]: http://hl7.org/fhir/http.html#read

 