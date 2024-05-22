% additional reactions 
name = {'pe140_rxn','pe160_rxn','pg160_1rxn','pg160_2rxn','biotin_trf','biotin_ex','biotin_atp','biotin_h','biotin_fe'};


reactions = printRxnFormula(curated,{'pe140_rxn','pe160_rxn','pg160_1rxn','pg160_2rxn','biotin_trf','biotin_ex','biotin_atp','biotin_h','biotin_fe'});

% fe4_4s_name = {'fe4_4s_rxn1','fe4_4s_rxn2'};
% fe4_4s = {'2 cpd24682[c0] + 2 cpd00067[c0] + 2 cpd00418[c0] -> 2 cpd22092[c0] + 2 cpd10516[c0] + cpd00001[c0] + cpd00659[c0]','cpd22092[c0] + cpd10515[c0] -> cpd24682[c0]'};
% Lipooligosaccharide = {'cpd00457[c0] + cpd37303[c0] -> cpd00067[c0] + cpd20849[c0]','cpd00002[c0] + cpd00001[c0] + cpd20849[c0]  -> cpd00008[c0] + cpd00067[c0] + cpd20849[p0] + cpd00009[c0]','cpd00112[c0] + cpd20849[c0] -> cpd00046[c0] + cpd00067[c0] + cpd37304[c0]','cpd00002[c0] + cpd00001[c0] + cpd20849[p0]  -> cpd00008[c0] + cpd00067[c0] + cpd20849[e0] + cpd00009[c0]','cpd00002[c0] + cpd00001[c0] + cpd20849[c0]  -> cpd00008[c0] + cpd00067[c0] + cpd20849[p0] + cpd00009[c0]','cpd00002[c0] + cpd00001[c0] + cpd20849[p0]  -> cpd00008[c0] + cpd00067[c0] + cpd20849[e0] + cpd00009[c0]','cpd00002[c0] + cpd00098[c0]  -> cpd00008[c0] + cpd00457[c0] + cpd00067[c0]','cpd00098[p0] + cpd00067[p0]  -> cpd00098[c0] + cpd00067[c0]','cpd00098[e0]  <=> cpd00098[p0]','cpd00507[c0] + cpd00001[c0]  -> cpd00098[c0] + cpd00080[c0] + cpd00067[c0]','cpd00112[c0] + cpd20849[c0]  -> cpd00046[c0] + cpd00067[c0] + cpd37304[c0]'};
% lipoate = {'cpd00339 + cpd00541 <= cpd00567 + cpd01454','cpd00001[c0] + cpd00002[c0] + cpd00541[1] <=> cpd00008 + cpd00009 + cpd00067 + cpd00541','cpd00002 + cpd00541 => cpd00012 + cpd14955','cpd00067 + cpd01454 + cpd28038 <=> cpd00541 + cpd04098 + cpd05267'};
IgA = {'cpd00001[c0] + cpd28498[c0] <=>',' cpd28489[c0] -> cpd28498[c0] + cpd00001[c0]','cpd28498[e0] ->', 'cpd28498[e0] <=> cpd28498[c0]','cpd28489[c0] <=> cpd28498[c0]'};
iga_names = {'iga1','iga2','Ex_iga','trans_iga','trans_iga2'};
ompP1 = {'cpd00214[c0] <=> cpd00214[e0]','cpd15237[c0] <=> cpd15237[e0]'};
ompP1_names = {'rxn08704_c0','rxn08705_c0'};
% Lipooligosaccharide_names = {'los1','los2','los3','los4','los5','los6','los7','los8','los9','los10','los11'};
exchange_names = {'EX_cpd01048_e0','EX_cpd11595_e0','EX_cpd00107_e0','EX_cpd00066_e0'};
exchange_reactions = {'cpd01048[e0] <=>','cpd11595[e0] <=>','cpd00107[e0] <=> ', 'cpd00066[e0] <=> '};
los_SEED_names = {'rxn08243','rxn08244','rxn08407','rxn08772','rxn08789','rxn09021'};
% los_SEED_rxns = {'cpd00001[c0] + cpd00002[c0] + cpd15432[c0] -> cpd00008[c0] + cpd00009[c0] + cpd00067[c0] + cpd15432[p0]', 'cpd15432[p0] <=> cpd15432[e0]','4 cpd00067[p0] + cpd15432[p0] + cpd15458[p0] <=> cpd02229[p0] + cpd15457[p0]','cpd15432[p0] + cpd15576[p0] -> 2 cpd00067[p0] + cpd00286[p0] + cpd15392[p0]','cpd00067[e0] + cpd00214[e0] + cpd15432[e0] <=> cpd00001[e0] + cpd15482[e0]' , 'cpd15432[p0] + cpd15519[p0] <=> cpd02229[p0] + cpd15518[p0]'};
los_SEED_rxns = {'cpd00001[c0] + cpd00002[c0] + cpd15432[c0] -> cpd00008[c0] + cpd00009[c0] + cpd00067[c0] + cpd15432[p0]', 'cpd15432[c0] <=> cpd15432[e0]','4 cpd00067[c0] + cpd15432[c0] + cpd15458[c0] <=> cpd02229[c0] + cpd15457[c0]','cpd15432[c0] + cpd15576[c0] -> 2 cpd00067[c0] + cpd00286[c0] + cpd15392[c0]','cpd00067[e0] + cpd00214[e0] + cpd15432[e0] <=> cpd00001[e0] + cpd15482[e0]' , 'cpd15432[c0] + cpd15519[c0] <=> cpd02229[c0] + cpd15518[c0]'};
ribitol = {'cpd00052[c0] + cpd00786[c0]  <=> cpd00012[c0]  + cpd00584[c0] ',
    'cpd00006[c0] + cpd00786[c0] <=> cpd00005[c0] + cpd00067[c0] + cpd00171[c0]',
    'cpd00003[c0] + cpd00786[c0] <=> cpd00004[c0] + cpd00067[c0] + cpd00171[c0]'};

