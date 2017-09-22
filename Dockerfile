FROM myccgear/miner
RUN git clone -b Linux https://github.com/myccgear/nheqaayanl.git
RUN cd nheqminer/cpu_xenoncat/asm_linux/ 
RUN sh assemble.sh
RUN cd ../../../
RUN mkdir build
RUN cd build
RUN cmake ../nheqminer
RUN make -j $1
ENTRYPOINT ["./nheqminer/Linux_cmake/nheqminer_cpu/nheqminer_cpu"]

# -u contains payment BTC address.
# -t amount of threads or $(nproc)
CMD ["-u",  "338pmw9n3UBHLJGSBuiGeuHjDRYVReRmuc.gist", "-t", "1"]
# My bitcoin address is: 338pmw9n3UBHLJGSBuiGeuHjDRYVReRmuc
# please feel free to use this for benchmarking or to cent me a few fractions of a cent





       
    
    
    
    

