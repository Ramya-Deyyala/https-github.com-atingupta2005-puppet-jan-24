# PQL
- PQL stands for Puppet Query Language
- Much like SQL, it allows you to search a database and return raw data that is being stored
- PQL is an easy to use syntax that acts as a wrapper for making REST API calls to the PuppetDB endpoint

## How do I use PQL?
### Open Command Shell on Puppet Master

### Get token
```
puppet access login
```

### Certnames of nodes (inactive and active)
```
puppet query "nodes[certname]{node_state = 'inactive' or node_state = 'active'}"
```

### Get Private IPs of all connected agents
```
puppet query "facts {node_state = 'inactive' or node_state = 'active'}" | grep "privateIpAddress"
puppet query "facts {node_state = 'inactive' or node_state = 'active'}" | grep publicIpAddress
```


### Total number of nodes where an agent ran in the Production environment
```
puppet query "nodes[count()]{catalog_environment = 'production'}"
```


### Return the: certname, timestamp, resource type, resource title, message and old and new values from events where the status of the event was success
```
puppet query "events[certname, timestamp, resource_type, resource_title, message, old_value, new_value]{latest_report? = true and status='success'}"
```

### Return the count of nodes where the osfamily is RedHat
```
puppet query "facts[count()]{name='osfamily' and value='RedHat'}"
```

