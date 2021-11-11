In camunda engine integrated app.

# Compile

```
mvn clean package
```

# Deployment

```
mvn wildfly:deploy
```

The file can later be redeployed or undeployed using the appropriate goals.

```
mvn wildfly:redeploy
mvn wildfly:undeploy
```