#===================================
#     Simulation parameters setup
#===================================
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(wlan0)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     50                         ;# number of mobilenodes
set val(rp)     OLSR                      ;# routing protocol
set val(x)      800                      ;# X dimension of topography
set val(y)      800                     ;# Y dimension of topography
set val(stop)   15.0                         ;# time of simulation end
set val(node)   50			;# node value 50


# ---------------------BEGIN OLSR EXTENSIONS----------------------------

Agent/OLSR set mpr_algorithm_               1    ;# 1 = RFC 3626, 2 = MPRR1, 3 = MPRR2, 4 = QOLSR, 5 = OLSRD
Agent/OLSR set routing_algorithm_           1    ;# OLSR Routing = 1 e Dijkstra = 2;
Agent/OLSR set link_quality_                1    ;# OLSR -> Hop-count = 1, ETX = 2, ML = 3 e MD = true 
Agent/OLSR set link_delay_                 false ;# If true LD will be used
Agent/OLSR set c_alpha_             	    0.4  ;# Smoothing Factor OLSR-MD only.
Agent/OLSR set willingness_         	    3    ;# Default (as published in RFC 3626)
Agent/OLSR set tc_ival_                     5    ;# Default (as published in RFC 3626)
Agent/OLSR set hello_ival_            	    2    ;# Default (as published in RFC 3626)

#==================NIC IEEE 802.11b=====================================#
#========================== HR-DSSS (IEEE802.11b) ======================#
   $val(mac)       set SlotTime_            0.000020        ;# 20us
   $val(mac)       set SIFS_                0.000010        ;# 10us
   $val(mac)       set DIFS_                0.000050        ;# 50us
   $val(mac)       set CWMin_              31               ;# Min Backoff [0, CW]
   $val(mac)       set CWMax_          	 1023               ;#Max Backoff [0, CW]
   $val(mac)       set PreambleLength_    144               ;# 144 bit
   $val(mac)       set PLCPHeaderLength_   48               ;# 48 bits MAC_Address
   $val(mac)       set PLCPDataRate_        1.0e6           ;# 1Mbps
   $val(mac)       set dataRate_           11.0e6           ;# 11Mbps
   $val(wlan0)     set bandwidth_          11.0e6           ;# Bandwidth
   $val(mac)       set basicRate_           1.0e6           ;# 1Mbps
   $val(wlan0)     set freq_                2.4e9           ;# 2.4 GHz 802.11b.
   $val(wlan0)     set Pt_                 3.3962527e-2     ;# Power TX.
   $val(wlan0)     set RXThresh_            6.309573e-12    ;# RX Threshold. 
   $val(wlan0)     set CSThresh_            6.309573e-12    ;# Carrie Sense Threshold. 
   $val(wlan0)     set RTSThreshold_     3000               ;# Use RTS/CTS for packets larger 3000 bytes 

#===================================
#        Initialization        
#===================================
#Create a ns simulator
set ns_ [new Simulator]
$ns_ color 1 blue
$ns_ color 2 red
$ns_ color 3 green

#Setup topography object
set topo [new Topography]
$topo load_flatgrid $val(x) $val(y)

#Open the NS trace file
set tracefile [open olsr5.tr w]
$ns_ trace-all $tracefile
$ns_ use-newtrace

# "GOD (General Operations Director)"
set god_ [create-god $val(node)]

#Open the NAM trace file
set namfile [open olsr5.nam w]
$ns_ namtrace-all $namfile
$ns_ namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];#Create wireless channel



#===================================
#     Mobile node parameter setup
#===================================
$ns_ node-config -adhocRouting  $val(rp) \
                -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(wlan0) \
                -channel       $chan \
                -topoInstance  $topo \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace OFF \
                -wiredRouting OFF

#===================================
#        Nodes Definition        
#===================================
#Create 50 nodes
# Wireless
for {set i 0} {$i < $val(node)} {incr i} {
    set node_($i) [$ns_ node]
    $node_($i) color green
    $ns_ at 0.0 "$node_($i) label WN_$i"
    $node_($i) random-motion 0 ;# disable
}

# Putting random Mobility to Nodes
puts "Starting random waypoint...(attaching mobility.tcl)"
source "mob50.tcl"

# NAM Position
for {set n 0} {$n < $val(node) } {incr n} {
 $ns_ initial_node_pos $node_($n) 20
}

#===================================
#        Agents Definition        
#===================================

puts "Loading connections........."
source "conn50.tcl"


#===================================
#        Termination        
#===================================
#Define a 'finish' procedure
proc finish {} {
    global ns_ tracefile namfile
    $ns_ flush-trace
    close $tracefile
    close $namfile
    exec nam olsr5.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns_ at $val(stop) "\$node_($i) reset"
}
$ns_ at $val(stop) "$ns_ nam-end-wireless $val(stop)"
$ns_ at $val(stop) "finish"
$ns_ at $val(stop) "puts \"done\" ; $ns_ halt"
$ns_ run
