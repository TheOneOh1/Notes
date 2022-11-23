# Telegram Chat Bot

- Open Telegram
- Search for @botfather and select the Verified Account
- Click Start > /newbot

- Provide name to your bot and give username to it, should be unique
- Copy the HTTP API

- To get the ID of your bot
```
-> search @myidbot 
-> search /getid
-> copy the ID  
```

- Install Notify from git repo on your machine (linux)

**Notify** : https://github.com/projectdiscovery/notify

- make sure to copy the binary from "~/go" and paste it in "/bin"

```
> cd ~/.config/

> cd notify 

> nano config.yaml OR nano provider-config.yaml

		Delete the entries and only add below :

		telegram:
  			- id: "tel"
    		telegram_api_key: "XXXXXXXXXXXX"
    		telegram_chat_id: "XXXXXXXX"
    		telegram_format: "{{data}}"

    save and exit

> echo "hello" | notify --silent

```

- You will get the message on your Telegram Bot
