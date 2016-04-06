function [ tag_form ] = tagFormation(initial_formation, target_formation)
% assigns tags to marchers in initial_formation stuff
tag_form = target_formation;
tag = 1;
for i = 1:numel(target_formation)
    if tag_form(i) == 1
        tag_form(i) = tag;
        tag = tag + 1;
    end
end