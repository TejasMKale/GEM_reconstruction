model = {final{1},final{2},final{3},final{4},final{5},final{6}};
exchange_rxns = cell(numel(model),1);

for i=1:numel(model)
    exchange_rxns{i} = final{i}.rxns(startsWith(final{i}.rxns, {'EX_', 'DM_'}));
end

exchange_M9 = { 'EX_cpd00001_e0', 'EX_cpd00007_e0', 'EX_cpd00009_e0', 'EX_cpd00027_e0', 'EX_cpd00030_e0','EX_cpd11595_e0', 'EX_cpd00034_e0', 'EX_cpd00048_e0', 'EX_cpd00058_e0', 'EX_cpd00063_e0', 'EX_cpd00067_e0', 'EX_cpd00099_e0', 'EX_cpd00149_e0', 'EX_cpd00205_e0', 'EX_cpd00254_e0', 'EX_cpd00531_e0', 'EX_cpd00971_e0', 'EX_cpd01012_e0', 'EX_cpd01048_e0', 'EX_cpd10515_e0', 'EX_cpd10516_e0', 'EX_cpd00013_e0', 'EX_cpd00011_e0'};


for i = 1:numel(exchange_rxns)
    for j=1:numel(exchange_rxns{i})
    model{i} = changeRxnBounds(model{i}, exchange_rxns{i}{j}, 0, 'l');
    model{i} = changeRxnBounds(model{i}, exchange_rxns{i}{j}, 0, 'u');
    end
end


o = cell(numel(model),1);
for i = 1:numel(exchange_M9)
    for j=1:numel(model)
        model{j} = changeRxnBounds(model{j}, exchange_M9{i}, -100, 'l');
        o{j} = optimizeCbModel(model{j}).f;
    end
end


