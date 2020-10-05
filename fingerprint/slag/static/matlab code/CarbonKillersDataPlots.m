clc;
%%%%%%%%2014%%%%%%%%%%%
ncdisp('oco2_LtCO2_140907_B9003r_180927220000s.nc4')
co1 = ncread('oco2_LtCO2_140907_B9003r_180927220000s.nc4','xco2_apriori');
lat1 = ncread('oco2_LtCO2_140907_B9003r_180927220000s.nc4','latitude');
lon1 = ncread('oco2_LtCO2_140907_B9003r_180927220000s.nc4','longitude');
un1 = ncread('oco2_LtCO2_140907_B9003r_180927220000s.nc4','xco2_uncertainty');

co2 = ncread('oco2_LtCO2_141215_B9003r_180928004217s.nc4','xco2_apriori');
lat2 = ncread('oco2_LtCO2_141215_B9003r_180928004217s.nc4','latitude');
lon2 = ncread('oco2_LtCO2_141215_B9003r_180928004217s.nc4','longitude');
un2 = ncread('oco2_LtCO2_141215_B9003r_180928004217s.nc4','xco2_uncertainty');

co3 = ncread('oco2_LtCO2_141012_B9003r_180927225026s.nc4','xco2_apriori');
lat3 = ncread('oco2_LtCO2_141012_B9003r_180927225026s.nc4','latitude');
lon3 = ncread('oco2_LtCO2_141012_B9003r_180927225026s.nc4','longitude');
un3 = ncread('oco2_LtCO2_141012_B9003r_180927225026s.nc4','xco2_uncertainty');

co4 = ncread('oco2_LtCO2_141014_B9003r_180927225227s.nc4','xco2_apriori');
lat4 = ncread('oco2_LtCO2_141014_B9003r_180927225227s.nc4','latitude');
lon4 = ncread('oco2_LtCO2_141014_B9003r_180927225227s.nc4','longitude');
un4 = ncread('oco2_LtCO2_141014_B9003r_180927225227s.nc4','xco2_uncertainty');

co5 = ncread('oco2_LtCO2_141226_B9003r_180928005253s.nc4','xco2_apriori');
lat5 = ncread('oco2_LtCO2_141226_B9003r_180928005253s.nc4','latitude');
lon5 = ncread('oco2_LtCO2_141226_B9003r_180928005253s.nc4','longitude');
un5 = ncread('oco2_LtCO2_141226_B9003r_180928005253s.nc4','xco2_uncertainty');

co6 = ncread('oco2_LtCO2_141101_B9003r_180927231000s.nc4','xco2_apriori');
lat6 = ncread('oco2_LtCO2_141101_B9003r_180927231000s.nc4','latitude');
lon6 = ncread('oco2_LtCO2_141101_B9003r_180927231000s.nc4','longitude');
un6 = ncread('oco2_LtCO2_141101_B9003r_180927231000s.nc4','xco2_uncertainty');

me2014 = mean([mean(co1),mean(co2),mean(co3),mean(co4),mean(co5),mean(co6)])
un2014 = mean([mean(un1),mean(un2),mean(un3),mean(un4),mean(un5),mean(un6)])
%{
figure;
scatter(lon1,lat1,[],co1,"filled")
hold on
scatter(lon2,lat2,[],co2,"filled")
scatter(lon3,lat3,[],co3,"filled")
scatter(lon4,lat4,[],co4,"filled")
scatter(lon5,lat5,[],co5,"filled")
%scatter(lon6,lat6,[],co6,"filled")
hold off
title('2014')
colorbar
%}

%%%%%2015%%%%%%%%%
co1 = ncread('oco2_LtCO2_150226_B9003r_180928023259s.nc4','xco2_apriori');
lat1 = ncread('oco2_LtCO2_150226_B9003r_180928023259s.nc4','latitude');
lon1 = ncread('oco2_LtCO2_150226_B9003r_180928023259s.nc4','longitude');
un1 = ncread('oco2_LtCO2_150226_B9003r_180928023259s.nc4','xco2_uncertainty');

co2 = ncread('oco2_LtCO2_150302_B9003r_180928023711s.nc4','xco2_apriori');
lat2 = ncread('oco2_LtCO2_150302_B9003r_180928023711s.nc4','latitude');
lon2 = ncread('oco2_LtCO2_150302_B9003r_180928023711s.nc4','longitude');
un2 = ncread('oco2_LtCO2_150302_B9003r_180928023711s.nc4','xco2_uncertainty');

