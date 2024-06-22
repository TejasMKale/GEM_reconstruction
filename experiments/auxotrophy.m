% Auxotrophy

metabolites = {'EX_cpd00035_e0', 'EX_cpd00051_e0', 'EX_cpd00132_e0', 'EX_cpd00041_e0', 'EX_cpd00084_e0', 'EX_cpd00053_e0', 'EX_cpd00023_e0', 'EX_cpd00033_e0', 'EX_cpd00119_e0', 'EX_cpd00322_e0', 'EX_cpd00107_e0', 'EX_cpd00039_e0', 'EX_cpd00060_e0', 'EX_cpd00066_e0','EX_cpd00129_e0', 'EX_cpd00054_e0', 'EX_cpd00161_e0', 'EX_cpd00065_e0','EX_cpd00069_e0', 'EX_cpd00156_e0','EX_cpd00027_e0','EX_cpd00029_e0','EX_cpd00179_e0','EX_cpd00001_e0','EX_cpd00007_e0','EX_cpd00009_e0','EX_cpd00030_e0','EX_cpd00034_e0','EX_cpd00048_e0','EX_cpd00058_e0','EX_cpd00063_e0','EX_cpd00067_e0','EX_cpd00099_e0','EX_cpd00149_e0','EX_cpd00205_e0','EX_cpd00254_e0','EX_cpd00531_e0','EX_cpd00971_e0','EX_cpd01012_e0','EX_cpd01048_e0','EX_cpd10515_e0','EX_cpd10516_e0','EX_cpd11595_e0','EX_cpd00013_e0','EX_cpd00016_e0','EX_cpd00059_e0','EX_cpd00087_e0','EX_cpd00093_e0','EX_cpd00133_e0','EX_cpd00166_e0','EX_cpd00218_e0','EX_cpd00220_e0','EX_cpd00266_e0','EX_cpd00304_e0','EX_cpd00305_e0','EX_cpd00365_e0','EX_cpd00423_e0','EX_cpd00577_e0','EX_cpd00209_e0','EX_cpd00098_e0','EX_cpd00644_e0','EX_cpd00003_e0'};

for i=1:numel(metabolites)
    model = changeRxnBounds(m_final{1},metabolites{i},0,'l');
    fluxhi467{i} = optimizeCbModel(model).f;
end

for i=1:numel(metabolites)
    model = changeRxnBounds(m_final{2},metabolites{i},0,'l');
    fluxrdkw20{i} = optimizeCbModel(model).f;
end

for i=1:numel(metabolites)
    model = changeRxnBounds(m_final{3},metabolites{i},0,'l');
    fluxm12125{i} = optimizeCbModel(model).f;
end

for i=1:numel(metabolites)
    model = changeRxnBounds(m_final{4},metabolites{i},0,'l');
    fluxkr494{i} = optimizeCbModel(model).f;
end

for i=1:numel(metabolites)
    model = changeRxnBounds(m_final{5},metabolites{i},0,'l');
    fluxn477{i} = optimizeCbModel(model).f;
end



for i=1:numel(metabolites)
    model = changeRxnBounds(m_final{6},metabolites{i},0,'l');
    fluxb10211{i} = optimizeCbModel(model).f;
end