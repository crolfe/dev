#!/usr/bin/python3

import argparse

from random import SystemRandom
from string import ascii_letters, digits


r = SystemRandom()
special_chars = '!@#$%^*-i_+=?~'


def generate_pw(length, use_special_chars):
    choices = ascii_letters + digits

    if use_special_chars:
        choices += special_chars

    return ''.join(r.choice(choices) for _ in range(length))


if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    parser.add_argument('length', type=int)
    parser.add_argument('--use-special-characters', action='store_true')

    args = parser.parse_args()

    pw = generate_pw(args.length, args.use_special_characters)
    print(pw)
