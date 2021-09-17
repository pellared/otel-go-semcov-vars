# otel-go-semcov-vars

```sh
$make
cd hello && go build -ldflags="-w" -o main.exe && du -h main.exe && go tool objdump -S main.exe > main.objdump
1.3M    main.exe
cd otel && go build -ldflags="-w" -o main.exe && du -h main.exe && go tool objdump -S main.exe > main.objdump
2.6M    main.exe
```

The binary size is just a little larger - not a big deal.

I have not found the global variables in the memory dump.
