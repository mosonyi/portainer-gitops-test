#!/bin/sh

SERVER="smtp"
#FROM="sender@company.com"
#TO_EMAIL="recepient@company.com"
FROM=$TO_EMAIL
SUBJ=$NODENAME
MESSAGE="Node restarted"
CHARSET="utf-8"

echo "Wait 10 sec before sending the email"
sleep 10

sendemail -f $FROM -t $TO_EMAIL -u $SUBJ -s $SERVER -m $MESSAGE -v -o message-charset=$CHARSET

echo "Restarted at: "
date

while true; do sleep 10; done