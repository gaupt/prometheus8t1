# prometheus8t1
save it as .git/hooks/pre-commit, make it executable (chmod +x .git/hooks/pre-commit), and ensure that gitleaks is installed on your system. This script will automatically run before each commit, ensuring that no secrets are accidentally committed to the repository.

Створення скрипту для git pre-commit hook з використанням gitleaks для перевірки наявності секретів у коді.

Опис завдання:

Реалізуйте скрипт на любій мові програмування, що автоматично запускає перевірку перед комітом у git (​​https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)

Скрипт повинен виконувати перевірку наявності секретів, використовуючи gitleaks (https://github.com/gitleaks/gitleaks)

Якщо скрипт виявляє наявність секретів у коді, він повинен виводити повідомлення про помилку та відхилити коміт.

Перевірити роботу скрипта на прикладі Telegram bot token. 

Оцінювання:

3 бали (junior): реалізований pre-commit hook скрипт з локально встановленим gitleaks

7 балів (middle): реалізований pre-commit hook скрипт з автоматичним встановленням gitleaks залежно від операційної системи, з опцією enable за допомогою git config 

10 балів (senior): реалізований pre-commit hook скрипт з автоматичним встановленням gitleaks залежно від операційної системи, з опцією enable за допомогою git config та інсталяцією за методом “curl pipe sh” (задача делегована junior та middle інженерам)

Відповідь: посилання на репозиторій, що містить скрипт pre-commit hook та інструкцію до використання.