co3 = ncread('oco2_LtCO2_150228_B9003r_180928023504s.nc4','xco2_apriori');
lat3 = ncread('oco2_LtCO2_150228_B9003r_180928023504s.nc4','latitude');
lon3 = ncread('oco2_LtCO2_150228_B9003r_180928023504s.nc4','longitude');
un3 = ncread('oco2_LtCO2_150228_B9003r_180928023504s.nc4','xco2_uncertainty');

co4 = ncread('oco2_LtCO2_150326_B9003r_180928032641s.nc4','xco2_apriori');
lat4 = ncread('oco2_LtCO2_150326_B9003r_180928032641s.nc4','latitude');
lon4 = ncread('oco2_LtCO2_150326_B9003r_180928032641s.nc4','longitude');
un4 = ncread('oco2_LtCO2_150326_B9003r_180928032641s.nc4','xco2_uncertainty');

me2015 = mean([mean(co1),mean(co2),mean(co3),mean(co4)])
un2015 = mean([mean(un1),mean(un2),mean(un3),mean(un4)])

%{
%figure;
%plot(time,co1)
figure;
scatter(lon1,lat1,[],co1,"filled")
hold on
scatter(lon2,lat2,[],co2,"filled")
scatter(lon3,lat3,[],co3,"filled")
scatter(lon4,lat4,[],co4,"filled")
hold off
title('2015')
colorbar
%}

%%%%%%2016%%%%%
co1 = ncread('oco2_LtCO2_160220_B9003r_180928124341s.nc4','xco2_apriori');
lat1 = ncread('oco2_LtCO2_160220_B9003r_180928124341s.nc4','latitude');
lon1 = ncread('oco2_LtCO2_160220_B9003r_180928124341s.nc4','longitude');
un1 = ncread('oco2_LtCO2_160220_B9003r_180928124341s.nc4','xco2_uncertainty');

co2 = ncread('oco2_LtCO2_160414_B9003r_180928141907s.nc4','xco2_apriori');
lat2 = ncread('oco2_LtCO2_160414_B9003r_180928141907s.nc4','latitude');
lon2 = ncread('oco2_LtCO2_160414_B9003r_180928141907s.nc4','longitude');

co3 = ncread('oco2_LtCO2_160316_B9003r_180928133652s.nc4','xco2_apriori');
lat3 = ncread('oco2_LtCO2_160316_B9003r_180928133652s.nc4','latitude');
lon3 = ncread('oco2_LtCO2_160316_B9003r_180928133652s.nc4','longitude');

co4 = ncread('oco2_LtCO2_160322_B9003r_180928134915s.nc4','xco2_apriori');
lat4 = ncread('oco2_LtCO2_160322_B9003r_180928134915s.nc4','latitude');
lon4 = ncread('oco2_LtCO2_160322_B9003r_180928134915s.nc4','longitude');

co5 = ncread('oco2_LtCO2_160229_B9003r_180928130424s.nc4','xco2_apriori');
lat5 = ncread('oco2_LtCO2_160229_B9003r_180928130424s.nc4','latitude');
lon5 = ncread('oco2_LtCO2_160229_B9003r_180928130424s.nc4','longitude');

me2016 = mean([mean(co1),mean(co2),mean(co3),mean(co4),mean(co5)])
un2016 = mean([mean(un1)])

%{
figure;
scatter(lon1,lat1,[],co1,"filled")
hold on
scatter(lon2,lat2,[],co2,"filled")
scatter(lon3,lat3,[],co3,"filled")
scatter(lon4,lat4,[],co4,"filled")
scatter(lon5,lat5,[],co5,"filled")
hold off
title('2016')
colorbar
%}

%%%%2017%%%%
co1 = ncread('oco2_LtCO2_170613_B9003r_180929054656s.nc4','xco2_apriori');
lat1 = ncread('oco2_LtCO2_170613_B9003r_180929054656s.nc4','latitude');
lon1 = ncread('oco2_LtCO2_170613_B9003r_180929054656s.nc4','longitude');
un1 = ncread('oco2_LtCO2_170613_B9003r_180929054656s.nc4','xco2_uncertainty');

co2 = ncread('oco2_LtCO2_170617_B9003r_180929055636s.nc4','xco2_apriori');
lat2 = ncread('oco2_LtCO2_170617_B9003r_180929055636s.nc4','latitude');
lon2 = ncread('oco2_LtCO2_170617_B9003r_180929055636s.nc4','longitude');

