*** Settings ***
Library  RequestsLibrary



*** Variables ***
${base_url}  https://Thetestingworldapi.com
${stu_id}   105

*** Test Cases ***
TC001_get_request
    Create session  get_stu_id  ${base_url}
    ${response}=   get request  get_stu_id  api/studentsDetails/${stu_id}
    log to console  ${response}
    log to console  ${response.status_code}
    ${str_code}=  convert to string  ${response.status_code}
   # should be equal as strings  ${response.status_code}  200
    should be equal  ${str_code}  200
    log to console  ${response.content}
