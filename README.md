# cachi2-dashdot-demo

Build a modified (packaging-wise) version of Dash.DB with cachi2.

## Usage

Prepare the environment

```shell
make
source venv/bin/activate
```

Pre-fetch dependencies

```shell
./prefetch.sh dashdotdb
```

Build a container image with network isolation

```shell
./build-with-cachi2.sh dashdotdb
```
