# Data Science Projects - MATLAB

## Project 1: Sensor Anomaly Detector

### What is this project?
This project simulates a temperature sensor on an industrial 
machine and automatically detects when something goes wrong.

### Real World Scenario
Imagine you work in a factory. A machine records 500 temperature 
readings over time. Most readings are normal — around 20°C. 
But 5 times, the machine overheated and spiked to around 50°C. 
This code automatically finds those 5 dangerous moments.

### How it works
1. **Simulate the sensor** — generates 500 random temperature 
   readings hovering around 20°C, like a real sensor
2. **Inject faults** — spikes 5 readings by +30°C to simulate 
   machine overheating
3. **Calculate statistics** — finds the mean and standard 
   deviation of all readings
4. **Set a threshold** — uses the 3-sigma rule (anything more 
   than 3 standard deviations above the mean is suspicious)
5. **Detect anomalies** — automatically finds every reading 
   above the threshold
6. **Visualise** — plots a chart with all readings, the 
   threshold line, and red dots on every anomaly

### Results
- Anomalies detected: 5 out of 500 readings
- False alarms: 0
- Accuracy: 100%

### Skills used
- MATLAB
- Statistical analysis (3-sigma rule)
- Data visualisation
- Anomaly detection

### How to run
1. Open MATLAB or MATLAB Online
2. Run sensor_analysis.m
3. Check the Command Window for stats
4. View the chart in the Figure window
