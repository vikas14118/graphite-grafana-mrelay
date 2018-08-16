StatsD + Graphite + Grafana 4 + Preconfigured Dashboards + Alerting system
---------------------------------------------

This image contains a sensible default configuration of StatsD, Graphite and Grafana, and comes bundled with a example
dashboard that gives you the basic metrics currently collected by Kamon for both Actors and Traces.

For alerting we used InMobi's mrelay to send email alert

### Using the Docker Index ###

The module needs 'Docker', 'Docker-compose' as the pre-requisites . The container exposes the following ports:

- `3000`: the Grafana web interface.
- `81`: the Graphite web port
- `2003`: the Graphite data port
- `8125`: the StatsD port.
- `8126`: the StatsD administrative port.

To start a container with this image you just need to run the following command:

```bash
$ docker build . -t "graphite-grafana-Monitoring"
$ sudo docker run -itd -p 25:25 -p 587:587 -p 80:80 -p 8125:8125 -p 8126:8126 -p 81:81 -p 2003:2003 -p 3000:3000 <Image-Id>
```

### Using the Dashboards ###

Once your container is running all you need to do is:

- open your browser pointing to http://localhost:3000 (or another port if you changed it)
- Docker with VirtualBox on macOS: use `docker-machine ip` instead of `localhost`
- login with the default username (admin) and password (admin)
- open existing dashboard (or create a new one) and select 'Local Graphite' datasource
- play with the dashboard at your wish...