ribitol_names = {'ribitol_1','rxn01113_c0','rxn01112_c0'};

neu5ac_name = {'rxn1316','rxn3467','rxn06394','rxn6752','rxn6760'};
neu5ac = {'cpd00001[c0] + cpd00061[c0] + cpd00492[c0] -> cpd00009[c0] + cpd00232[c0]','cpd00001[c0] + cpd03660[c0] -> cpd00232[c0] + cpd03661[c0]','cpd00001[c0] + cpd12599[c0] -> cpd00232[c0] + cpd00947[c0]','cpd00001[c0] + cpd02996[c0] -> cpd00232[c0] + cpd03656[c0]','cpd00001[c0] + cpd02999[c0] -> cpd00232[c0] + cpd12640[c0]'};
Pcho = {'cpd00002[c0] + cpd00098[c0] -> cpd00008[c0] + cpd00067[c0] + cpd00457[c0]','cpd00001[c0] + cpd00507[c0] -> cpd00067[c0] + cpd00100[c0] + cpd00457[c0]','cpd00001[c0] + cpd00457[c0] <=> cpd00009[c0] + cpd00098[c0]','cpd00001[c0] + cpd11624[c0] -> cpd00067[c0] + cpd00457[c0] + cpd11423[c0]'};
Pcho_name = {'rxn00751_c0','rxn01886_c0','rxn04684_c0','rxn05964_c0'};
capsule_rxn_name = {'rxn01571','rxn12795', 'rxn06959'  ,'rxn01570' ,'rxn03970' ,'rxn03971'  ,'rxn39567','rxn31712'  ,'rxn31488'  ,'rxn39666','rxn07229','rxn31485','rxn31486','rxn31487','rxn31711','rxn39565',  'rxn12399' , 'rxn30781', 'rxn30782', 'rxn31947', 'rxn32505','rxn17923','rxn18480','rxn29876','rxn17779','rxn18679','rxn29825','rxn17946','rxn17585','Ex_oligo','rxn39611','ex_capsule'};

