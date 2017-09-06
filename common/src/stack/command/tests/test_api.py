# @SI_Copyright@
# Copyright (c) 2006 - 2017 StackIQ Inc.
# All rights reserved. stacki(r) v4.0 stacki.com
# https://github.com/Teradata/stacki/blob/master/LICENSE.txt
# @SI_Copyright@

import pytest
import stack
from stack.bool import *
from stack.api import *

def test_command():
	"""
	Make sure we are using the local stack.py and not
	the system one.
	"""
	assert stack.api.__stack__ == './stack.py'
	
	
def test_call():
	"""
	Test the stack.api.Call function to verify it returns
	a list of dictionaries.
	"""

	found = False
	for dict in Call('list appliance'):
		if dict['appliance'] == 'backend':
			found = True
			assert str2bool(dict['public'])
	assert found
	
		

	