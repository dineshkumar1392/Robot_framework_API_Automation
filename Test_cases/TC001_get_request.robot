*** Settings ***
Library  RequestsLibrary



*** Variables ***
${base_url}  https://Thetestingworldapi.com



*** Test Cases ***
TC001_get_request
    Create session  get_student_details  ${base_url}
    ${response}=   get request  get_student_details  api/studentsDetails
    log to console  ${response}
    log to console  ${response.status_code}
    log to console  ${response.content}
