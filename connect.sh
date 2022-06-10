input="/tmp/hackedPasswd.txt"

# read stored password and ignore EOF
eof=
while [ -z "$eof" ]; 
do
    read line && psw=$line || eof=true
    echo $line
done < "$input"


#user and password
echo $USER : $psw

echo $psw | sudo -S ls

sudo -u postgres psql

