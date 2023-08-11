export const handler = async (
    event:any
) => {
    var body
    try {
        body = JSON.parse(event.body || "");
    } catch (err) {
        body = event.body;
    }
    
    // TODO: Implement your code here

    return {
        statusCode: 200,
        body: "OK",
    };
};
