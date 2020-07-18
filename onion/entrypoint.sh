chmod 700 -R /opt/tor/hs
tor -f torsocks.conf &

_term() { 
  kill -TERM $(jobs -p)
}
trap _term SIGTERM

#wait some time before trying to print the hostname
sleep 5 
cat /opt/tor/hs/hostname
wait $(jobs -p)