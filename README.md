# Get Docker

    curl get.docker.io | sudo sh

# Build container

    sudo docker build -t=shopify/compiler .

# Compile app

Export tool directory to /app in container and run compile script. The
binary will be in ./tool/bin/tool as per compile script. 

    sudo docker run -v=`pwd`/tool:/app -w=/app shopify/compiler sh /app/script/compile

# Run app

    file tool/bin/tool
    tool/bin/tool: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, not stripped


