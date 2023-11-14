// local development run file

import { handler } from "./index";

const event = {
    method:"POST",
    body: "{\"update_id\":110400806,\n\"message\":{\"message_id\":426,\"from\":{\"id\":1637119208,\"is_bot\":false,\"first_name\":\"Willow\",\"username\":\"waiyanmt\",\"language_code\":\"en\"},\"chat\":{\"id\":1637119208,\"first_name\":\"Willow\",\"username\":\"waiyanmt\",\"type\":\"private\"},\"date\":1699860332,\"text\":\"/rizzme\",\"entities\":[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]}}"
}

console.log(event);


const main = async () => {
    const res = await handler(event as any);
    console.log(res);
}

main()