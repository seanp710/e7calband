function [instructions] = calband_transition(initial_formation,target_formation,max_beats)
% main function
tag_initialform = tagInitialForm(initial_formation);
nb = sum(initial_formation);
for tag = 1:nb
    [i_initial,j_initial] = find(tag_initialform == tag);
    [i_target,j_target] = find(tag_targetform == tag);
    if i_initial==i_target && j_initial==j_target % case when no move is needed
        direction = '.';
        wait = max_beats;
    end
    instructions(tag).i_target = i_target;
    instructions(tag).j_target = j_target;
    instructions(tag
end