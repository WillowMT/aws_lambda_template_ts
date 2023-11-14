import dotenv from 'dotenv'
import axios from 'axios';
dotenv.config()

export async function sendMessage(chatId:string, message:string) {
    await axios.get(`https://api.telegram.org/${process.env.BOT_TOKEN}/sendMessage?chat_id=${chatId}&text=${message}`)
}

export async function sendInlineMessage(chatId:string, message:string,inline:string) {
    await axios.get(`https://api.telegram.org/${process.env.BOT_TOKEN}/sendMessage?chat_id=${chatId}&text=${message}&reply_markup=${inline}`)
}

export async function deleteMessage(chatId:string, messageId:string) {
    await axios.get(`https://api.telegram.org/${process.env.BOT_TOKEN}/deleteMessage?chat_id=${chatId}&message_id=${messageId}`)

}