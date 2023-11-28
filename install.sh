#!/bin/bash

mkdir --parents ${HOME}/.local/share/KiPart
cd ${HOME}/.local/share/KiPart || exit 

python3 -m venv .venv 
source .venv/bin/activate
pip install kipart

mkdir --parents ${HOME}/.local/bin 
echo '#!/bin/bash' > ${HOME}/.local/bin/kipart 
echo 'source ${HOME}/.local/share/KiPart/.venv/bin/activate'  >> ${HOME}/.local/bin/kipart
echo 'kipart $@'  >> ${HOME}/.local/bin/kipart
chmod +x ${HOME}/.local/bin/kipart 
