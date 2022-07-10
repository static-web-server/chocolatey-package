# Static Web Server
 
 __DEPRECATED:__ Use [Scoop](https://scoop.sh/#/apps?q=static-web-server&s=0&d=1&o=true) instead.

---

> A blazing fast and asynchronous web server for static files-serving.

**Static Web Server** (or **`SWS`** abbreviated) is a very small and fast production-ready web server suitable to serve static web files or assets.

It is focused on **lightness and easy-to-use** principles while keeping [high performance and safety](https://blog.rust-lang.org/2015/04/10/Fearless-Concurrency.html) powered by [The Rust Programming Language](https://rust-lang.org).

Written on top of [Hyper](https://github.com/hyperium/hyper) and [Tokio](https://github.com/tokio-rs/tokio) runtime. It provides [concurrent and asynchronous networking abilities](https://rust-lang.github.io/async-book/01_getting_started/02_why_async.html) as well as the latest HTTP/1 - HTTP/2 implementations.

## Features

- Built with [Rust](https://rust-lang.org) which is focused on [safety, speed and concurrency](https://kornel.ski/rust-c-speed).
- Memory safe and very reduced CPU and RAM overhead.
- Optional GZip, Deflate or Brotli compression for text-based web files only.
- Compression on-demand via [Accept-Encoding](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-Encoding) header.
- [Partial Content Delivery](https://en.wikipedia.org/wiki/Byte_serving) support for byte-serving of large files.
- Optional [Cache-Control](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control) headers for assets.
- [Termination signal](https://www.gnu.org/software/libc/manual/html_node/Termination-Signals.html) handling with [graceful shutdown](https://cloud.google.com/blog/products/containers-kubernetes/kubernetes-best-practices-terminating-with-grace) ability and grace period.
- [HTTP/2](https://tools.ietf.org/html/rfc7540) + TLS support.
- [Security headers](https://web.dev/security-headers/) for HTTP/2 by default.
- [HEAD](https://tools.ietf.org/html/rfc7231#section-4.3.2) responses.
- Lightweight and configurable logging via [tracing](https://github.com/tokio-rs/tracing) crate.
- Customizable number of worker threads.
- Optional directory listing.
- [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) support.
- Basic HTTP Authentication.
- Customizable HTTP Response Headers for specific file requests via glob patterns.
- Fallback pages for 404 errors which are useful for Single-page applications.
- Run the server as [Windows Service](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2003/cc783643(v=ws.10)).
- Configurable using CLI arguments, environment variables or a file.
- Default and custom error pages.
- First-class [Docker](https://docs.docker.com/get-started/overview/) support. [Scratch](https://hub.docker.com/_/scratch) and the latest [Alpine Linux](https://hub.docker.com/_/alpine)](https://hub.docker.com/_/alpine) Docker images available.
- Ability to accept a socket listener as a file descriptor for use in sandboxing and on-demand applications (E.g [systemd](http://0pointer.de/blog/projects/socket-activation.html)).
- Cross-platform. Binaries are available for Linux, macOS, Windows & FreeBSD x86_64 / ARM.

## Documentation

For more details about the API, usage and examples please have a look at [The Documentation Website](https://sws.joseluisq.net/).

## Releases

- [Docker Images](https://hub.docker.com/r/joseluisq/static-web-server/)
- [Release Binaries](https://github.com/joseluisq/static-web-server/releases)
- [Platforms/Architectures Supported](https://sws.joseluisq.net/platforms-architectures/)

## License

This work is primarily distributed under the terms of both the [MIT license](https://github.com/joseluisq/static-web-server/blob/master/LICENSE-MIT) and the [Apache License (Version 2.0)](https://github.com/joseluisq/static-web-server/blob/master/LICENSE-APACHE).

© 2019-present [Jose Quintana](https://joseluisq.net)
