import sys

sys.stdout.write("py->skill: 1st message from python to skill,send data1&*()\n")
sys.stdout.flush()

c = sys.stdin.readline()

if c == 'ack1 \n':
    sys.stdout.write('py->skill: python get ack1 from skill,send data2')
    sys.stdout.flush()