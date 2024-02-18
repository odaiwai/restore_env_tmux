# README

Sometimes, if you're in a long term SSH session to another computer, the connection details can change.

Tunnelling X11 over the SSH connection is normally set up to use the first login, 
but, if you disconnect and reconnect, the details of the connection can change.
This will break X11 forwarding, and it will be necesary to refresh the IP and
port numbers for X11 forwarding to work.

This utility takes the external environment from tmux and reapplies them to the
current session.
