# Get parent pid of a process
# Usage: ppid 21150
ppid()  {
    ps -p ${1:-$$} -o ppid;
}
