# Published on Docker Hub with above user alexellisio.
# If you want to rebuild your own copy, follow below instructions
# Build this on each type of machine so you have the correct CPU extensions.
FROM alexellisio/boostbase
RUN git clone -b Linux https://github.com/nicehash/nheqminer.git
RUN cd nheqminer/cpu_xenoncat/Linux/asm/ && sh assemble.sh && cd ../../../Linux_cmake/nheqminer_cpu && cmake . && make
ENTRYPOINT ["./nheqminer/Linux_cmake/nheqminer_cpu/nheqminer_cpu"]
# -u contains payment BTC address.
# -t amount of threads or $(nproc)
CMD ["-u",  "3EFf9zokDaTuTCqeDKwCe4i7wPJjxrPw85.gist", "-t", "4"]
# My bitcoin address is: 3EFf9zokDaTuTCqeDKwCe4i7wPJjxrPw85
# please feel free to use this for benchmarking or to cent me a few fractions of a cent
