web: PORT=4000 npm run serve --prefix frontend
api: gunicorn -b 127.0.0.1:5555 --chdir ./backend main:app