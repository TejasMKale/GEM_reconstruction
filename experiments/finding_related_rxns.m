% Load your metabolic model data (replace 'your_model_data.mat' with the actual file)
model = ref; % Assuming you have a MATLAB file with your model data

% Specify the target metabolite (e.g., 'loshinf[c]')
targetMetabolite = 'loshinf[c]';

% Find and display reactions associated with the target metabolite
disp(['Reactions associated with ' targetMetabolite ':']);
findAndDisplayReactions(model, targetMetabolite, 0);

% Function to find reactions associated with a metabolite and recursively with other metabolites
function findAndDisplayReactions(model, targetMetabolite, depth)
    % Find reactions involving the target metabolite
    relatedReactions = findRxnsfromMet(model, targetMetabolite);
    
    % Display results for the target metabolite
    disp(['Metabolite: ' targetMetabolite]);
    disp('Related Reactions:');
    disp(relatedReactions);
    disp('-------------------------');
    
    % Find other metabolites involved in the reactions
    for i = 1:numel(relatedReactions)
        currentReaction = relatedReactions{i};
        metabolites = findMetabolitesInReaction(currentReaction);
        
        % Display reactions associated with each metabolite
        for j = 1:numel(metabolites)
            if ~strcmp(metabolites{j}, targetMetabolite)
                % Avoid recursion for the target metabolite to prevent infinite loop
                disp(['Metabolite: ' metabolites{j}]);
                disp('Related Reactions:');
                findAndDisplayReactions(model, metabolites{j}, depth + 1);
                disp('-------------------------');
            end
        end
    end
end

% Function to find metabolites involved in a reaction
function metabolites = findMetabolitesInReaction(reaction)
    % Parse metabolites from the reaction string
    metabolites = regexp(reaction, '\S+', 'match');
    metabolites = metabolites(~ismember(metabolites, {'->', '+'}));
end

% Function to find reactions associated with a metabolite
function relatedReactions = findRxnsfromMet(model, targetMetabolite)
    % Find the index of the metabolite in the model
    metIdx = find(strcmp(model.mets, targetMetabolite));
    
    % Find reactions involving the target metabolite
    relatedReactions = model.rxns(any(model.S(metIdx, :), 1));
end
