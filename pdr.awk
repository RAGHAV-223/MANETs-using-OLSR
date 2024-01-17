#packet Delivery Ratio
BEGIN {
	sendPkt =0
	recvPkt=0
	forwardPkt=0
	routingpkt=0
	totalpkt=0
	total_packets=0
}

{
packet=$19
event = $1
if(event =="s" && packet == "AGT") {
	sendPkt++;
}

if(event =="r" && packet == "AGT") {
	recvPkt++;
}

if(event =="f" && packet == "RTR") {
	forwardPkt++;
}

if( event =="r" && packet =="RTR"){
	routingpkt++;
}

# Process lines containing sent or received packets
if ($1=="s" || $1=="r") {
    packet_id = $41;  # Adjust the column based on your trace file format
	}
    # Check if it's a sent packet
    if ($1 == "s") {
        sent_time[packet_id] = $3;
    }

    # Check if it's a received packet
    if ($1 == "r" && sent_time[packet_id] != "") {
        received_time = $3;
        end_to_end_delay = received_time - sent_time[packet_id];

        # Accumulate delay for averaging, printing, or further analysis
        total_delay += end_to_end_delay;
        total_packets++;
    }
}

END {
	totalpkt = sendPkt + recvPkt + forwardPkt + routingpkt
	printf ("the sent packets are %d \n", sendPkt);
	printf ("the received packets are %d \n", recvPkt);
	printf ("the packet drops are %d \n", sendPkt-recvPkt);
	printf ("the forwarded packets are %d \n", forwardPkt);
	printf("the routing packets are %d \n",routingpkt);
	printf ("Packet Delivery Ratio is %f \n", (recvPkt/sendPkt));
	printf("Routing Overhead Percentage %f \n",(routingpkt/totalpkt));
	
}

