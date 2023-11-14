
function getNextFourteenDays() {
    let dates: string[] = [];
    let currentDate = new Date();

    for (let i = 0; i < 16; i++) {
        // Create a new Date object for each day
        let nextDate = new Date(currentDate);
        // Add the day offset
        nextDate.setDate(currentDate.getDate() + i);
        // Add the date to the array
        dates.push(nextDate.toISOString().split('T')[0]);
    }

    return dates;
}


function transform1DTo2D(array:any[], columns:any) {
    let result:any[] = [];
    for (let i = 0; i < array.length; i += columns) {
        const row  = array.slice(i, i + columns);
        result.push(row);
    }
    return result;
}



export function get14DayInlineKeyboard() {
    let upcomingDates = getNextFourteenDays();
    const keyboardFormat = upcomingDates.map((d) => {
        return {
                text:d,
                callback_data:d
            }
    })
    
    return {
        inline_keyboard:transform1DTo2D(keyboardFormat,3)
    }
}
