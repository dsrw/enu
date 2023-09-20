# Multiplayer (Experimental)

It's possible to run Enu as a server by setting the `listen_address` to
`0.0.0.0` in your [config file](config.html). Other players can then connect
to your server by putting your IP or hostname in the `connect_address` setting
in their config. This still has bugs, and performance isn't great. It's also
completely insecure (see below).

## Warning!

Enu's multiplayer is completely insecure! A bad actor could delete or steal your 
data by connecting to your Enu server, or if you connect to theirs. This will be 
fixed, but for now it's important to only connect with Enu players you trust, or 
to use a device with no important data.
