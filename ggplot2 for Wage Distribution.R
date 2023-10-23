# Load required library
library(ggplot2)
library(scales)

# ggplot2 Visualization with specified axis limits and labels
ggplot(data, aes(x = date, y = wage)) +
  geom_line(color = "skyblue") +
  labs(title = "History of Federal Minimum Wage Rates",
       x = "Year",
       y = "Wage") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_x_date(labels = date_format("%Y-%m-%d"),
               breaks = as.Date(c("1938-10-24", "1939-10-24", "1945-10-24", 
                                  "1950-01-25", "1956-03-01", "1961-09-03", 
                                  "1963-09-03", "1967-02-01", "1968-02-01", 
                                  "1974-05-01", "1975-01-01", "1976-01-01", 
                                  "1978-01-01", "1979-01-01", "1980-01-01", 
                                  "1981-01-01", "1990-04-01", "1991-04-01", 
                                  "1996-10-01", "1997-09-01", "2007-07-24", 
                                  "2008-07-24", "2009-07-24"))) +
  scale_y_continuous(breaks = c(0.25, 0.3, 0.4, 0.75, 1, 1.15, 1.25, 1.4, 1.6, 2, 
                                2.1, 2.3, 2.65, 2.9, 3.1, 3.35, 3.8, 4.25, 4.75, 
                                5.15, 5.85, 6.55, 7.25))
