#!/bin/bash
#
/usr/bin/expect<<EOF

spawn firmwarepasswd -setpasswd
expect {

    "Enter password:" {
        send "xxxxxxxxxxx\r"
        exp_continue
    }
    "Enter new password:" {
        send "yyyyyyyyyyy\r"
        exp_continue
    }
    "Re-enter new password:" {
        send "yyyyyyyyyyy\r"
        exp_continue
    }
}
expect eof
EOF

echo "Complete"

#echo "Now sleep"