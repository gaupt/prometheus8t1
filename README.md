# prometheus8t1
## How to configure git-hooks:
save it as
```
 .git/hooks/pre-commit
```
make it executable
```
(chmod +x .git/hooks/pre-commit)
```
, and ensure that gitleaks is installed on your system.
This script will automatically run before each commit, ensuring that no secrets are accidentally committed to the repository.