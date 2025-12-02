#hex value for bobtoalice.bin
bob_to_alice_payload="000108000604000202420a0a0a040a0a0a0302420a0a0a020a0a0a02"

#convert the string to a binary 
echo $bob_to_alice_payload | xxd -r -p > bobtoalice.bin

#hex value for alicetobob.bin
alice_to_bob_payload="000108000604000202420a0a0a040a0a0a0202420a0a0a030a0a0a03"

#convert the string to a binary 
echo $alice_to_bob_payload | xxd -r -p > alicetobob.bin
