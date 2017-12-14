Testing the looker cookbook
=====

This cookbook includes integration tests via [Test Kitchen](https://github.com/test-kitchen/test-kitchen).
Contributions to this cookbook will only be accepted if all tests pass successfully:

```bash
kitchen test
```

Setting up the test environment
-----

Install the latest version of [Vagrant](http://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads) (free) or [VMWare Fusion](http://www.vmware.com/products/fusion) (paid).

The Chef tooling (chefspec/test kitchen/etc) is managed by the [Chef Development Kit](http://downloads.getchef.com/chef-dk/) - Version 0.3.4

Clone the latest version of the cookbook from the repository.

```bash
git clone git@github.com:deliv/looker-cookbook.git
cd looker-cookbook
```


Running Test Kitchen
-----

Test Kitchen test suites are defined in [.kitchen.yml](https://github.com/agileorbit-cookbooks/java/blob/master/.kitchen.yml). 
Running `kitchen test` will cause Test Kitchen to spin up each platform VM in turn, running each of the test suites, as defined. 