capsule_rxns_list = {'cpd00002[c0] + cpd00010[c0] + cpd01059[c0] -> cpd00012[c0] + cpd00018[c0] + cpd00067[c0] + cpd00321[c0]','cpd01059[e0] <=> cpd01059[p0]',' cpd00321[c0] + cpd13053[c0] -> cpd00002[c0] + cpd00010[c0] + cpd01059[c0]','cpd00006[c0] + cpd00010[c0] + cpd01733[c0] <=> cpd00005[c0] + cpd00067[c0] + cpd00321[c0]','cpd00001[c0] + cpd00003[c0] + cpd01733[c0] <=> cpd00004[c0] + 2 cpd00067[c0] + cpd01059[c0]','cpd00001[c0] + cpd00006[c0] + cpd01733[c0] <=> cpd00005[c0] + 2 cpd00067[c0] + cpd01059[c0]','cpd00083[c0] + cpd31382[c0] <=> cpd00031[c0] + cpd21500[c0]','cpd00083[c0] + cpd29932[c0] <=> cpd00031[c0] + cpd21500[c0]','cpd00083[c0] + cpd21500[c0] <=> cpd00031[c0] + cpd21501[c0]','cpd00083[c0] + cpd21501[c0] <=> cpd00031[c0] + cpd21502[c0]','cpd00001[c0] + cpd12898[c0] -> cpd01059[c0] + cpd11675[c0]','cpd00014[c0] + cpd11675[c0] -> cpd00037[c0] + cpd12559[c0]',  'cpd00014[p0] + cpd11675[p0] -> cpd00037[p0] + cpd12559[p0]', 'cpd00083[c0] + cpd11675[c0] <=> cpd00031[c0] + cpd21500[c0]','cpd00014[c0] + cpd29932[c0] -> cpd00037[c0] + cpd12559[c0]','cpd00037[c0] + cpd12559[c0] <=> cpd00014[c0] + cpd31382[c0]','cpd00067[c0] + cpd01733[e0] <=> cpd00067[e0] + cpd01733[c0]','cpd00003[c0] + cpd01733[c0] -> cpd00004[c0] + cpd01059[c0]','cpd00006[c0] + cpd01733[c0] -> cpd00005[c0] + cpd01059[c0]','cpd00005[c0] + cpd00067[c0] + cpd00321[c0] <=> cpd00006[c0] + cpd00010[c0] + cpd01733[c0]','cpd01733[c0] <=> cpd01733[e0]','cpd27724[c0] -> cpd00001[c0] + cpd11675[c0]','cpd00001[c0] + cpd00002[c0] + cpd27724[e0] -> cpd00008[c0] + cpd00009[c0] + cpd00067[c0] + cpd27724[c0]','cpd27724[c0] <=> cpd27724[e0]','cpd00067[c0] + cpd01059[c0] + cpd11675[c0] -> cpd00001[c0] + cpd12898[c0]','cpd00001[c0] + cpd00002[c0] + cpd11675[c0] -> cpd00008[c0] + cpd00009[c0] + cpd00067[c0] + cpd11675[e0]','cpd11675[e0] + cpd00067[c0] <=> cpd11675[c0] + cpd00067[e0]','cpd00001[c0] + cpd28177[c0] -> cpd00232[c0] + cpd27724[c0]','cpd00027[c0] + cpd27724[c0] -> cpd00179[c0]','cpd28177[c0] <=> cpd28177[e0]','cpd00083[c0] + cpd21502[c0] <=> cpd00031[c0] + cpd21670[c0]','cpd11675[c0] <=> '};
             
             
             
             
             
             
             
             
                         
             
             
             
             
             
             
m_models = {m_hi467,m_Rdkw20,m_m12125,m_KR494,m_477,m_10211};         
models = {hi467,Rdkw20,m12125,KR494,NTHI477,NTHI10211,m,test};
% models_type  = {hi467,m12125,KR494,NTHI10211};

