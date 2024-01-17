#
# nodes: 40, max conn: 16, send rate: 0.0, seed: 0.0
#
#
# 0 connecting to 1 at time 0.487228141393146
#
set tcp_(0) [$ns_ create-connection  TCP $node_(0) TCPSink $node_(1) 0]
$tcp_(0) set window_ 32
$tcp_(0) set packetSize_ 512
set ftp_(0) [$tcp_(0) attach-source FTP]
$ns_ at 0.0 "$ftp_(0) start"
#
# 1 connecting to 7 at time 0.05457090263002
#
set tcp_(1) [$ns_ create-connection  TCP $node_(1) TCPSink $node_(7) 0]
$tcp_(1) set window_ 32
$tcp_(1) set packetSize_ 512
set ftp_(1) [$tcp_(1) attach-source FTP]
$ns_ at 0.0 "$ftp_(1) start"
#
# 2 connecting to 13 at time 0.72594747958982
#
set tcp_(2) [$ns_ create-connection  TCP $node_(2) TCPSink $node_(13) 0]
$tcp_(2) set window_ 32
$tcp_(2) set packetSize_ 512
set ftp_(2) [$tcp_(2) attach-source FTP]
$ns_ at 0.0 "$ftp_(2) start"
#
# 12 connecting to 4 at time 0.110879829670715
#
set tcp_(3) [$ns_ create-connection  TCP $node_(12) TCPSink $node_(4) 0]
$tcp_(3) set window_ 32
$tcp_(3) set packetSize_ 512
set ftp_(3) [$tcp_(3) attach-source FTP]
$ns_ at 0.1 "$ftp_(3) start"
#
# 3 connecting to 34 at time 0.7698328847856422
#
set tcp_(4) [$ns_ create-connection  TCP $node_(3) TCPSink $node_(34) 0]
$tcp_(4) set window_ 32
$tcp_(4) set packetSize_ 512
set ftp_(4) [$tcp_(4) attach-source FTP]
$ns_ at 0.2 "$ftp_(4) start"
#
# 4 connecting to 15 at time 0.663532436202992
#
set tcp_(5) [$ns_ create-connection  TCP $node_(4) TCPSink $node_(15) 0]
$tcp_(5) set window_ 32
$tcp_(5) set packetSize_ 512
set ftp_(5) [$tcp_(5) attach-source FTP]
$ns_ at 0.2 "$ftp_(5) start"
#
# 24 connecting to 6 at time 0.63814799843269
#
set tcp_(6) [$ns_ create-connection  TCP $node_(24) TCPSink $node_(6) 0]
$tcp_(6) set window_ 32
$tcp_(6) set packetSize_ 512
set ftp_(6) [$tcp_(6) attach-source FTP]
$ns_ at 0.3 "$ftp_(6) start"
#
# 8 connecting to 19 at time 0.496465284608519
#
set tcp_(7) [$ns_ create-connection  TCP $node_(8) TCPSink $node_(19) 0]
$tcp_(7) set window_ 32
$tcp_(7) set packetSize_ 512
set ftp_(7) [$tcp_(7) attach-source FTP]
$ns_ at 0.4 "$ftp_(7) start"
#
# 18 connecting to 10 at time 0.93933320275477
#
set tcp_(8) [$ns_ create-connection  TCP $node_(18) TCPSink $node_(10) 0]
$tcp_(8) set window_ 32
$tcp_(8) set packetSize_ 512
set ftp_(8) [$tcp_(8) attach-source FTP]
$ns_ at 0.0 "$ftp_(8) start"
#
# 9 connecting to 0 at time 0.753858116806416
#
set tcp_(9) [$ns_ create-connection  TCP $node_(9) TCPSink $node_(0) 0]
$tcp_(9) set window_ 32
$tcp_(9) set packetSize_ 512
set ftp_(9) [$tcp_(9) attach-source FTP]
$ns_ at 0.0 "$ftp_(9) start"
#
# 9 connecting to 21 at time 0.315542042868003
#
set tcp_(10) [$ns_ create-connection  TCP $node_(9) TCPSink $node_(21) 0]
$tcp_(10) set window_ 32
$tcp_(10) set packetSize_ 512
set ftp_(10) [$tcp_(10) attach-source FTP]
$ns_ at 0.0 "$ftp_(10) start"
#
# 10 connecting to 11 at time 0.401488246583142
#
set tcp_(11) [$ns_ create-connection  TCP $node_(10) TCPSink $node_(11) 0]
$tcp_(11) set window_ 32
$tcp_(11) set packetSize_ 512
set ftp_(11) [$tcp_(11) attach-source FTP]
$ns_ at 0.0 "$ftp_(11) start"
#
# 19 connecting to 2 at time 0.35765306109454
#
set tcp_(12) [$ns_ create-connection  TCP $node_(19) TCPSink $node_(2) 0]
$tcp_(12) set window_ 32
$tcp_(12) set packetSize_ 512
set ftp_(12) [$tcp_(12) attach-source FTP]
$ns_ at 0.0 "$ftp_(12) start"
#
# 19 connecting to 21 at time 0.041267995276147
#
set tcp_(13) [$ns_ create-connection  TCP $node_(19) TCPSink $node_(21) 0]
$tcp_(13) set window_ 32
$tcp_(13) set packetSize_ 512
set ftp_(13) [$tcp_(13) attach-source FTP]
$ns_ at 0.0 "$ftp_(13) start"
#
# 25 connecting to 22 at time 0.204972871209009
#
set tcp_(14) [$ns_ create-connection  TCP $node_(25) TCPSink $node_(22) 0]
$tcp_(14) set window_ 32
$tcp_(14) set packetSize_ 512
set ftp_(14) [$tcp_(14) attach-source FTP]
$ns_ at 0.0 "$ftp_(14) start"
#
# 22 connecting to 23 at time 0.954695508794252
#
set tcp_(15) [$ns_ create-connection  TCP $node_(22) TCPSink $node_(23) 0]
$tcp_(15) set window_ 32
$tcp_(15) set packetSize_ 512
set ftp_(15) [$tcp_(15) attach-source FTP]
$ns_ at 0.0 "$ftp_(15) start"
#
#Total sources/connections: 11/16
#
