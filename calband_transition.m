function [instructions] = calband_transition(initial_formation,target_formation,max_beats)
% main function
tag_initialform = tagFormation(initial_formation);
tag_targetform = tagFormation(target_formation);
nb = sum(sum(initial_formation));

for tag = 1:nb
    [i_initial,j_initial] = find(tag_initialform == tag); % finds initial coords of marcher
    [i_target,j_target] = find(tag_targetform == tag); % finds final coords
    dRow = i_target - i_initial;
    dCol = j_target - j_initial
    if dRow==0 && d_Col==0 % case when no move is needed
        direction = [direction '.'];
        wait = [wait max_beats];
    else % case when move needed
        switch dRow
            case dRow > 0
                
            case dRow < 0
        end
        
    end
    % 
    instructions(tag).i_target = i_target;
    instructions(tag).j_target = j_target;
    instructions(tag).
end