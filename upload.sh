export ZIPNAME=$largest
curl -F chat_id="$CHAT_ID" -F document=@"$ZIPNAME" -F caption="Build completed for device" https://api.telegram.org/bot$BOT_API_KEY/sendDocument
curl -F chat_id="$CHAT_ID" -F document=@"$HOME/cygnus/log.txt" -F caption="Build Log" https://api.telegram.org/bot$BOT_API_KEY/sendDocument
