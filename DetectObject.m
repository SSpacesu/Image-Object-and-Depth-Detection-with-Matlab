function [bboxes,scores,labels] = DetectObject(detector, img)
%DETECTOBJECT Summary of this function goes here
%   Detailed explanation goes here
    [bboxes, scores, labels] = detect(detector, img);
end