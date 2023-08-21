import dotenv from 'dotenv'
dotenv.config()

export const handler = async (
    event:any
) => {
    var body
    try {
        event = JSON.parse(event || "");
    } catch (err) {
        body = event.body;
    }
    
    // TODO: Implement your code here

    return {
        statusCode: 200,
        body: "OK",
    };
};
