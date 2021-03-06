#��������� ������ � ��������������
anss <- readLines("https://raw.githubusercontent.com/SergeyMirvoda/MD-DA-2017/master/data/earthquakes_2011.html", warn = FALSE)
#�������� ������, ������� �������� ������ � ������� ���������� ��������� � ������� grep
pattern.seismo.stats <- "\\d{4}(\\/\\d{2}){2}\\s(\\d{2}:){2}\\d{2}\\.\\d{2}(,[^,]*){10},\\d*"

anss.isdata <- grepl(pattern = pattern.seismo.stats, x = anss)
seismo.stats.data <- regmatches(anss, regexpr(pattern = pattern.seismo.stats, text = anss))
#��������� ��� ��� ������ (all.equal) � �������������� ������� �������� ��� ������.
all.equal(anss[which(anss.isdata)], seismo.stats.data)