for i=1:numel(models)
    for j=1:numel(name)
        models{i} = addReaction(models{i},name{j},'reactionFormula',reactions{j});
        
    end
end

for i=1:numel(models)
    for j=1:numel(exchange_names)
        models{i} = addReaction(models{i},exchange_names{j},'reactionFormula',exchange_reactions{j});
    end
end

for i=1:numel(models)
    for j=1:numel(los_SEED_names)
        models{i} = addReaction(models{i},los_SEED_names{j},'reactionFormula',los_SEED_rxns{j});
    end
end



for i=1:numel(models)
    for j=1:numel(iga_names)
        models{i} = addReaction(models{i},iga_names{j},'reactionFormula',IgA{j});
    end
end

% for i=1:numel(models)
%     for j=1:numel(fe4_4s)
%         models{i} = addReaction(models{i},fe4_4s_name{j},'reactionFormula',fe4_4s{j});
%     end
% end

for i=1:numel(models)
    for j=1:numel(neu5ac)
        models{i} = addReaction(models{i},neu5ac_name{j},'reactionFormula',neu5ac{j});
    end
end

for i=1:numel(models)
    for j=1:numel(ribitol)
        models{i} = addReaction(models{i},ribitol_names{j},'reactionFormula',ribitol{j});
    end
end

for i=1:numel(models)
    for j=1:numel(Pcho)
        models{i} = addReaction(models{i},Pcho_name{j},'reactionFormula',Pcho{j});
    end
end

% minimal_models
for i=1:numel(m_models)
    for j=1:numel(name)
        m_models{i} = addReaction(m_models{i},name{j},'reactionFormula',reactions{j});
        
    end
end

for i=1:numel(m_models)
    for j=1:numel(exchange_names)
        m_models{i} = addReaction(m_models{i},exchange_names{j},'reactionFormula',exchange_reactions{j});
    end
end

for i=1:numel(m_models)
    for j=1:numel(los_SEED_names)
        m_models{i} = addReaction(m_models{i},los_SEED_names{j},'reactionFormula',los_SEED_rxns{j});
    end
end



for i=1:numel(m_models)
    for j=1:numel(iga_names)
        m_models{i} = addReaction(m_models{i},iga_names{j},'reactionFormula',IgA{j});
    end
end



for i=1:numel(m_models)
    for j=1:numel(neu5ac)
        m_models{i} = addReaction(m_models{i},neu5ac_name{j},'reactionFormula',neu5ac{j});
    end
end

for i=1:numel(m_models)
    for j=1:numel(ribitol)
        m_models{i} = addReaction(m_models{i},ribitol_names{j},'reactionFormula',ribitol{j});
    end
end

for i=1:numel(m_models)
    for j=1:numel(Pcho)
        m_models{i} = addReaction(m_models{i},Pcho_name{j},'reactionFormula',Pcho{j});
    end
end

models_type  = {models{1},models{3},models{4},models{6},models{7},models{8}};

m_models_type  = {m_models{1},m_models{3},m_models{4},m_models{6}};

for i=1:numel(m_models_type)
    for j=1:numel(capsule_rxn_name)
        m_models_type{i} = addReaction(m_models_type{i},capsule_rxn_name{j},'reactionFormula',capsule_rxns_list{j});
    end
end

% minimal

for i=1:numel(models_type)
    for j=1:numel(capsule_rxn_name)
        models_type{i} = addReaction(models_type{i},capsule_rxn_name{j},'reactionFormula',capsule_rxns_list{j});
    end
end
m_final = {m_models_type{1},m_models{2},m_models_type{2},m_models_type{3},m_models{5},m_models_type{4}};
final = {models_type{1},models{2},models_type{2},models_type{3},models{5},models_type{4},models_type{5},models_type{6}};
% for j=1:numel(name)
%         check = addReaction(check,name{j},'reactionFormula',reactions{j});
% end
