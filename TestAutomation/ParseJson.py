import json
import requests
import jsonpath

api_url = "https://reqres.in/api/users?page=2"
response1 = requests.get(api_url)
# print(response1.text)
assert response1.status_code == 200
json_response = json.loads(response1.text)
print(json_response)

# Apply jso path

x = jsonpath.jsonpath(json_response, 'total')
print(x)

d = jsonpath.jsonpath(json_response,'data[1]')
print(d)

for val in json_response['data']:
    print(val['first_name'])