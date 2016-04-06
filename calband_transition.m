function [instructions] = calband_transition(initial_formation,target_formation,max_beats)
% main function

tag_targetform = tagFormation(target_formation);
nb = sum(sum(initial_formation));

for tag = 1:nb
    [i_initial,j_initial] = find(tag_initialform == tag); % finds initial coords of marcher
    [i_target,j_target]   = find(tag_targetform == tag); % finds final coords
    dRow = i_target - i_initial;
    dCol = j_target - j_initial;
    if dRow==0 && d_Col==0 % case when no move is needed
        direction = '.';
        wait = max_beats;
    else % case when move needed
        switch dRow
            case dRow < 0
                dirWE = repmat('W',1,abs(dRow));
            case dRow > 0
                dirWE = repmat('E',1,abs(dRow));
        end
        switch dCol
            case dCol < 0
                dirNS = repmat('S',1,abs(dRow));
            case dCol > 0
                dirNS = repmat('N',1,abs(dRow));
        end
        direction = strcat('dirWE','dirSN');
    end
    instructions(tag).i_target = i_target;
    instructions(tag).j_target = j_target;
    instructions(tag).direction = direction;
    instructions(tag).wait = wait;
end