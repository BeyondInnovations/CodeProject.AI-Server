@Echo off
REM Module Packaging script. To be called from create_packages.bat

set moduleId=%~1
set version=%~2

tar -caf %moduleId%-%version%.zip --exclude=__pycache__  --exclude=data --exclude=*.development.* --exclude=*.log ^
    audio\* vggish\* *.py modulesettings.* requirements.* install.sh install.bat test\*
