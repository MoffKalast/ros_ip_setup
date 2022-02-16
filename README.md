## RPi ROS Env Var Setup

By default only ROS_HOSTNAME and ROS_MASTER_URI vars get exported by the env.sh, which according to ROS networking setup guidelines doesn't quite work for multiple machines reliably. The /etc/hosts workaround is infeasible because it requires the setup to be made on both machines, which is impossible to do on Android and other non-dev environments. As such the default setup isn't compatible with WebViz and ROS Mobile. These changes should be a prototype way of doing a more "proper" and bulletproof setup.

## Installation

The setup just involves replacing existing files with the provided ones and adding those that don't exist:

Replace existing files:

- /etc/ubiquity/env.sh
- /usr/sbin/magni-base
- /etc/systemd/system/roscore.service
- /etc/systemd/system/magni-base.service

        
Add files:
- /usr/sbin/roscore

The /usr/sbin/magni-base file may not need to be replaced, that needs testing.
