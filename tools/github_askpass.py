#!/usr/bin/env python3
"""Use GH_TOKEN for HTTPS Git authentication without embedding it in a remote URL."""
import os,sys
if 'username' in ' '.join(sys.argv).lower():print('x-access-token')
else:print(os.environ['GH_TOKEN'])
