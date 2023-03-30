#!/bin/bash

set -x

## define variable ##
#  "website"          variable is that which website will be check
#  "slackChannelUrl"  variable is that which slack url will be used for this alert
#  "threshold"        variable is that load exceeds threshold
#  "loadTime"         variable is that website load time

website='www.namecheap.com'
slackChannelUrl='https://hooks.slack.com/services/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'
threshold=5

# finds load time via curl command and assign to loadTime variable. bash doesnt understand float point. So ı used only integer part and removed fraction by cut command. 

loadTime=$(curl -s -o /dev/null -w "%{time_total}\n" $website | cut -d . -f 1)

# if loadTime is greater than threshold which defined above. it send to an alert to slack channel.

if [ $loadTime -gt $threshold ] ; then

    curl -S -X POST --data "payload={\"text\": \" $website load time is greater than $threshold second. Load time: $loadTime. Please Check it !!! <!channel> \",\"username\":\"Website Load Time Alert\",\"icon_emoji\":\"${SLACK_ICON}\"}" $slackChannelUrl

fi
