__Notice__: this is not the testbed code for the paper [Prism: Scaling Bitcoin by 10,000x](https://arxiv.org/abs/1909.11261). Code for the paper will be / has been released at [yangl1996/prism-rust](https://github.com/yangl1996/prism-rust/tree/master/src).

# Prism Distributed Testbed

## Setting Up

1. Install jq
2. Install AWS CLI tool and configure the IAM Key and Region.
3. Place the SSH key at `~/.ssh/prism.pem`
4. Place this line `Include config.d/prism` at the beginning of `~/.ssh/config`
5. Execute `mkdir -p ~/.ssh/config.d`

## Usage

Run `./run.sh help` to view a list of available commands.


## Directories

- payload: Scripts/data files to be transferred to EC2 machine
- topologies: Topology files
- scripts: Scripts used in the testbed
- log: Logs of the experiment (auto-created)
- tools: Tools used in the experiment


## Tools

### gentopo

To build, cd into gentopo and run "cargo build --release". Pre-built binary
for macOS is available on [GitHub](https://github.com/yangl1996/prism-testbed/releases/download/gentopo/gentopo-bin). Run `./gentopo --help` to see usage.


### Log Files

instances.txt records the EC2 instances that are started in the following
format:

```
<Instance ID>,<Public IP>,<VPC IP>
```

nodes.txt records the Scorex nodes that are started, in the following format:

```
<Node Name>,<EC2 ID>,<Public IP>,<VPC IP>,<API IP>,<P2P IP>
```

