#
# nodes: 10, max conn: 4, send rate: 0.0, seed: 0.0
#
#
# 0 connecting to 5 at time 0.150065267528433
#
set tcp_(0) [$ns_ create-connection  TCP $node_(0) TCPSink $node_(5) 0]
$tcp_(0) set window_ 32
$tcp_(0) set packetSize_ 512
set ftp_(0) [$tcp_(0) attach-source FTP]
$ns_ at 0.0 "$ftp_(0) start"
#
# 0 connecting to 9 at time 0.874949559976784
#
set tcp_(1) [$ns_ create-connection  TCP $node_(0) TCPSink $node_(9) 0]
$tcp_(1) set window_ 32
$tcp_(1) set packetSize_ 512
set ftp_(1) [$tcp_(1) attach-source FTP]
$ns_ at 0.0 "$ftp_(1) start"
#
# 7 connecting to 3 at time 0.4185437953186
#
set tcp_(2) [$ns_ create-connection  TCP $node_(7) TCPSink $node_(3) 0]
$tcp_(2) set window_ 32
$tcp_(2) set packetSize_ 512
set ftp_(2) [$tcp_(2) attach-source FTP]
$ns_ at 0.0 "$ftp_(2) start"
#
# 7 connecting to 2 at time 1.54918982440103
#
set tcp_(3) [$ns_ create-connection  TCP $node_(7) TCPSink $node_(2) 0]
$tcp_(3) set window_ 32
$tcp_(3) set packetSize_ 512
set ftp_(3) [$tcp_(3) attach-source FTP]
$ns_ at 0.0 "$ftp_(3) start"
#
#Total sources/connections: 2/4
#
