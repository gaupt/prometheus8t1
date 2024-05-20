# prometheus8t1
## How to configure git-hooks:
Create folder in project
```
mkdir -p  .git/hooks
```
clone repo:
```
git clone https://github.com/gaupt/prometheus8t1.git /tmp/git-hook-gitleaks
```
copy file:
```
cp /tmp/git-hook-gitleaks/hooks/pre-commit.sh
```
save it as
```
 .git/hooks/pre-commit
```
make it executable
```
chmod +x .git/hooks/pre-commit
```
, and ensure that gitleaks is installed on your system.
This script will automatically run before each commit, ensuring that no secrets are accidentally committed to the repository.