# Telelog 📩

![sample](assets/sample.png)

A simple interface to send message of files to telegram.

## Installation 🚀

```bash
wget https://raw.githubusercontent.com/jd-apprentice/telelog/master/lib/telelog
chmod +x telelog
mv telelog /usr/local/bin
```

## Usage 🛠

```bash
telelog

Usage: telelog [flags] [content]
Flags: 
       --message, -m: Send a message to the channel.
       --file, -f: Send a file to the channel.
       --help, -h: Show this help message.

Example: telelog --message 'Hello, World!'
Example: telelog --file /path/to/file
Example: telelog --message 'Hello, World!' --file /path/to/file
```

## TODO 📝

- [ ] Add support for zsh, fish, etc.
- [ ] Add support for multiple files.
- [ ] Multiple ways to handle token and chat_id.