FROM golang:1.10.3-stretch as build
COPY . /go/src/testingKaniko
WORKDIR /go/src/testingKaniko
RUN ./bin/go_build.sh

FROM scratch
EXPOSE 80
COPY --from=build /go/src/testingKaniko/testingKaniko /
CMD ["/testingKaniko"]
