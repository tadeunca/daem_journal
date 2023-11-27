## Examples of the codes used in the manuscript On the impact of hardware-related events on the execution of real-time programs
## The scripts are made available to facilitate the replication of the work.


## event_monitoring.c
Example of Perf Event Open script in C language to monitor hardware events during program execution. 
The program monitored in this example is a simple loop, with monitoring of instruction and cycle events. 
Other events can be monitored following the same pattern.

## cig.c

Script in C for the cache-related interference generator (CIG) Code. 
The CIG is employed to interfere with the program under analysis. 
To do so, it is necessary to execute this program in the command prompt before initiating the execution of the analyzed program. 
The execution of the CIG is carried out through the command:

taskset --cpu-list

where it is necessary to specify the processor core designated for its execution.

## machine_learning.R

R script to model execution pace based on hardware events.
This process includes dividing the sample (`data.csv') into training and testing sets, with 75\% allocated to training and 25\% to testing.
The data is normalized by the number of instructions.
The ML-based model utilized in this example is Multiple Linear Regression (MLR).
The code returns the average error (AvgE) of the prediction as the output.




