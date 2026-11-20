function [Y, numDimsY] = onnxResize(X, sizesOrScales, varargin)
% Depth Anything's five Resize nodes use bilinear, corner-aligned resizing.
if isa(sizesOrScales, 'dlarray')
    sizesOrScales = extractdata(sizesOrScales);
end
sizesOrScales = double(gather(sizesOrScales));

% The ONNX vector is NCHW. The importer passes X in reverse order, WHCN.
outputSize = reshape(sizesOrScales([4 3]), 1, 2);
batchAndChannels = reshape(sizesOrScales(1:2), 1, 2);
if ~isequal(batchAndChannels, [size(X, 4), size(X, 3)])
    % The refinenet1 node passes unit scales for batch and channels.
    outputSize = floor([size(X, 1), size(X, 2)] .* outputSize);
end

Y = dlresize(stripdims(X), OutputSize=outputSize, DataFormat="SSCB", ...
    Method="linear", GeometricTransformMode="aligned-corners");
Y = stripdims(Y);
numDimsY = 4;
end
