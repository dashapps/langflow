FROM python:3.11

# Установка зависимостей
WORKDIR /app
COPY . /app

RUN pip install --upgrade pip \
 && pip install -r requirements.txt

# Экспонируем порт для Render
EXPOSE 7868

# Запуск Langflow
CMD ["langflow", "run", "--host", "0.0.0.0", "--port", "7868"]
