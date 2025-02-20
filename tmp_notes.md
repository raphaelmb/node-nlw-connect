- should change `.env` reference in the `package.json` script "dev"
- should improve the environment variables in Dockerfile

### create user

- curl -X POST -H "Content-type: application/json" -d '{"name": "john", "email": "john@example.com"}' http://localhost:3333/subscriptions

### referral

- curl http://localhost:3333/invites/john123

### clicks

- curl http://localhost:3333/subscribers/john123/ranking/clicks

### count

- curl http://localhost:3333/subscribers/john123/ranking/count

### position

- curl http://localhost:3333/subscribers/john123/ranking/position

### ranking

- curl http://localhost:3333/ranking
