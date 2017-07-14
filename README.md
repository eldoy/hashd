# Hashd

Makes your hashes have dot syntax. Mutates the original hash.

### Installation
```ruby
gem install hashd
```

### Usage
```ruby
h = {:world => 'flat'}

# Init using the to_dot method
h.to_dot
t.world => 'flat'

# Assignment works as well
t.horizon = 'alsoflat'
t.horizon => 'flat'
```
Note: Don't use hash method names as hash keys.

This library is actively maintained by [Fugroup Ltd.](http://www.fugroup.net) We are the creators of [CrowdfundHQ.](https://crowdfundhq.com)

Thanks!

`@authors: Vidar`
