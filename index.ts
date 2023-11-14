import dotenv from 'dotenv'
import axios from 'axios';
dotenv.config()
import { deleteMessage, sendMessage, sendInlineMessage } from './bot';
import {get14DayInlineKeyboard} from './keyboard'

const statusOK = {
    statusCode:200,
    body:"OK"
}

const whitelist = "@waiyanmt,@amxdea,@jeunf,@Luizzz17,@cetehh,@laeticiamc,@vitabong,@fifty_sen,@annecastaneda,@cherryochie,@n1klauss,@twwwww3,@i_wannasleep,@hendrikkwok,@aungaungkk,"

export const handler = async (
    event:any
) => {
    var body, callback_query, text, chatId, handle
    console.log(event);
    
    try {
        body = JSON.parse(event.body)
        callback_query = body.callback_query
    } catch (err) {

    }
    
    if (callback_query) {
        // do callback stuff
        
        chatId = body.callback_query.message.chat.id
        let messageId = body.callback_query.message.message_id
        let callback_data = body.callback_query.data

        if (callback_data.match(/\d{4}-\d{2}-\d{2}/)) {
            // send booking information to user
            const query = `select * from BookingList where rdate='${callback_data}' order by end_time asc;`
            const resp = await axios.post('https://buq5z8owbd.execute-api.ap-southeast-1.amazonaws.com/prod/planetscale-booking',{
                sql:query
            })
                
            if (resp.data.length === 0) {
                await sendMessage(chatId,'No Rooms Available For This Date.')
                return {statusCode:200,body:"No Rooms."}
            }
            

            // parse rooms to telegram format
            const listFormatted = resp.data.map((r:any) => {
                return `${r.name} - ${r.room} | ${r.start_time} - ${r.end_time} `
            }).join("%0A")
            
            await sendMessage(chatId,`${body.callback_query.data}%0A==========%0A${listFormatted}`)

            // delete the inline keyboard afterwards
            await deleteMessage(chatId,messageId)
            // await sendMessage(chatId,'soy')
            return {statusCode:200,body:'OK'}
        }

    } else {   
        // user sends message
        
        text = body.message.text
        chatId = body.message.chat.id
        handle = body.message.from.username

        // await sendMessage(chatId,JSON.stringify(body))
        // return {
        //     statusCode:200,
        //     body:"OK"
        // }

        if (text.startsWith('/rizzme')) {
            const {data} = await axios.get('https://gfer6bxink.execute-api.ap-southeast-1.amazonaws.com/default/test-func')
            await sendMessage(chatId,data)
            return statusOK
        }
        

        if (text.startsWith("/room")) {
            // send user to select date
            const query = `select role from whitelist where handle='@${handle}' limit 1`
            const resp = await axios.post('https://buq5z8owbd.execute-api.ap-southeast-1.amazonaws.com/prod/planetscale-booking',{
                sql:query
            })

            if (resp.data.length === 0 ) {
                await sendMessage(chatId,'Cannot view as new user.%0APlease contact Network Administrator.')

            } else if (resp.data[0].role === 'BLACKLIST') {
                await sendMessage(chatId,'You dont have permission to view.')

            } else if (resp.data[0].role === 'ADMIN' || resp.data[0].role === 'USER' ){
                const inline = get14DayInlineKeyboard()
                await sendInlineMessage(chatId,'📆 Select Date To View',JSON.stringify(inline))

            }


        }

        if (text.startsWith("/register")) {
            // check if valid user
            let q = `select role from whitelist where handle='@${handle}' limit 1`
            const {data} = await axios.post('https://buq5z8owbd.execute-api.ap-southeast-1.amazonaws.com/prod/planetscale-booking',{
                sql:q
            })

            if (data.length === 0 ) {
                await sendMessage(chatId,'Failed to register. Please contact Network Administrator.')
                return statusOK

            } else if (data[0].role === 'BLACKLIST') {
                await sendMessage(chatId,'You are Forbidden from Registering.')
                return statusOK
            }

            // either admin or user
            let list = text.split(" ")

            if (list.length < 6) {
                await sendMessage(chatId,"Not enough arguments.")
                return {statusCode:200,body:"not enough arguments."}
            }
            // send user to select date
            let filtered = list.splice(1,100)
            const query = `insert into BookingList 
                (name,room,rdate,start_time,end_time,details) 
                values 
                ('${filtered[0]}','${filtered[1]}','${filtered[2]}',${parseInt(filtered[3])},${parseInt(filtered[4])},'')
            `
            const resp = await axios.post('https://buq5z8owbd.execute-api.ap-southeast-1.amazonaws.com/prod/planetscale-booking',{
                sql:query
            })
            
            if (resp.status == 200) {
                await sendMessage(chatId,"Added!")
            }

        }

        if (text.startsWith('/rawsql')) {
            try {
                let query = text.split(' ').slice(1,999).join(" ")
                const resp = await axios.post('https://buq5z8owbd.execute-api.ap-southeast-1.amazonaws.com/prod/planetscale-booking',{
                    sql:query
                })
                if (resp.status == 200) {
                    await sendMessage(chatId,'Successfully executed!')
                }
            } catch (err) {
                await sendMessage(chatId,'SQL Failed to Execute.')
            }
        }

        return {
            statusCode: 200,
            body: "OK",
        };
        
    }
    

};
