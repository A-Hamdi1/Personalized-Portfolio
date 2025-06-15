# Portfolio Personnalisé

## 📱 Aperçu

Une application mobile moderne de CV/Portfolio développée avec Flutter, offrant une présentation élégante et interactive des compétences professionnelles, projets et informations personnelles. L'application dispose d'un mode sombre/clair et d'une interface utilisateur intuitive pour naviguer entre les différentes sections.

## ✨ Fonctionnalités

- **Interface utilisateur moderne** avec animations fluides et design responsive
- **Mode sombre/clair** pour une expérience utilisateur personnalisée
- **Écran de démarrage animé** avec transition vers l'écran d'accueil
- **Navigation intuitive** entre les différentes sections via une barre de navigation inférieure
- **Présentation des projets** avec une vue en carrousel interactif
- **Affichage des compétences** organisées par catégories (frontend, backend, etc.)
- **Page de profil** avec informations personnelles et professionnelles
- **Section À propos** avec coordonnées et liens vers les réseaux sociaux
- **Support multiplateforme** (Android, iOS, Web, Desktop)

## 🛠️ Technologies utilisées

- **Flutter** - Framework UI multiplateforme
- **Dart** - Langage de programmation
- **Provider** - Gestion d'état pour le thème sombre/clair
- **Animations** - Animations personnalisées pour une expérience utilisateur fluide
- **Iconsax** - Bibliothèque d'icônes modernes
- **Google Nav Bar** - Navigation inférieure personnalisée
- **Carousel Slider** - Affichage des projets et compétences en format carrousel
- **Flutter SVG** - Support pour les images vectorielles
- **URL Launcher** - Ouverture de liens externes (email, téléphone, réseaux sociaux)

## 📂 Structure du projet

```
lib/
├── components/       # Composants réutilisables (barre de navigation)
├── constant/         # Constantes (couleurs, thèmes)
├── models/           # Modèles de données (compétences)
├── pages/            # Écrans principaux de l'application
├── widgets/          # Widgets réutilisables
└── main.dart         # Point d'entrée de l'application
```

## 🚀 Installation

1. **Prérequis**
   - Flutter SDK (version 3.5.0 ou supérieure)
   - Dart SDK (version compatible avec Flutter)
   - Un éditeur de code (VS Code, Android Studio, etc.)

2. **Cloner le dépôt**
   ```bash
   git clone https://github.com/A-Hamdi1/Personalized-Portfolio.git
   cd Personalized-Portfolio
   ```

3. **Installer les dépendances**
   ```bash
   flutter pub get
   ```

4. **Lancer l'application**
   ```bash
   flutter run
   ```

## 📱 Captures d'écran

*des captures d'écran de l'application*

## 🔧 Personnalisation

Pour personnaliser cette application avec vos propres informations :

1. Modifiez les données de profil dans `lib/widgets/profile_widget.dart`
2. Ajoutez vos projets dans `lib/pages/project_page.dart`
3. Mettez à jour vos compétences dans `lib/models/skills_model.dart`
4. Remplacez les images dans les dossiers `images/`, `assets/projects/` et `assets/frameworks/`

## 📄 Licence

Ce projet est sous licence MIT - voir le fichier LICENSE pour plus de détails.

## 👨‍💻 Auteur

**Akram Hamdi** - Développeur Flutter

---

⭐️ N'hésitez pas à donner une étoile à ce projet si vous l'avez trouvé utile ! ⭐️
