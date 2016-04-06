function [ tag_form ] = tagFormation(initial_formation)
% assigns tags to marchers in initial_formation stuff
tag_form = initial_formation;
tag = 1;
numel(initial_formation)
for i = 1:numel(initial_formation)
    if tag_form(i) == 1
        tag_form(i) = tag;
        tag = tag + 1;
    end
end