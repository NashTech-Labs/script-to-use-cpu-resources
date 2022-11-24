# script-to-use-cpu-resources
This template contains script files which are useful in generating fake loads to virtual machine to use CPU resources. This is useful in testing the behaviour of monitoring tools like say Grafana, etc.

# How to use?
- bash generateFakeLoad.sh
  - Send this file to the virtual machine and observe the spike in traffic rate and Disk usage panels.
  - Send file using `scp -i fakeTraffic.txt  <username>@host_ip:<vm_path_where_to_send_file>`
  
- sh stressCPU.sh
  - Run this script within the virtaul machine to see clear spike in CPU usage panel.

# To stress test
  - curl -s "http://google.com?[1-n]"
