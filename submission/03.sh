# Create a SegWit address.
# Add funds to the address.
# Return only the Address
addr=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress "" bech32) && bitcoin-cli -regtest generatetoaddress 101 "$addr" >/dev/null && echo "$addr"