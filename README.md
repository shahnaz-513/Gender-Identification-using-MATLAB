# Gender-Identification-using-MATLAB 

This MATLAB project analyzes an audio file containing a human voice and estimates if the person is **male or female** based on their frequency components.  

It takes audio as input, analyzes the **time-domain** and **frequency-domain** signals, and records the **highest and lowest frequency magnitudes**.  
By testing a number of audio files one by one, we can establish general frequency ranges for male and female voices.   

## Features
- Reads audio input (like `.m4a`).  
- Plays back the audio for verification.  
- Plots time-domain signal   
- Plots frequency-domain spectrum (through FFT)  
- Extracts **maximum and minimum frequencies** from the frequency domain signal.  
- Can be used to build an experimental dataset of male vs. female voice frequency ranges.  

## Files
- `GenderIdentification.m` → MATLAB script attached in the repository 
- `audio_file.m4a` → Replace with desired audio sample

---

## How to Run
1. Open MATLAB.  
2. Update the script with the path of your audio file:  
   
   [audio_file, fs] = audioread('path_to_your_audio_file.m4a');
