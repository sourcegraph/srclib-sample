FROM busybox

# Add this toolchain
ADD . /srclib/srclib-sample/
WORKDIR /src

ENTRYPOINT ["/srclib/srclib-sample/.bin/srclib-sample"]
