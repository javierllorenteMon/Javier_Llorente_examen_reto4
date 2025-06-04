library(digest)
library(discretization)
library(dplyr)
library(EnvStats)
library(fastDummies)
library(naniar)
library(nortest)
library(readxl)
library(smoothmest)
library(VIM)
library(plumber)

df <- read.csv("netflix.csv")
#Tabla
summary(df$Minutes);sd(df$Minutes,na.rm=T)
summary(df$Seasons);sd(df$Seasons,na.rm=T)

#Elementos unicos
length(unique(df$type))
length(unique(df$country))
length(unique(df$director))


