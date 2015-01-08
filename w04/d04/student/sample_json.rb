get('/randomme') do
  person_hash = {name: "Joe", age: 32}
  content_type['application/json']
  person_hash.to_json


end