co3 = ncread('oco2_LtCO2_170616_B9003r_180929055214s.nc4','xco2_apriori');
lat3 = ncread('oco2_LtCO2_170616_B9003r_180929055214s.nc4','latitude');
lon3 = ncread('oco2_LtCO2_170616_B9003r_180929055214s.nc4','longitude');

co4 = ncread('oco2_LtCO2_170615_B9003r_180929055135s.nc4','xco2_apriori');
lat4 = ncread('oco2_LtCO2_170615_B9003r_180929055135s.nc4','latitude');
lon4 = ncread('oco2_LtCO2_170615_B9003r_180929055135s.nc4','longitude');

co5 = ncread('oco2_LtCO2_170614_B9003r_180929054726s.nc4','xco2_apriori');
lat5 = ncread('oco2_LtCO2_170614_B9003r_180929054726s.nc4','latitude');
lon5 = ncread('oco2_LtCO2_170614_B9003r_180929054726s.nc4','longitude');

me2017 = mean([mean(co1),mean(co2),mean(co3),mean(co4),mean(co5)])
un2017 = mean([mean(un1)])

%{
figure;
scatter(lon1,lat1,[],co1,"filled")
hold on
scatter(lon2,lat2,[],co2,"filled")
scatter(lon3,lat3,[],co3,"filled")
scatter(lon4,lat4,[],co4,"filled")
scatter(lon5,lat5,[],co5,"filled")
hold off
title('2017')
colorbar
%}

%%%%2018%%%%
co1 = ncread('oco2_LtCO2_180701_B9003r_180929170701s.nc4','xco2_apriori');
lat1 = ncread('oco2_LtCO2_180701_B9003r_180929170701s.nc4','latitude');
lon1 = ncread('oco2_LtCO2_180701_B9003r_180929170701s.nc4','longitude');
un1 = ncread('oco2_LtCO2_180701_B9003r_180929170701s.nc4','xco2_uncertainty');


co2 = ncread('oco2_LtCO2_180524_B9003r_180929154542s.nc4','xco2_apriori');
lat2 = ncread('oco2_LtCO2_180524_B9003r_180929154542s.nc4','latitude');
lon2 = ncread('oco2_LtCO2_180524_B9003r_180929154542s.nc4','longitude');

co3 = ncread('oco2_LtCO2_180330_B9003r_180929135442s.nc4','xco2_apriori');
lat3 = ncread('oco2_LtCO2_180330_B9003r_180929135442s.nc4','latitude');
lon3 = ncread('oco2_LtCO2_180330_B9003r_180929135442s.nc4','longitude');

co4 = ncread('oco2_LtCO2_180301_B9003r_180929125000s.nc4','xco2_apriori');
lat4 = ncread('oco2_LtCO2_180301_B9003r_180929125000s.nc4','latitude');
lon4 = ncread('oco2_LtCO2_180301_B9003r_180929125000s.nc4','longitude');

co5 = ncread('oco2_LtCO2_180128_B9003r_180929115855s.nc4','xco2_apriori');
lat5 = ncread('oco2_LtCO2_180128_B9003r_180929115855s.nc4','latitude');
lon5 = ncread('oco2_LtCO2_180128_B9003r_180929115855s.nc4','longitude');

me2018 = mean([mean(co1),mean(co2),mean(co3),mean(co4),mean(co5)])
un2018 = mean([mean(un1)])

%{
figure;
scatter(lon1,lat1,[],co1,"filled")
hold on
scatter(lon2,lat2,[],co2,"filled")
scatter(lon3,lat3,[],co3,"filled")
scatter(lon4,lat4,[],co4,"filled")
scatter(lon5,lat5,[],co5,"filled")
hold off
title('2018')
colorbar
%}

%%%%2019%%%%
co1 = ncread('oco2_LtCO2_190408_B9003r_190524035839s.nc4','xco2_apriori');
lat1 = ncread('oco2_LtCO2_190408_B9003r_190524035839s.nc4','latitude');
lon1 = ncread('oco2_LtCO2_190408_B9003r_190524035839s.nc4','longitude');
un1 = ncread('oco2_LtCO2_190408_B9003r_190524035839s.nc4','xco2_uncertainty');

co2 = ncread('oco2_LtCO2_190604_B9003r_190801021137s.nc4','xco2_apriori');
lat2 = ncread('oco2_LtCO2_190604_B9003r_190801021137s.nc4','latitude');
lon2 = ncread('oco2_LtCO2_190604_B9003r_190801021137s.nc4','longitude');

