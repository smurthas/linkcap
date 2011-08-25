LinkCap takes a screenshot, copies it to your Public Dropbox folder, bit.ly's the link and copies it to you clipboard so you can quickly paste it into an email, IM, etc.

Works on OS X (10.4+, probably, but 10.6+ definitely - anyone want to test it on older systems??)

## Installation

First, you need to find out your Dropbox user ID.

1. Go to [your Dropbox public page](https://www.dropbox.com/home#/Public:::).
2. Click on the blue arrow on the right side of one of the files and select "Copy Public Link"
3. The URL will looks something like this:
    http://dl.dropbox.com/u/dropbox-user-id/filename-name
4. Copy the Dropbox user id, and paste it into your ~/.profile like so:

```bash
echo "export DB_USER=your-dropbox-user-id" >> ~/.profile
```

replacing "your-dropbox-user-id" with the number you copied from the public URL.

Next, copy the Automator Workflow to your Services directory:

```bash
cp -r LinkCap.workflow ~/Library/Services/LinkCap.workflow
```

Now, if you'd like, you can add a keyboard shortcut. 

1. Open System Preferences > Keyboard
2. Click on "Services" in the left selector
3. In the "General" section, double click on the right side of the LinkCap line to edit the key binding
4. Press and hold Cmd+Shift+1, or whatever you want to bind it to.


### Optional bit.ly integration

The workflow will also that the dropbox public link and create a bit.ly short url if you set BITLY\_API\_KEY and BITLY_LOGIN in your ~/.profile. 

1. Find your [bitly api key and login](https://bitly.com/a/your_api_key/).
2. Set the value in your ~/.profile the same way you did with you Dropbox user id:

```bash
echo "export BITLY_API_KEY=your-bitly-api-key" >> ~/.profile
echo "export BITLY_LOGIN=your-bitly-login" >> ~/.profile
```

Again, replacing the values where appropriate.

Cool!