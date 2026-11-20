function [bboxes,scores,labels] = DetectObject(detector, img)
%DETECTOBJECT Summary of this function goes here
%   Detailed explanation goes here
    tic;
    [bboxes, scores, labels] = detect(detector, img, ExecutionEnvironment="cpu");
    fprintf("yolo: %.2f seconds\n", toc);
end