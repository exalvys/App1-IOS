# Welcome App 1.0

Application iOS native SwiftUI, sans publicité, sans réseau et sans abonnement.

## Compiler sans Mac (GitHub Actions)

1. Crée un compte GitHub si tu n'en as pas.
2. Crée un nouveau dépôt (repository) vide, par exemple `WelcomeApp`.
3. Décompresse ce dossier ZIP sur ton PC.
4. Envoie tous les fichiers du dossier dans le dépôt GitHub (bouton **Add file > Upload files**).
   Important : le dossier `.github` doit être présent à la racine du dépôt.
5. Ouvre l'onglet **Actions** du dépôt.
6. Sélectionne **Build WelcomeApp IPA** puis **Run workflow**.
7. Attends la fin du workflow (statut vert).
8. Ouvre l'exécution terminée et télécharge l'artefact **WelcomeApp-IPA**.
9. Décompresse l'artefact téléchargé : tu obtiendras `WelcomeApp.ipa`.

## Installer avec AltStore

1. Télécharge `WelcomeApp.ipa` sur ton PC.
2. Envoie-le sur l'iPhone (iCloud Drive, OneDrive, câble, etc.) ou garde-le sur le PC.
3. Pour l'installation la plus simple : dans AltStore sur l'iPhone, onglet **My Apps**, touche **+**, puis sélectionne `WelcomeApp.ipa` depuis l'app Fichiers.
4. Laisse AltStore signer et installer l'application. Si demandé, utilise le même identifiant Apple que celui configuré dans AltStore.

L'IPA est volontairement non signée : AltStore doit la signer avant installation. Avec un compte Apple gratuit, la signature expire au bout de 7 jours et doit être renouvelée.

## Identifiant de l'application

`fr.exalvys.welcomeapp`

Si GitHub Actions échoue, ouvre le journal du job et partage la première erreur rouge.
