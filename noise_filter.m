clear;
Fs = 500;
t = 0:1/Fs:2-1/Fs;
clean = sin(2*pi*10*t);
noise = 0.5*sin(2*pi*100*t) + 0.3*randn(size(t));
noisy = clean + noise;

% Design a low-pass filter
cutoff = 30;           % we want to keep everything below 30Hz
Wn = cutoff / (Fs/2); % normalise to Nyquist frequency
[b, a] = butter(4, Wn, 'low');

% Apply the filter
filtered = filtfilt(b, a, noisy);

figure('Visible', 'on');
subplot(3,1,1);
plot(t, clean);
title('Original Clean Signal');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t, noisy);
title('Noisy Signal');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t, filtered);
title('After Filtering');
ylabel('Amplitude');
xlabel('Time (seconds)');
grid on;

drawnow;