function depthMap = depthMap(model, img)
    t = tic;
    depthMap = double(model.predict(im2uint8(img)));
    fprintf("Depth Pro FP16: %.2f seconds\n", toc(t));
end