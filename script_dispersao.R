library(tidyverse)
library("readxl")
library(corrplot)
library(GGally)
library(sf)
library(ggplot2)

#1) grafico de dispersao de taxa de domicilios com acesso a rede de agua pelo consumo de agua

ggplot(data = dadosUnidos, aes(x = TaxaAtendida, y = consumoMedioPerCapita))+
  geom_point(alpha = 0.2)+
  labs(title = "Dispersao taxa atendia por consumo de agua per capita",
       x = "taxa atendida",
       y = "conusmo de agua per capita"
  )
theme_minimal()


#2) grafico de dispersao de indicador de consumo não atendido vs consumo per capita
ggplot(aes(x=AG001,y=consumoMedioPerCapita))+
  geom_point(alpha=0.2)+
  labs(
    title = "dispersao de indicador de consumo não atendido vs consumo per capita",
    x="indicador do consumo não atendido",
    y = "consumo de agua per capita"
  )
theme_minimal()


#3) grafico de dispersao de renda per capita vs consumo per capita
ggplot(aes(x=RendaPerCapita,y=consumoMedioPerCapita))+
  geom_point(alpha=0.2)+
  labs(
    title = "dispersao de Renda per capita vs consumo per capita",
    x="Renda per capita",
    y = "consumo de agua per capita"
  )
theme_minimal()


