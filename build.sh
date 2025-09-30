
set -e  


PY=python3
if ! command -v $PY >/dev/null 2>&1; then
  PY=python3.12
fi


$PY -m pip install --upgrade pip
$PY -m pip install -r requirements.txt


$PY manage.py migrate --noinput
$PY manage.py collectstatic --noinput
