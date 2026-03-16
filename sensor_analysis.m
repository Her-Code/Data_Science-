clear;
n = 500;
time = 1:n;
temperature = 20 + randn(1, n) * 2;
fault_idx = [50, 150, 250, 350, 450];
temperature(fault_idx) = temperature(fault_idx) + 30;
fprintf('Mean: %.2f\n', mean(temperature));
fprintf('Std:  %.2f\n', std(temperature));
fprintf('Min:  %.2f\n', min(temperature));
fprintf('Max:  %.2f\n', max(temperature));

threshold = mean(temperature) + 3 * std(temperature);
anomalies = find(temperature > threshold);
fprintf('Threshold: %.2f\n', threshold);
fprintf('Anomalies found: %d\n', length(anomalies));
disp(anomalies);

figure('Visible', 'on');
plot(time, temperature, 'b-');
hold on;
yline(threshold, 'r--', 'Threshold');
scatter(anomalies, temperature(anomalies), 60, 'r', 'filled');
xlabel('Reading Number');
ylabel('Temperature (C)');
title('Sensor Data with Anomaly Detection');
legend('Temperature', 'Threshold', 'Anomalies');
grid on;
drawnow;