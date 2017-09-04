#!/usr/bin/env perl

use strict;
use warnings;

use Plack::Builder;

builder {
    mount '/' => sub {
        return [ 200, [], ['Hello from stew!'] ];
    };
};
