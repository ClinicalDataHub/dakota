df <- data.frame(Seller=c("Ad","Rt","Ra","Mo","Ao","Do"), 
                 Avg_Cost=c(5.30,3.72,2.91,2.64,1.17,1.10), Num=c(6:1))
df
str(df)
require(ggplot2)
ggplot(df, aes(x=Avg_Cost, y=reorder(Seller,Num))) + 
  geom_point(colour="black",fill="lightgreen") + 
  opts(title="Avg Cost") +
  ylab("Region") + xlab("") + ylab("") + xlim(c(0,7)) +
  opts(plot.title = theme_text(face = "bold", size=15)) +
  opts(axis.text.y = theme_text(family = "sans", face = "bold", size = 12)) +
  opts(axis.text.x = theme_text(family = "sans", face = "bold", size = 12))