# Simple Multi-Stage Docker Image Craetion

In this project we'll create a simple multi-stage docker file to run our react app on dev/prod envs with or without nginx.

## Usage

```jvascript
docker-compose -f docker-compose-dev.yml up // To run in dev mode without nginx
docker-compose -f docker-compose-prod.yml up // To run in prod mode with nginx
```

## License
[MIT](https://choosealicense.com/licenses/mit/)