# PublicAPI
HTTP API Testing using Robot Framework for REST API

API Used for Testing : https://github.com/toddmotto/public-apis#books

This Test uses followin libraries which needs to be installed
RESTInstance   command pip install --upgrade RESTInstance
JSONLibrary    command pip install robotframework-JSONLibrary

Please note below very simple tests are written and automated considering this being just a cases study.

Tests Automated

1) Get request should be successful and valid response should be received. Assert status code = 200
2) Assert Count of books received from request should be equal to 6
3) Assert API of all six books are as expected and passed to list variable.

Additional Scenarios which are not Automated:

1) When sending a request, application type should be returned as mentioned in Header e.g. JSON/XML
2) Upon sending request, there should not be any parsing error and valid JSON should be formed for sending
3) If correct endpoint URL is not mentioned in request, HTTP code 400 is returned
4) If correct status code 200 is received, still check integrity for data whether 6 values are read
5) Details of all properties of entries should be verified with data mentioned in https://github.com/toddmotto/public-apis#books
6) Verify all hyperlinks in API point to valid url and none of them are broken.



Note: Above considering simplicity of API, basic Test Scenarios have been written and even simpler are being automated.
