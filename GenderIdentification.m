clc;clear all;close all;

%% Replace 'your_audio_file.wav' with the actual filename and path of your audio file
[audio_data, fs] = audioread('G:\Telegram Desktop\WowShahnaz.m4a');
% Create a time vector with the same length as audio data
t = (0:length(audio_data)-1)/fs;

% Add the audio_data to a composite signal
composite_signal = audio_data;

sound(audio_data, fs);

%% Plot the time domain signal
figure(1);
plot(t,composite_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Time Domain Signal');

%% Plot the frequency domain signal
figure(2);
N = length(composite_signal);
X = abs(fft(composite_signal)/(fs/2));
f = (0:N-1)*fs/N;

stem(f,X);

xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('FULL Frequency Domain Signal');

% % Compute the Discrete Fourier Transform (DFT)
%  N = length(composite_signal);
%  f = (0:N-1)*fs/N;
% X = zeros(1, N);
% for k = 0:N-1
%     for m = 0:N-1
%         X(k+1) = X(k+1) + composite_signal(m+1) * exp(-1j * 2 * pi * k * m / N)*2/N;
%     end
% end
% % Compute the magnitude spectrum
% magnitude_spectrum = abs(X);
%  stem(f,magnitude_spectrum);

%% Find the maximum and minimum magnitude values in the FFT result for X
[max_mag_X, max_idx_X] = max(abs(X));
[min_mag_X, min_idx_X] = min(abs(X));
% min_mag_X = min(abs(X));
% min_idx_X = find(abs(X) == min_mag_X, 1);

max_freq_X = f(max_idx_X);
min_freq_X = f(min_idx_X);

disp(['Maximum Magnitude in FFT for X: ', num2str(max_mag_X)]);
disp(['Corresponding Frequency for Max Magnitude in X: ', num2str(max_freq_X), ' Hz']);
disp(['Minimum Magnitude in FFT for X: ', num2str(min_mag_X)]);
disp(['Corresponding Frequency for Min Magnitude in X: ', num2str(min_freq_X), ' Hz']);