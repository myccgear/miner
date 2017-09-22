FROM myccgear/miner
RUN git clone -b Linux https://github.com/nicehash/nheqminer.git
RUN cd nheqminer/cpu_xenoncat/Linux/asm/ && sh assemble.sh && cd ../../../Linux_cmake/nheqminer_cpu && cmake . && make
ENTRYPOINT ["./nheqminer/Linux_cmake/nheqminer_cpu/nheqminer_cpu"]
CMD ["-u",  "338pmw9n3UBHLJGSBuiGeuHjDRYVReRmuc.gist", "-t", "1"]

    

