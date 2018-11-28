*** Setting ***
Library           REST    https://api.publicapis.org    ssl_verify=false
Library           Collections
Library           SeleniumLibrary
Library           JSONLibrary

*** Variables ***
@{arr}            Bhagavad Gita    BookNomads    Goodreads    Google Books    Open Library    Penguin Publishing    This data is absent and doomed to fail

*** Test Cases ***
Validate Request
    ${rsponse}=    Get    /entries?category=books&https=true
    Output    response
    Integer    response status    ${200}
    ${actualAPI}=    Get Value From Json    ${rsponse}    $.body.entries[*].API
    Integer    response body count    ${6}
    :FOR    ${itr}    in     @{arr}
    \    Should Contain    ${actualAPI}    ${itr}

*** Keywords ***
