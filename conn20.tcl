#
# nodes: 20, max conn: 8, send rate: 0.0, seed: 0.0
#
#
# 0 connecting to 19 at time 0.0
#
set tcp_(0) [$ns_ create-connection  TCP $node_(0) TCPSink $node_(19) 0]
$tcp_(0) set window_ 32
$tcp_(0) set packetSize_ 512
set ftp_(0) [$tcp_(0) attach-source FTP]
$ns_ at 0.0 "$ftp_(0) start"
#
# 10 connecting to 2 at time 98.118382551762451
#
set tcp_(1) [$ns_ create-connection  TCP $node_(10) TCPSink $node_(2) 0]
$tcp_(1) set window_ 32
$tcp_(1) set packetSize_ 512
set ftp_(1) [$tcp_(1) attach-source FTP]
$ns_ at 0.0 "$ftp_(1) start"
#
# 19 connecting to 12 at time 150.45958546477351
#
set tcp_(2) [$ns_ create-connection  TCP $node_(19) TCPSink $node_(12) 0]
$tcp_(2) set window_ 32
$tcp_(2) set packetSize_ 512
set ftp_(2) [$tcp_(2) attach-source FTP]
$ns_ at 0.0 "$ftp_(2) start"
#
# 6 connecting to 17 at time 10.477617769724512
#
set tcp_(3) [$ns_ create-connection  TCP $node_(6) TCPSink $node_(17) 0]
$tcp_(3) set window_ 32
$tcp_(3) set packetSize_ 512
set ftp_(3) [$tcp_(3) attach-source FTP]
$ns_ at 0.0 "$ftp_(3) start"
#
# 6 connecting to 18 at time 151.10334320510893
#
set tcp_(4) [$ns_ create-connection  TCP $node_(6) TCPSink $node_(18) 0]
$tcp_(4) set window_ 32
$tcp_(4) set packetSize_ 512
set ftp_(4) [$tcp_(4) attach-source FTP]
$ns_ at 0.0 "$ftp_(4) start"
#
# 17 connecting to 8 at time 4.0214295238356241
#
set tcp_(5) [$ns_ create-connection  TCP $node_(17) TCPSink $node_(8) 0]
$tcp_(5) set window_ 32
$tcp_(5) set packetSize_ 512
set ftp_(5) [$tcp_(5) attach-source FTP]
$ns_ at 0.0 "$ftp_(5) start"
#
# 19 connecting to 10 at time 70.674834871047565
#
set tcp_(6) [$ns_ create-connection  TCP $node_(19) TCPSink $node_(10) 0]
$tcp_(6) set window_ 32
$tcp_(6) set packetSize_ 512
set ftp_(6) [$tcp_(6) attach-source FTP]
$ns_ at 0.0 "$ftp_(6) start"
#
# 1 connecting to 15 at time 127.43074737835245
#
set tcp_(7) [$ns_ create-connection  TCP $node_(1) TCPSink $node_(15) 0]
$tcp_(7) set window_ 32
$tcp_(7) set packetSize_ 512
set ftp_(7) [$tcp_(7) attach-source FTP]
$ns_ at 0.0 "$ftp_(7) start"
#
#Total sources/connections: 6/8
#
