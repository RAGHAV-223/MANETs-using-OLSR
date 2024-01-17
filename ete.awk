BEGIN { 
    sends = 0; 
    receives = 0; 
    routing_packets = 0; 
    end_to_end_delay = 0; 
    highest_packet_id = 0; 
}

{
    action = $1;

    if (action == "s" || action == "r") {
        # parse the time
        if ($2 == "-t") {
            time = $3;
        }
	
        # parse the packet_id
        if ($40 == "-Ii") {
            packet_id = $41;
        }

        # calculate the sent packets
        if (action == "s" && $19 == "MAC" && $35 == "tcp") {
            sends++;
        }

        # find the number of packets in the simulation
        if (packet_id > highest_packet_id)
            highest_packet_id = packet_id;
        # set the start time, only if it's not already set
        if (start_time[packet_id] == 0)
            start_time[packet_id] = time;
	
        # calculate the receives and end-end delay
        if (action == "r" && $19 == "MAC" && $35 == "tcp") {
            receives++;
            end_time[packet_id] = time;
        } else {
        	if(end_time[packet_id]<0)
            	{
            	end_time[packet_id] = -1;
            	}
        }
    }

    # calculate the routing packets
    if ((action == "r") && $19 == "RTR" && $35 == "OLSR") {
        routing_packets++;
    }
}

END {
    # calculate the packet duration for all the packets
    for (packet_id = 0; packet_id < highest_packet_id; packet_id++) {
       
        packet_duration = end_time[packet_id] - start_time[packet_id];
       	
        
        if (packet_duration > -1)
            end_to_end_delay = end_to_end_delay + packet_duration;
  	
    }
	print("End-to-End delay=",end_to_end_delay)
    # calculate the average end-end packet delay
    avg_end_to_end_delay = end_to_end_delay / receives;

    # calculate the packet delivery fraction
    pdfraction = (receives / sends) * 100;

    printf "tcp s:%d r:%d, r/s Ratio:%.4f, f:%d \n", sends, receives, pdfraction, routing_packets;
    printf "avg_end_to_end_delay %.4f\n", avg_end_to_end_delay;
}
