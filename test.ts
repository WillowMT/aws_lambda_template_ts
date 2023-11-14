
const json = `

{"update_id":110400765,
"message":{"message_id":367,"from":{"id":1306335553,"is_bot":false,"first_name":"Aung","last_name":"Aung","username":"aungaungkk","language_code":"en"},"chat":{"id":-4046736629,"title":"Willow & Wai Yan","type":"group","all_members_are_administrators":true},"date":1699858079,"text":"/rizzme bro","entities":[{"offset":0,"length":7,"type":"bot_command"}]}}
`

console.log(JSON.stringify(JSON.parse(json)));
