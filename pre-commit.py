import subprocess
import sys

def check_for_secrets():
    try:
        # Виконуємо gitleaks для перевірки наявності секретів
        result = subprocess.run(['gitleaks', '--path', '.'], capture_output=True, text=True)
        output = result.stdout
        # Перевіряємо, чи виводить gitleaks повідомлення про помилку (наявність секретів)
        if "error" in output.lower():
            print("Помилка: Знайдені секрети у коді. Відхилюємо коміт.")
            sys.exit(1)
    except FileNotFoundError:
        print("Помилка: gitleaks не знайдено. Переконайтеся, що він встановлений.")
        sys.exit(1)

if __name__ == "__main__":
    check_for_secrets()