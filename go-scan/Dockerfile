FROM progrium/busybox
RUN wget -qO /tmp/golang.tgz http://storage.googleapis.com/golang/go1.3.linux-amd64.tar.gz
RUN gunzip -c /tmp/golang.tgz | tar -xf - -C /tmp
ENV GOROOT /tmp/go
ENV PATH /tmp/go/bin:$PATH
ADD scan.go /tmp/scan.go
RUN go build -o /usr/local/bin/go-scan /tmp/scan.go
WORKDIR /tmp
ENTRYPOINT ["go", "run", "scan.go", "--"]