%ParrotBiLIME
ParrotBiHamNorm = normalize(ParrotBiHam)

blackbox = fitcecoc(ParrotBiHam, Y)
 queryPoint = data_te(end,:)

 rng
 results = lime(blackbox,'QueryPoint', queryPoint, 'NumImportantPredictors',54,...
    'SimpleModelType','linear')


f = plot(results);
f.CurrentAxes.TickLabelInterpreter = 'none';


%DBPowerBi
blackbox = fitcecoc(DBPower_Bi, Y)
 %queryPoint için test verisinin ilk satırını elle yapıştırdım

 rng
 results = lime(blackbox,'QueryPoint', queryPoint, 'NumImportantPredictors',54,...
    'SimpleModelType','linear')


f = plot(results);
f.CurrentAxes.TickLabelInterpreter = 'none';

%DJISparkBi
blackbox = fitcecoc(DJISparkBi, Y)
queryPoint = data_te(end,:)


 rng
 results = lime(blackbox,'QueryPoint', queryPoint, 'NumImportantPredictors',54,...
    'SimpleModelType','linear')


f = plot(results);
f.CurrentAxes.TickLabelInterpreter = 'none';

%Parrot Uni
blackbox = fitcecoc(ParrotUni, Y)
queryPoint = data_te(end,:)


 rng
 results = lime(blackbox,'QueryPoint', queryPoint, 'NumImportantPredictors',18,...
    'SimpleModelType','linear')


f = plot(results);
f.CurrentAxes.TickLabelInterpreter = 'none';

%DBPower Uni
blackbox = fitcecoc(DBPowerUni, Y)
queryPoint = data_te(end,:)


 rng
 results = lime(blackbox,'QueryPoint', queryPoint, 'NumImportantPredictors',18,...
    'SimpleModelType','linear')


f = plot(results);
f.CurrentAxes.TickLabelInterpreter = 'none';


%DJISpark Uni
blackbox = fitcecoc(DJISpark, Y)
queryPoint = data_te(end,:)


 rng
 results = lime(blackbox,'QueryPoint', queryPoint, 'NumImportantPredictors',18,...
    'SimpleModelType','linear')


f = plot(results);
f.CurrentAxes.TickLabelInterpreter = 'none';