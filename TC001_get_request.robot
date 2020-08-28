*** Settings ***

library
library  requestslibrary

*** Variables ***
${Application_url}  https://testiongworldapi.com

*** Test Cases ***
TC001_variable_dec
    log to console  ${Application_url}
    ${url}=  set variable  hello
    log to console  ${url}






