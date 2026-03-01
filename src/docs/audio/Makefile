

audio: clean
	export FILENAME=hustle-bronze-1-7; cat ~/dev/dance/src/docs/audio/$$FILENAME.txt; \
	  cd ~/src/piper-tts/piper && cat ~/dev/dance/src/docs/audio/$$FILENAME.txt \
	  | ./piper --sentence_silence 5 --model en_US-amy-medium.onnx -f ~/dev/dance/src/docs/audio/$$FILENAME.wav && \
	  cd ~/dev/dance/src/docs/audio && \
	  ffmpeg -i $$FILENAME.wav $$FILENAME.mp3


	export FILENAME=hustle-bronze-8-15; cat ~/dev/dance/src/docs/audio/$$FILENAME.txt; \
	  cd ~/src/piper-tts/piper && cat ~/dev/dance/src/docs/audio/$$FILENAME.txt \
	  | ./piper --sentence_silence 5 --model en_US-amy-medium.onnx -f ~/dev/dance/src/docs/audio/$$FILENAME.wav && \
	  cd ~/dev/dance/src/docs/audio && \
	  ffmpeg -i $$FILENAME.wav $$FILENAME.mp3





clean:
	rm *.wav *.mp3 -f

