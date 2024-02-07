if [[ -e "pyvenv.cfg" ]]
then
    echo "WARN: There's an existing venv in the current working directory"
    return
fi

if [[ -z $(which python) || -z $(python -V) ]]
then
    echo "WARN: You must have a working Python version in your system to work with this repo" 
    return
fi

if [[ ! -e "requirements.txt" ]]
then
    echo "WARN: requirements.txt file missing, re-download it from the repo" 
    return
fi

python -m venv .
source bin/activate
sh -c "pip install -r requirements.txt"