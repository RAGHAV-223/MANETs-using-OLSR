#
# nodes: 30, max conn: 12, send rate: 0.0, seed: 0.0
#
#
# 1 connecting to 12 at time 175.42526269118548
#
set tcp_(0) [$ns_ create-connection  TCP $node_(1) TCPSink $node_(12) 0]
$tcp_(0) set window_ 32
$tcp_(0) set packetSize_ 512
set ftp_(0) [$tcp_(0) attach-source FTP]
$ns_ at 0.0 "$ftp_(0) start"
#
# 11 connecting to 3 at time 32.336777361266677
#
set tcp_(1) [$ns_ create-connection  TCP $node_(11) TCPSink $node_(3) 0]
$tcp_(1) set window_ 32
$tcp_(1) set packetSize_ 512
set ftp_(1) [$tcp_(1) attach-source FTP]
$ns_ at 0.0 "$ftp_(1) start"
#
# 2 connecting to 23 at time 53.661364146350586
#
set tcp_(2) [$ns_ create-connection  TCP $node_(2) TCPSink $node_(23) 0]
$tcp_(2) set window_ 32
$tcp_(2) set packetSize_ 512
set ftp_(2) [$tcp_(2) attach-source FTP]
$ns_ at 0.0 "$ftp_(2) start"
#
# 12 connecting to 4 at time 168.05090811478482
#
set tcp_(3) [$ns_ create-connection  TCP $node_(12) TCPSink $node_(4) 0]
$tcp_(3) set window_ 32
$tcp_(3) set packetSize_ 512
set ftp_(3) [$tcp_(3) attach-source FTP]
$ns_ at 0.0 "$ftp_(3) start"
#
# 7 connecting to 28 at time 49.683417589256266
#
set tcp_(4) [$ns_ create-connection  TCP $node_(7) TCPSink $node_(28) 0]
$tcp_(4) set window_ 32
$tcp_(4) set packetSize_ 512
set ftp_(4) [$tcp_(4) attach-source FTP]
$ns_ at 0.0 "$ftp_(4) start"
#
# 27 connecting to 9 at time 143.68975562215306
#
set tcp_(5) [$ns_ create-connection  TCP $node_(27) TCPSink $node_(9) 0]
$tcp_(5) set window_ 32
$tcp_(5) set packetSize_ 512
set ftp_(5) [$tcp_(5) attach-source FTP]
$ns_ at 0.0 "$ftp_(5) start"
#
# 8 connecting to 19 at time 39.413483682746758
#
set tcp_(6) [$ns_ create-connection  TCP $node_(8) TCPSink $node_(19) 0]
$tcp_(6) set window_ 32
$tcp_(6) set packetSize_ 512
set ftp_(6) [$tcp_(6) attach-source FTP]
$ns_ at 0.0 "$ftp_(6) start"
#
# 0 connecting to 10 at time 25.692027558429182
#
set tcp_(7) [$ns_ create-connection  TCP $node_(0) TCPSink $node_(10) 0]
$tcp_(7) set window_ 32
$tcp_(7) set packetSize_ 512
set ftp_(7) [$tcp_(7) attach-source FTP]
$ns_ at 0.0 "$ftp_(7) start"
#
# 1 connecting to 13 at time 158.35639571694489
#
set tcp_(8) [$ns_ create-connection  TCP $node_(1) TCPSink $node_(13) 0]
$tcp_(8) set window_ 32
$tcp_(8) set packetSize_ 512
set ftp_(8) [$tcp_(8) attach-source FTP]
$ns_ at 0.0 "$ftp_(8) start"
#
# 22 connecting to 14 at time 37.183114735960544
#
set tcp_(9) [$ns_ create-connection  TCP $node_(22) TCPSink $node_(14) 0]
$tcp_(9) set window_ 32
$tcp_(9) set packetSize_ 512
set ftp_(9) [$tcp_(9) attach-source FTP]
$ns_ at 0.0 "$ftp_(9) start"
#
# 13 connecting to 21 at time 57.719123856033718
#
set tcp_(10) [$ns_ create-connection  TCP $node_(13) TCPSink $node_(21) 0]
$tcp_(10) set window_ 32
$tcp_(10) set packetSize_ 512
set ftp_(10) [$tcp_(10) attach-source FTP]
$ns_ at 0.0 "$ftp_(10) start"
#
# 23 connecting to 5 at time 176.78100233747671
#
set tcp_(11) [$ns_ create-connection  TCP $node_(23) TCPSink $node_(5) 0]
$tcp_(11) set window_ 32
$tcp_(11) set packetSize_ 512
set ftp_(11) [$tcp_(11) attach-source FTP]
$ns_ at 0.0 "$ftp_(11) start"
#
#Total sources/connections: 6/12
#
