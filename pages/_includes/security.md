# {{ page.title }}

## Secure Messaging Certficate Usage

''Vendor'' refers to a secure messaging vendor

01 If NASH certificate available it SHOULD be used for encryption and signing

02 Vendors WILL BE responsible for their directory entries including certificate and identity quality assurance.

03 Trust of vendor provider directory entries MUST be agreed between vendors implementing secure message exchange capability.

04 Vendor allocated certificates MAY be used in Endpoint encrypting certificate extension content

05 Vendor certificate allocation written policy statement SHOULD be made avaialble for users of these certificates.

06 Vendor certificates allocated to an Endpoint MUST contain a URL matching one of the Endpoint.identifier (Secure Messaging Target Identifier) values in the associated Endpoint instance

07 Vendor allocated Endpoint.identifier (Secure Messaging Target Identifier) values (URL) must be assigned in domain under the vendor's control.

08 Endoint published vendor encrypting certificates MUST be issued by a CA where trust chain can be checked

09 Vendor certificate secure message signed payload MUST provide a certificate where CA trust chain can be checked

10 Secure message metdata senderOrganisation (URI) MUST be present in the signing certificate Subject Alternative Names property

