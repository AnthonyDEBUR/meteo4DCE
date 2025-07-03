library(readr)
library(usethis)

# Lire le fichier CSV
parametres_meteo <- read_delim("data-raw/api_clim_table_parametres_horaires_20250304_396.csv", delim = ";", show_col_types = FALSE)

# Renommer les colonnes pour compatibilité R
names(parametres_meteo) <- c("mnemonique", "libelle", "unite", "pas_de_temps")

# Sauvegarder dans le package
usethis::use_data(parametres_meteo, overwrite = TRUE)
