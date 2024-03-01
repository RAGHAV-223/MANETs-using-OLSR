# MANETs-using-OLSR
 The objective of this project is to implement the Optimized Link State Routing (OLSR) protocol in Mobile Ad Hoc Networks (MANETs) and conduct a comprehensive performance evaluation. The focus will be on understanding the OLSR protocol, implementing it using NS2, and analyzing its behavior in a simulated MANET environment.

## Features

- Implementation of OLSR routing protocol in Network Simulator 2 (NS-2).
- Exploration of OLSR protocol behavior in dynamic and resource-constrained MANET environments.
- Evaluation of performance metrics, including Packet Delivery Ratio (PDR), End-to-End Delay, and Routing Overhead.
- Script files for creating scenarios, generating trace files, and extracting performance metrics using awk.

## Files and Directories

- /tcl: NS-2 Tcl scripts for setting up scenarios and running simulations.
- /awk: Awk scripts for processing NS-2 trace files and extracting performance metrics.
- /tr: Directory to store simulation results.

## How to Use

1. Clone this repository to your local machine.
   bash
   git clone https://github.com/RAGHAV-223/MANETs-using-OLSR.git
   cd MANETs-using-OLSR

2. Open NS-2 scripts in the /tcl files to customize scenarios and parameters.

3. Run NS-2 simulations to generate trace files.
   bash
   ns script_file.tcl

4. Use awk scripts in the /awk directory to process trace files and extract metrics.
   bash
   awk -f extract_metrics.awk trace_file.tr

5. Explore the results in /tr files and analysis scenarios using awk files output.

## Contributors

- [Raghav Anthal](https://github.com/RAGHAV-223)
- [Preet Paul Sharma](https://github.com/NOBODY1819)
- [Aakash Sudan](https://github.com/AakashSudan)
- [Vanshak Chhabra](https://github.com/Vanshak77)
- [Amandeep Singh](https://github.com/Amandeep208)
