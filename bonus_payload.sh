# Hex string for bob_to_alice_payload.bin
BOB_TO_ALICE_HEX="000108000604000102420a0a0a040A0A0A030000000000000A0A0A02"

# Use xxd to convert the hex string to a binary file
echo $BOB_TO_ALICE_HEX | xxd -r -p > bobtoalice.bin

# Hex string for alice_to_bob_payload.bin
ALICE_TO_BOB_HEX="000108000604000102420a0a0a040A0A0A020000000000000A0A0A03"

# Use xxd to convert the hex string to a binary file
echo $ALICE_TO_BOB_HEX | xxd -r -p > alicetobob.bin