co3 = ncread('oco2_LtCO2_190518_B9003r_190615011325s.nc4','xco2_apriori');
lat3 = ncread('oco2_LtCO2_190518_B9003r_190615011325s.nc4','latitude');
lon3 = ncread('oco2_LtCO2_190518_B9003r_190615011325s.nc4','longitude');

co4 = ncread('oco2_LtCO2_190415_B9003r_190524042030s.nc4','xco2_apriori');
lat4 = ncread('oco2_LtCO2_190415_B9003r_190524042030s.nc4','latitude');
lon4 = ncread('oco2_LtCO2_190415_B9003r_190524042030s.nc4','longitude');

co5 = ncread('oco2_LtCO2_190329_B9003r_190517051350s.nc4','xco2_apriori');
lat5 = ncread('oco2_LtCO2_190329_B9003r_190517051350s.nc4','latitude');
lon5 = ncread('oco2_LtCO2_190329_B9003r_190517051350s.nc4','longitude');

me2019 = mean([mean(co1),mean(co2),mean(co3),mean(co4),mean(co5)])
un2019 = mean([mean(un1)])

%{
figure;
scatter(lon1,lat1,[],co1,"filled")
hold on
scatter(lon2,lat2,[],co2,"filled")
scatter(lon3,lat3,[],co3,"filled")
scatter(lon4,lat4,[],co4,"filled")
scatter(lon5,lat5,[],co5,"filled")
hold off
title('2019')
colorbar
%}

%%%%2020%%%%
co1 = ncread('oco2_LtCO2_190921_B9003r_191231024751s.nc4','xco2_apriori');
lat1 = ncread('oco2_LtCO2_190921_B9003r_191231024751s.nc4','latitude');
lon1 = ncread('oco2_LtCO2_190921_B9003r_191231024751s.nc4','longitude');
un1 = ncread('oco2_LtCO2_190921_B9003r_191231024751s.nc4','xco2_uncertainty');

co2 = ncread('oco2_LtCO2_190925_B9003r_191231025549s.nc4','xco2_apriori');
lat2 = ncread('oco2_LtCO2_190925_B9003r_191231025549s.nc4','latitude');
lon2 = ncread('oco2_LtCO2_190925_B9003r_191231025549s.nc4','longitude');

co3 = ncread('oco2_LtCO2_200102_B9003r_200204190440s.nc4','xco2_apriori');
lat3 = ncread('oco2_LtCO2_200102_B9003r_200204190440s.nc4','latitude');
lon3 = ncread('oco2_LtCO2_200102_B9003r_200204190440s.nc4','longitude');

co4 = ncread('oco2_LtCO2_200120_B9003r_200204193223s.nc4','xco2_apriori');
lat4 = ncread('oco2_LtCO2_200120_B9003r_200204193223s.nc4','latitude');
lon4 = ncread('oco2_LtCO2_200120_B9003r_200204193223s.nc4','longitude');

co5 = ncread('oco2_LtCO2_200113_B9003r_200204191752s.nc4','xco2_apriori');
lat5 = ncread('oco2_LtCO2_200113_B9003r_200204191752s.nc4','latitude');
lon5 = ncread('oco2_LtCO2_200113_B9003r_200204191752s.nc4','longitude');

co6 = ncread('oco2_LtCO2_200117_B9003r_200204192650s.nc4','xco2_apriori');
lat6 = ncread('oco2_LtCO2_200117_B9003r_200204192650s.nc4','latitude');
lon6 = ncread('oco2_LtCO2_200117_B9003r_200204192650s.nc4','longitude');

me2020 = mean([mean(co1),mean(co2),mean(co3),mean(co4),mean(co5),mean(co6)])
un2020 = mean([mean(un1)])

%{
%figure;
%plot(time,co1)
figure;
scatter(lon2,lat2,[],co2,"filled")
hold on
scatter(lon1,lat1,[],co1,"filled")
scatter(lon3,lat3,[],co3,"filled")
scatter(lon4,lat4,[],co4,"filled")
scatter(lon5,lat5,[],co5,"filled")
scatter(lon6,lat6,[],co6,"filled")
hold off
title('2020')
colorbar
%}

y = [2014,2015,2016,2017,2018,2019,2020];
me = [me2014,me2015,me2016,me2017,me2018,me2019,me2020];
er = [un2014,un2015,un2016,un2017,un2018,un2019,un2020];
errorbar(y,me,er,'r*--')
xlabel('year')
ylabel('CO_2 (ppm)')
grid;
title('CO_2 mean in the atmosphere per year')
xlim([2013.5,2020.5])
ylim([394,409])