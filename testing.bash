#!/bin/bash

ymaCsrf="lmzkbzeeoFEA0KwdKjbDpFgASDE="
ymaCookie="osVisit=5276309d-16bd-4683-8bd7-b1ce14f05a50; DEVICES_TYPE=tablet; DEVICE_BROWSER=undefined; DEVICE_ORIENTATION=portrait; DEVICE_OS=osx; RT=s=1699290401490&r=https%3A%2F%2Fsimattendance.simge.edu.sg%2FIdP%2FSSO.aspx; nr1Users=lid%3dZ0FHkff2m9JB%2fQ3TFxMXlw%3d%3d776hLF2jC%2fTtxKMwmcUeaw%3d%3d%3btuu%3d63834887500%3bexp%3d63834973600%3brhs%3dm%2fSd9xOo%2b2sBwtyIEkJq7R3Pk5w%3d%3bhmc%3dRP0MuYw2A76XgH3g4lkTZp7dg9U%3d; nr2Users=crf%3dlmzkbzeeoFEA0KwdKjbDpFgASDE%3d%3buid%3d75302%3bunm%3dEMA001%40MYMAIL.SIM.EDU.SG; osVisitor=a323d524-1aab-4fe9-86df-655d7b7ddbf5"
wloCsrf="mnfaSorzmzGNjeTqEG1BH0CJGKg="
wloCookie="osVisit=c641dbae-e2a8-4524-a12c-227c6b32d63f; DEVICES_TYPE=tablet; DEVICE_BROWSER=undefined; DEVICE_ORIENTATION=portrait; DEVICE_OS=osx; RT=s=1699626140783&r=https%3A%2F%2Fsimattendance.simge.edu.sg%2FIdP%2FSSO.aspx; nr1Users=lid%3dmEOUOmKAkRt0%2bvZC2L4eaw%3d%3dZBb03RwY5bulANPU3vkSSQ%3d%3d%3btuu%3d63835223239%3bexp%3d63835309339%3brhs%3dbg%2fkAJC9L0eJdPWaU5yyYIuXTKI%3d%3bhmc%3dyBLYicS7u2dHv7XeYBHa44dTrh8%3d; nr2Users=crf%3dmnfaSorzmzGNjeTqEG1BH0CJGKg%3d%3buid%3d65931%3bunm%3dwaiymt001%40mymail.sim.edu.sg; osVisitor=9b78a543-e22f-49f0-98a4-f600b615e4fe"
ltcCsrf="7Alyh34YeNFy4r9WhYLZDQ2Hbqc="
ltcCookie="osVisit=7dad0267-4978-458f-bab1-429ecfe14c86; DEVICES_TYPE=tablet; DEVICE_BROWSER=undefined; DEVICE_ORIENTATION=portrait; DEVICE_OS=osx; RT=s=1699626315661&r=https%3A%2F%2Fsimattendance.simge.edu.sg%2FIdP%2FSSO.aspx; nr1Users=lid%3dNm7Kmn3YFASarEyd7wM4SQ%3d%3dUNlugiiiTPAMnbtc7CfQpA%3d%3d%3btuu%3d63835223415%3bexp%3d63835309515%3brhs%3dyCo1fOkgIjFpKkhthA3FYYSzETc%3d%3bhmc%3dPNfbvkIUtBUAxU0I6glKHmH8slQ%3d; nr2Users=crf%3d7Alyh34YeNFy4r9WhYLZDQ2Hbqc%3d%3buid%3d70959%3bunm%3dzeng006%40mymail.sim.edu.sg; osVisitor=c62c3360-940e-4b77-8008-0a053b02e214"
deaCsrf="ee6q69DEzcrSrWsQ5Xys+ybU2lE="
deaCookie="osVisit=617ba44f-cfa1-4a34-bcb9-966b5376ab22; DEVICES_TYPE=tablet; DEVICE_BROWSER=undefined; DEVICE_ORIENTATION=portrait; DEVICE_OS=osx; RT=s=1699677347511&r=https%3A%2F%2Fsimattendance.simge.edu.sg%2FIdP%2FSSO.aspx; nr1Users=lid%3dqBPDDuXqoC6xaTLYJ58TJA%3d%3d9Yk87lNAwwfCA8jYMkJdug%3d%3d%3btuu%3d63835274446%3bexp%3d63835360546%3brhs%3d%2brO9iKKx4APf6%2bDvSmiig%2bobTpU%3d%3bhmc%3dtOwVjbENukku5AVW9p8eq9utzkw%3d; nr2Users=crf%3dee6q69DEzcrSrWsQ5Xys%2bybU2lE%3d%3buid%3d95688%3bunm%3dmatjokro001%40mymail.sim.edu.sg; osVisitor=51f20a8e-de55-4519-b9a2-1c1567ed58cc"

search_string="MyBookings"

resp=$(curl --location 'https://simattendance.simge.edu.sg/StudentApp/screenservices/StudentApp/Room/RoomBooking/DataActionGetBookings' \
--header 'Host: simattendance.simge.edu.sg' \
--header 'Accept: application/json' \
--header 'outsystems-device-uuid: 831A960E-7232-524F-9AA9-9E64183C279F' \
--header 'Connection: keep-alive' \
--header 'User-Agent: Mozilla/5.0 (iPad; CPU OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 OutSystemsApp v.1.4' \
--header "x-csrftoken: $ymaCsrf" \
--header 'Accept-Language: en-US,en;q=0.9' \
--header 'Content-Type: application/json; charset=UTF-8' \
--header "Cookie: $ymaCookie" \
--data '{
    "versionInfo": {
        "moduleVersion": "M2la1PDCPjJ3mM15n99IEw",
        "apiVersion": "P_Cxqh6fiTHn7NdqU4__6A"
    },
    "viewName": "Room.RoomBooking",
    "screenData": {
        "variables": {
            "SelectedDate": "1900-01-01",
            "SelectedSlot": {
                "RoomTimeSlot": {
                    "StartTime": "00:00:00",
                    "EndTime": "00:00:00"
                },
                "RoomId": "0",
                "RoomTimeSlotVersionId": "0"
            },
            "IsScreenLoading": true,
            "IsButtonLoading": false,
            "SelectedTab": 0,
            "_selectedTabInDataFetchStatus": 1
        }
    }
}')

