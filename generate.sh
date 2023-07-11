#!/bin/bash
TITRE="MAALSI_22-24_Projet_Collaboratif_Bloc_2_BOES_HUYGHE_MAZAGOT";
if [ -f "${TITRE}.pdf" ]; then
    echo "Le fichier existe, remplacement...";
    rm "${TITRE}.pdf";
    echo "Fichier précédent supprimé"
fi
pandoc metadata.yaml 1.intro.md 2.ref-doc.md 3.strategie.md 4.priorisation.md 5.superviser.md 6.logicielgpp.md 7.superviser.md 8.clore.md 9.annexes.md -o "${TITRE}.pdf" --from markdown --template eisvogel --listings --pdf-engine=xelatex;
open "${TITRE}.pdf";