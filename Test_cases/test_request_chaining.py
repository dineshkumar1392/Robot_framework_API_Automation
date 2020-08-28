import requests
import json
import jsonpath
def test_add_student():
    global id
    api_url = "http://www.thetestingworldapi.com/api/studentsDetails"
    file = open("D://api_json/py.txt", 'r')
    student_details = json.loads(file.read())
    response = requests.post(api_url, student_details)
    id =jsonpath.jsonpath(response.json(),"id")
    print(id[0])

def test_get_details():
    api_url = "http://www.thetestingworldapi.com/api/studentsDetails/"+ str(id[0])
    response = requests.get(api_url)
    print(response.text)
