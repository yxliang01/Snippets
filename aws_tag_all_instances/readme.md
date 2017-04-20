AWS Autotag
=====
These scripts allow **all your Amazon AWS EC2 instances** to be tagged automatically. This is useful when you have a dedicated account in some region that needs to have a specific tag on all your instances.

NOTE: This will only **apply tags on your default region set with `awscli`**.

REQUIREMENT
-----

`Bash` installed
`awscli` installed and **configured** (can obtain it at https://aws.amazon.com/cli/)

USAGE
-----
If you just want to apply a tag to all your instances **once**, you may call `./tag_all_instances.sh <TAG NAME> <TAG VALUE>` in your terminal.

If you want to apply the tag on all instances **all the time**, you may call `./auto_tag_all_instances.sh <CHECK INTERVAL IN SECOND> <TAG NAME> <TAG VALUE>` in your terminal.