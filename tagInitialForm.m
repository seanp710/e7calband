function [ tag_initialform ] = tagInitialForm(initial_formation)
% assigns tags to marchers in initial_formation stuff
tag_initialform = initial_formation;
tag = 1;
for i = numel(initial_formation)
    if tag_initialform(i) == 1
        tag_initialform(i) = tag;
        tag = tag + 1;
    end
end