# Terraform GCP Data Platform

Infrastructure as Code (IaC) pour déployer une plateforme **Data** sur **Google Cloud Platform**  
avec les services suivants :
- **BigQuery** (datasets + tables)
- **Data Fusion** (intégration de données)
- **Cloud Composer** (orchestration Airflow)
- (modules réutilisables pour d’autres services : Pub/Sub, etc.)

Le projet gère **deux environnements isolés** :
- `dev`  → branche **develop**
- `prod` → branche **main**

L’état Terraform est stocké dans des buckets GCS (backend **remote**)  
et le déploiement est automatisé via **GitHub Actions**.

---

## Déploiemnent depuis la machine locale: 
- gcloud auth activate-service-account --key-file="chemin du compte de service"
- gcloud config set project <PROJECT_ID>

**Depuis envs/dev ou env/prod:**
- terraform init
- terraform plan      # pour voir les changements
- terraform apply     # pour déployer

---

## Déploiement CI/CD

Le pipeline GitHub Actions s’exécute automatiquement :

- la branche develop → déploie l’environnement dev

- la branche main → déploie l’environnement prod


