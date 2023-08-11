// local development run file

import { handler } from "./index";

const data = {}

const main = async () => {
    const res = await handler(data as any);
    console.log(res);
}

main()