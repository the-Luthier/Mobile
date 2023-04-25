from django.contrib.auth.decorators import user_passes_test
from functools import wraps
from django.shortcuts import redirect
from .models import Profile

def verification_required(f):
    return user_passes_test(lambda u: u.is_verified, login_url='/verify')(f) 