#
# nodes: 50, max conn: 8, send rate: 0.0, seed: 0.0
#
#
# 0 connecting to 10 at time 21.114096576866739
#
set tcp_(0) [$ns_ create-connection  TCP $node_(0) TCPSink $node_(10) 0]
$tcp_(0) set window_ 32
$tcp_(0) set packetSize_ 512
set ftp_(0) [$tcp_(0) attach-source FTP]
$ns_ at 0.0 "$ftp_(0) start"
#
# 20 connecting to 32 at time 9.2808986684684172
#
set tcp_(1) [$ns_ create-connection  TCP $node_(20) TCPSink $node_(32) 0]
$tcp_(1) set window_ 32
$tcp_(1) set packetSize_ 512
set ftp_(1) [$tcp_(1) attach-source FTP]
$ns_ at 0.0 "$ftp_(1) start"
#
# 41 connecting to 12 at time 64.173125514841232
#
set tcp_(2) [$ns_ create-connection  TCP $node_(41) TCPSink $node_(12) 0]
$tcp_(2) set window_ 32
$tcp_(2) set packetSize_ 512
set ftp_(2) [$tcp_(2) attach-source FTP]
$ns_ at 0.0 "$ftp_(2) start"
#
# 11 connecting to 33 at time 112.09678407390452
#
set tcp_(3) [$ns_ create-connection  TCP $node_(11) TCPSink $node_(23) 0]
$tcp_(3) set window_ 32
$tcp_(3) set packetSize_ 512
set ftp_(3) [$tcp_(3) attach-source FTP]
$ns_ at 0.0 "$ftp_(3) start"
#
# 28 connecting to 3 at time 58.420927365506508
#
set tcp_(4) [$ns_ create-connection  TCP $node_(28) TCPSink $node_(3) 0]
$tcp_(4) set window_ 32
$tcp_(4) set packetSize_ 512
set ftp_(4) [$tcp_(4) attach-source FTP]
$ns_ at 0.0 "$ftp_(4) start"
#
# 44 connecting to 5 at time 116.09581296150378
#
set tcp_(5) [$ns_ create-connection  TCP $node_(44) TCPSink $node_(5) 0]
$tcp_(5) set window_ 32
$tcp_(5) set packetSize_ 512
set ftp_(5) [$tcp_(5) attach-source FTP]
$ns_ at 0.0 "$ftp_(5) start"
#
# 35 connecting to 16 at time 164.80242543146127
#
set tcp_(6) [$ns_ create-connection  TCP $node_(35) TCPSink $node_(16) 0]
$tcp_(6) set window_ 32
$tcp_(6) set packetSize_ 512
set ftp_(6) [$tcp_(6) attach-source FTP]
$ns_ at 0.0 "$ftp_(6) start"
#
# 7 connecting to 28 at time 73.065022990603481
#
set tcp_(7) [$ns_ create-connection  TCP $node_(7) TCPSink $node_(28) 0]
$tcp_(7) set window_ 32
$tcp_(7) set packetSize_ 512
set ftp_(7) [$tcp_(7) attach-source FTP]
$ns_ at 0.0 "$ftp_(7) start"
#
#Total sources/connections: 6/8
#
