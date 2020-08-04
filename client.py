#!/usr/bin/env python3

import argparse
import socket


def main():
    args = parse_arguments()
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((args.HOSTNAME, args.PORT))
        s.sendall(args.MESSAGE.encode())


def parse_arguments():
    parser = argparse.ArgumentParser(description="Send a message to the server.")
    parser.add_argument("HOSTNAME")
    parser.add_argument("PORT", type=int)
    parser.add_argument("MESSAGE")

    return parser.parse_args()


if __name__ == "__main__":
    main()
