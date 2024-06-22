mets0 =	  { 'cpd00001[c0]','cpd00012[c0]','cpd00009[c0]','cpd00067[c0]','cpd00056[c0]','cpd00220[c0]','cpd00002[c0]','cpd00008[c0]','cpd00003[c0]','cpd10515[c0]','cpd00004[c0]','cpd10516[c0]','cpd00042[c0]','cpd00006[c0]','cpd00005[c0]','cpd00010[c0]','cpd00062[c0]','cpd00015[c0]','cpd00016[c0]','cpd00060[c0]','cpd00017[c0]','cpd00022[c0]','cpd00054[c0]','cpd00023[c0]','cpd00053[c0]','cpd00035[c0]','cpd00028[c0]','cpd00038[c0]','cpd00041[c0]','cpd00033[c0]','cpd00078[c0]','cpd00039[c0]','cpd00132[c0]','cpd00048[c0]','cpd00051[c0]','cpd00052[c0]','cpd00118[c0]','cpd00065[c0]','cpd00066[c0]','cpd00069[c0]','cpd00070[c0]','cpd00084[c0]','cpd00087[c0]','cpd00201[c0]','cpd00125[c0]','cpd00345[c0]','cpd00216[c0]','cpd00161[c0]','cpd00104[c0]','cpd00107[c0]','cpd00115[c0]','cpd00119[c0]','cpd00156[c0]','cpd00129[c0]','cpd00241[c0]','cpd00264[c0]','cpd00357[c0]','cpd00322[c0]','cpd00356[c0]','cpd00099[c0]','cpd02229[c0]','cpd00030[c0]','cpd00034[c0]','cpd00149[c0]','cpd00244[c0]','cpd00063[c0]','cpd00058[c0]','cpd00205[c0]','cpd11574[c0]','cpd15353[c0]','cpd00254[c0]','cpd11416[c0]','cpd24604[c0]','cpd20849[c0]','cpd15529[p0]','cpd15531[p0]','cpd15538[p0]'};
blc=[];
allrxns = printRxnFormula(models{1});
a = fastcc(models{1},1e-4);
block_rxns = setdiff([1:numel(models{1}.rxns)],a);
for i=1:numel(mets0)
    ids = find(contains(allrxns,mets0{i}));
    blc=[blc,sum(ismember(block_rxns,ids))];
end



% for i=1:numel(model)
%     for j=1:numel(mets0)
%         pr{i}{j} = findRxnsFromMets(models{i},mets0{j});
%     end
% end
