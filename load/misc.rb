#!/usr/bin/ruby

def suppress_warnings
    original_verbosity, $VERBOSE = $VERBOSE, nil
    yield
    ensure
    $VERBOSE = original_verbosity
end