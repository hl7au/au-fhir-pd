
-----------
**Read: Organisation**
Read identified organisation resource content.

`GET [base]/Organization/[id]`

*Example:* `GET [base]/Organization/1234`

*Support:* MUST support read Organisation

*Implementation Notes:*  [[(how to read resource)]

-----------
**Search: HPI-O**
Search based on identifier token.

`GET [base]/Organization?identifier=[system]|[value]`

*Example:* `GET [base]/Organization?identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0|8003627500000328`

*Support:* SHOULD support search by HPI-O.

*Implementation Notes:* [(how to search by token)]
-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
 [(how to search by quantity)]: http://hl7.org/fhir/search.html#quantity
 [(how to read resource)]: http://hl7.org/fhir/http.html#read
