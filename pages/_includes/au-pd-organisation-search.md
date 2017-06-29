
-----------
**Search: Organisation Name**

`GET [base]/Organization?name=[string]`

*Example:* 
`GET [base]/Organization?name=clinigroup`

*Support:* Mandatory to support search by Organization name.

*Implementation Notes:* [(how to search by string)]
* Search based on Organization name

-----------
**Search: Organisation HPI-O**

`GET [base]/Organization?identifier=[system]|[code]`

*Example:* 
`GET [base]/Organization?identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0|8003627500000328`

*Support:* Mandatory to support search by HPI-O.

*Implementation Notes:* [(how to search by token)]
* Find an organisation by HPI-O.

-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
