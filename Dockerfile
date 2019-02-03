# build stage  
FROM golang:alpine AS builder  
WORKDIR /usr/local/go/src  
COPY  main.go .  
RUN CGO_ENABLED=0 GOOS=linux go build -o main .  
  
  
# final stage  
FROM scratch  
WORKDIR /  
COPY --from=builder /usr/local/go/src/main main  
#COPY html html  
#EXPOSE 8080  
ENTRYPOINT ["/main"]