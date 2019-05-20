# Node

## Frameworks

- [fastify/fastify](https://github.com/fastify/fastify) - Fast and low overhead web framework, for Node.js

## Debugging

- [GoogleChromeLabs/ndb](https://github.com/GoogleChromeLabs/ndb)

## Caching

### Redis

- [API Caching with Redis and Node.js](https://www.compose.com/articles/api-caching-with-redis-and-nodejs/)

## Timezone

- [How can I set the default timezone in node.js?](https://stackoverflow.com/questions/8083410/how-can-i-set-the-default-timezone-in-node-js/49794937)

```
env TZ='Europe/Amsterdam' node server.js
```

- [Jest - Tests should be deterministic](https://jestjs.io/docs/en/snapshot-testing#2-tests-should-be-deterministic)

```
Date.now = jest.fn(() => 1482363367071);
```
