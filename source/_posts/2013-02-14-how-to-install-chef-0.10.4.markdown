---
layout: post
title: "How to install an old version of chef (0.10.4) as of 2013-02-14"
date: 2013-02-14T14:32:25+01:00
comments: true
external-url:
categories: ruby chef rubygems
---

## Or: RubyGems dependency hell

### Warning

I know what you're thinking: You're not _supposed_ to use an old version of
Chef. But not everyone is lucky enough to live in a magical world where your
customers actually have a sysadmin maintaining their infrastructure and
updating Chef and their cookbooks while you're not working on it.

### A real life case

Say you need to install an application on a server. That application happens to
be written in Ruby, so you install Ruby (1.9 includes Rubygems and its `gem`
binary tool).

We're installing Chef version 0.10.4 as part of a bootstrap script, but I'm
going to break it down and do it by hand, because that version happens to be
_pretty_ hard to install, as you will see.

```
$ gem install chef --version 0.10.4
ERROR:  While executing gem ... (Gem::DependencyError)
Unable to resolve dependencies: chef requires net-ssh (~> 2.1.3); net-ssh-multi requires net-ssh (>= 2.1.4); net-ssh-gateway requires net-ssh (>= 2.6.5)
```

Oops.

```
$ gem install net-ssh --version 2.1.4
Fetching: net-ssh-2.1.4.gem (100%)
Successfully installed net-ssh-2.1.4
1 gem installed
```

Alright, resolving the dependency issue by hand, it doesn't seem too
complicated.

```
$ gem install chef --version 0.10.4
ERROR:  While executing gem ... (Gem::DependencyError)
    Unable to resolve dependencies: net-ssh-gateway requires net-ssh (>= 2.6.5)
```

Let's check [RubyGems.org](https://rubygems.org) to see which version of
`net-ssh-gateway` doesn't require `>= 2.6.5`:
[1.1.0](https://rubygems.org/gems/net-ssh-gateway/versions/1.1.0)

```
$ gem install net-ssh-gateway --version 1.1.0
Fetching: net-ssh-gateway-1.1.0.gem (100%)
Successfully installed net-ssh-gateway-1.1.0
1 gem installed
```

Now let's try installing Chef again:

```
$ gem install chef --version 0.10.4
Fetching: mixlib-config-1.1.2.gem (100%)
Fetching: mixlib-cli-1.3.0.gem (100%)
Fetching: mixlib-log-1.4.1.gem (100%)
Fetching: mixlib-authentication-1.3.0.gem (100%)
Fetching: systemu-2.5.2.gem (100%)
Fetching: yajl-ruby-1.1.0.gem (100%)
Building native extensions.  This could take a while...
Fetching: mixlib-shellout-1.1.0.gem (100%)
Fetching: ipaddress-0.8.0.gem (100%)
Fetching: ohai-6.16.0.gem (100%)
Fetching: mime-types-1.21.gem (100%)
Fetching: rest-client-1.6.7.gem (100%)
Fetching: bunny-0.8.0.gem (100%)
[Version 0.8.0] AMQP 0.8 client is removed. Bunny is an AMQP 0.9.1 client only now.
Fetching: json-1.5.2.gem (100%)
Building native extensions.  This could take a while...
Fetching: polyglot-0.3.3.gem (100%)
Fetching: treetop-1.4.12.gem (100%)
Fetching: net-ssh-multi-1.1.gem (100%)
Fetching: erubis-2.7.0.gem (100%)
Fetching: moneta-0.7.14.gem (100%)
Fetching: highline-1.6.15.gem (100%)
Fetching: uuidtools-2.1.3.gem (100%)
Fetching: chef-0.10.4.gem (100%)
Successfully installed mixlib-config-1.1.2
Successfully installed mixlib-cli-1.3.0
Successfully installed mixlib-log-1.4.1
Successfully installed mixlib-authentication-1.3.0
Successfully installed systemu-2.5.2
Successfully installed yajl-ruby-1.1.0
Successfully installed mixlib-shellout-1.1.0
Successfully installed ipaddress-0.8.0
Successfully installed ohai-6.16.0
Successfully installed mime-types-1.21
Successfully installed rest-client-1.6.7
Successfully installed bunny-0.8.0
Successfully installed json-1.5.2
Successfully installed polyglot-0.3.3
Successfully installed treetop-1.4.12
Successfully installed net-ssh-multi-1.1
Successfully installed erubis-2.7.0
Successfully installed moneta-0.7.14
Successfully installed highline-1.6.15
Successfully installed uuidtools-2.1.3
Successfully installed chef-0.10.4
21 gems installed
```

Oh wait, if we try to use that version of chef it won't work, because it
depends on any version of moneta, and moneta 0.7 is a complete rewrite. This is
something you just _have to know somehow_.

```
$ gem uninstall moneta

You have requested to uninstall the gem:
        moneta-0.7.14
chef-0.10.4 depends on [moneta (>= 0)]
If you remove this gems, one or more dependencies will not be met.
Continue with Uninstall? [Yn]  y
Successfully uninstalled moneta-0.7.14
$ gem install moneta --version 0.6.0
Successfully installed moneta-0.6.0
1 gem installed
```

## Bootstrap script

In the end our bootstrap script looks like this (until we update all the
cookbooks to work on Chef 11) instead of
[lines 14-16 of 0.10.4 bootstrap's script](https://github.com/opscode/chef/blob/0.10.4/chef/lib/chef/knife/bootstrap/ubuntu10.04-gems.erb#L14-L16)

### Original

```erb
gem update --no-rdoc --no-ri
gem install ohai --no-rdoc --no-ri --verbose
gem install chef --no-rdoc --no-ri --verbose <%= bootstrap_version_string %>
```

### Our fixed version

```erb
gem install moneta --version 0.6.0 --no-rdoc --no-ri --verbose
gem install net-ssh-gateway --version 1.1.0 --no-rdoc --no-ri --verbose
gem install net-ssh --version 2.1.4 --no-rdoc --no-ri --verbose
gem install ohai --no-rdoc --no-ri --verbose
gem install chef --version 0.10.4 --no-rdoc --no-ri --verbose
```

## So what's the moral of the story?

If you have an application written in Ruby (not a library) either you or the
maintainer of a gem you depend on **will fuck up** the dependencies at some
point and your gem will be impossible to install anymore.

This is part of the reason why apps that happen to be written in Ruby now ship
packages with their own vendored everything as the prefered way of installing
them (Ruby, gems, etc): [Omnibus Chef](https://github.com/opscode/omnibus-chef),
[Vagrant Installer Generators](https://github.com/mitchellh/vagrant-installers).
Yes, that means every piece of Ruby application of that kind will have its own
Ruby and be pretty big. There's no other way, deal with it.

Oh and see
[this issue on Opscode's ticket tracking](http://tickets.opscode.com/browse/CHEF-3788)
to know why you really need to use Omnibus and not a gem.

* Update `Thu Feb 14 16:53:41 CET 2013`: Added more information about where to look for to resolve the net-ssh-gateway dependency requirements.
