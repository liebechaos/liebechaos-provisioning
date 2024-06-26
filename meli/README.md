# meli-provisioning

Docker deployment for both the meli test and production networks.

## Configuration

`config.toml` file is for non-sensitive configuration which is the same for both test and production
deployments.
`prod/.env` and `test/.env` should be used for sensitive configuration values.

## Production deploy

- move into the `prod/` folder
- create a `.env` file (see `prod/.env.example`)
- run `docker-compose up -d`

## Test deploy

- move into the `test/` folder
- create a `.env` file (see `prod/.env.example`)
- run `docker-compose up -d`

## License

`UNLICENSED`
