FROM saagie/sdkman

RUN bash -c 'source /init-sdkman.sh && sdk install gradle && sdk install maven && sdk install kotlin && sdk install kscript'
# ENTRYPOINT 
CMD ["bash", "-c" , "source /init-sdkman.sh && kscript"]

# TODO: install deps

WORKDIR /unit

# Must preserve directory structure!
COPY ./ ./
