package main

import (
	"fmt"

	"go.opentelemetry.io/otel/semconv/v1.4.0"
)

func main() {
	kv := semconv.HTTPFlavorKey.String(semconv.HTTPFlavorHTTP11.Value.AsString())
	fmt.Println(string(kv.Key) + "=" + kv.Value.AsString())
}
