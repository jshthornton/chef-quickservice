# quickservice
A util cookbook which allows quick service management. This cookbook simply wraps the `service` resource to allow for custom service name and service action attributes to be passed into a recipe to quickly allow restarting, starting, or stopping of a service.

This cookbook was made as a lot of package cookbooks do not come with proper service management (I am looking at you HHVM).

## Installation
Berksfile: `cookbook 'quickservice', git: 'git@github.com:jshthornton/chef-quickservice.git'`

## Usage
Just run the `quickservice::default` / `quickservice` recipe. In AWS OpsWorks that is done via `execute_recipes`.

This cookbook supports two attributes:

`quickservice.service` and `quickservice.action`

Example:
```
{
  "quickservice": {
    "service": "hhvm",
    "action": "restart"
  }
}
```

This would tell quickservice to restart hhvm.

## Future
In the future I might allow an array of services to restart. But that will come as needed. If you need it just fork and add.
