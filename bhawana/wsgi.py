"""
WSGI config for bhawana project.

It exposes the WSGI callable as a module-level variable named ``application``.
"""

import os
from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'bhawana.settings')

application = get_wsgi_application()

# Expose aliases that Vercel expects
# Vercel looks for `app` or `handler` in the module for serverless functions.
app = application
handler = application
