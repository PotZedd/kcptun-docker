# kcptun-docker

**A docker image for kcptun only**

A sample **kcptun connfig** in JSON like below:

```
{
  "listen": ":9984",
  "target": "0.0.0.0:8984",
  "key": "password",
  "crypt": "salsa20",
  "mode": "fast2",
  "mtu": 1350,
  "sndwnd": 1024,
  "rcvwnd": 1024,
  "datashard": 10,
  "parityshard": 3,
  "dscp": 0,
  "nocomp": false,
  "quiet": false,
  "pprof": false
}
```
