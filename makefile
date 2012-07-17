run:
	iverilog Hlp.v Hlp_tb.v -o Hlp
	vvp -n Hlp
	gcc -o Gen GenerateSinData.c -lm
	./Gen > G.txt
	iverilog Hlp.v HlpSintp.v -o Sintp
	vvp -n Sintp > Sintp.txt
	gcc -o HexToDec HexToDec.c
	./HexToDec < G.txt > G.dec
	./HexToDec < Sintp.txt > Sintp.dec
	matlab -nosplash -nodesktop -r  fftprocessing
clean:
	rm Hlp Gen G.txt Sintp Sintp.txt HexToDec G.dec Sintp.dec
