export ZIPNAME="log.txt"
export CHAT_ID=""
export BOT_API_KEY=""
curl https://bashupload.com/$largest --data-binary @$largest |
  while IFS= read -r line
  do
    curl -F chat_id="$CHAT_ID" -F document=@"$ZIPNAME" -F caption="$line" https://api.telegram.org/bot$BOT_API_KEY/sendDocument
  done
