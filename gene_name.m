% Example model genes in the given format
gapseq = readCbModel('gapseq.xml');
model_genes = gapseq.genes;

% Initialize cell arrays to store gene symbols and names
gene_symbols = cell(size(model_genes));
gene_names = cell(size(model_genes));

% Loop through each gene ID
for i = 1:numel(model_genes)
    gene_id = model_genes{i};
    
    % Extract the part after 'gp_' and split into accession number and positions
    parts = strsplit(gene_id, '_');
    accession_number = parts{2};
    positions = parts(3:end);
    
    % Query NCBI database to get gene information
    try
        gene_info = getgenbank(accession_number);
        gene_symbols{i} = gene_info.GeneSymbol;
        gene_names{i} = gene_info.Name;
    catch
        gene_symbols{i} = 'Not Found';
        gene_names{i} = 'Not Found';
    end
end

% Display the results
disp('Gene IDs                       Gene Symbols      Gene Names');
disp([model_genes, gene_symbols, gene_names]);
