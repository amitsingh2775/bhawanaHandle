import os
from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'bhawana.settings')

application = get_wsgi_application()

# Vercel ke liye yeh line add karein
app = application