if [[ $resp == *"$search_string"* ]]; then
    echo "Bojeun : ✅ Success."
else
    echo "Bojeun : ❌ Failed."
fi

resp=$(curl --location 'https://simattendance.simge.edu.sg/StudentApp/screenservices/StudentApp/Room/RoomBooking/DataActionGetBookings' \
--header 'Host: simattendance.simge.edu.sg' \
--header 'Accept: application/json' \
--header 'outsystems-device-uuid: 831A960E-7232-524F-9AA9-9E64183C279F' \
--header 'Connection: keep-alive' \
--header 'User-Agent: Mozilla/5.0 (iPad; CPU OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 OutSystemsApp v.1.4' \
--header "x-csrftoken: $deaCsrf" \
--header 'Accept-Language: en-US,en;q=0.9' \
--header 'Content-Type: application/json; charset=UTF-8' \
--header "Cookie: $deaCookie" \
--data '{
    "versionInfo": {
        "moduleVersion": "M2la1PDCPjJ3mM15n99IEw",
        "apiVersion": "P_Cxqh6fiTHn7NdqU4__6A"
    },
    "viewName": "Room.RoomBooking",
    "screenData": {
        "variables": {
            "SelectedDate": "1900-01-01",
            "SelectedSlot": {
                "RoomTimeSlot": {
                    "StartTime": "00:00:00",
                    "EndTime": "00:00:00"
                },
                "RoomId": "0",
                "RoomTimeSlotVersionId": "0"
            },
            "IsScreenLoading": true,
            "IsButtonLoading": false,
            "SelectedTab": 0,
            "_selectedTabInDataFetchStatus": 1
        }
    }
}')

if [[ $resp == *"$search_string"* ]]; then
    echo "Dea : ✅ Success."
else
    echo "Dea : ❌ Failed."
fi

resp=$(curl --location 'https://simattendance.simge.edu.sg/StudentApp/screenservices/StudentApp/Room/RoomBooking/DataActionGetBookings' \
--header 'Host: simattendance.simge.edu.sg' \
--header 'Accept: application/json' \
--header 'outsystems-device-uuid: 831A960E-7232-524F-9AA9-9E64183C279F' \
--header 'Connection: keep-alive' \
--header 'User-Agent: Mozilla/5.0 (iPad; CPU OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 OutSystemsApp v.1.4' \
--header "x-csrftoken: $wloCsrf" \
--header 'Accept-Language: en-US,en;q=0.9' \
--header 'Content-Type: application/json; charset=UTF-8' \
--header "Cookie: $wloCookie" \
--data '{
    "versionInfo": {
        "moduleVersion": "M2la1PDCPjJ3mM15n99IEw",
        "apiVersion": "P_Cxqh6fiTHn7NdqU4__6A"
    },
    "viewName": "Room.RoomBooking",
    "screenData": {
        "variables": {
            "SelectedDate": "1900-01-01",
            "SelectedSlot": {
                "RoomTimeSlot": {
                    "StartTime": "00:00:00",
                    "EndTime": "00:00:00"
                },
                "RoomId": "0",
                "RoomTimeSlotVersionId": "0"
            },
            "IsScreenLoading": true,
            "IsButtonLoading": false,
            "SelectedTab": 0,
            "_selectedTabInDataFetchStatus": 1
        }
    }
}')

if [[ $resp == *"$search_string"* ]]; then
    echo "Willow : ✅ Success."
else
    echo "Willow : ❌ Failed."
fi

resp=$(curl --location 'https://simattendance.simge.edu.sg/StudentApp/screenservices/StudentApp/Room/RoomBooking/DataActionGetBookings' \
--header 'Host: simattendance.simge.edu.sg' \
--header 'Accept: application/json' \
--header 'outsystems-device-uuid: 831A960E-7232-524F-9AA9-9E64183C279F' \
--header 'Connection: keep-alive' \
--header 'User-Agent: Mozilla/5.0 (iPad; CPU OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 OutSystemsApp v.1.4' \
--header "x-csrftoken: $ltcCsrf" \
--header 'Accept-Language: en-US,en;q=0.9' \
--header 'Content-Type: application/json; charset=UTF-8' \
--header "Cookie: $ltcCookie" \
--data '{
    "versionInfo": {
        "moduleVersion": "M2la1PDCPjJ3mM15n99IEw",
        "apiVersion": "P_Cxqh6fiTHn7NdqU4__6A"
    },
    "viewName": "Room.RoomBooking",
    "screenData": {
        "variables": {
            "SelectedDate": "1900-01-01",
            "SelectedSlot": {
                "RoomTimeSlot": {
                    "StartTime": "00:00:00",
                    "EndTime": "00:00:00"
                },
                "RoomId": "0",
                "RoomTimeSlotVersionId": "0"
            },
            "IsScreenLoading": true,
            "IsButtonLoading": false,
            "SelectedTab": 0,
            "_selectedTabInDataFetchStatus": 1
        }
    }
}')

if [[ $resp == *"$search_string"* ]]; then
    echo "Laeticia : ✅ Success."
else
    echo "Laeticia : ❌ Failed."
fi


