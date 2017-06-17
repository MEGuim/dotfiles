#!/usr/bin/python

import imaplib
obj = imaplib.IMAP4_SSL('imap-mail.outlook.com',993)
obj.login('miguelguimaraess@hotmail.com','55fqGbQPuvAkKeg3') # write your email and password
obj.select()
print(len(obj.search(None, 'UnSeen')[1][0].split()))
