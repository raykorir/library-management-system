web: PORT=4000 npm start --prefix frontend
api: gunicorn -b 127.0.0.1:8000 --chdir ./backend main:app
