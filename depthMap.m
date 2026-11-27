function depthMap = depthMap(model, img)

    og_size = [size(img,1), size(img, 2)];
    t = tic;
    % Resize the image to size model expects
    res_img = imresize(img, [518 518]);

    % Normalize RGB into format that model expects (ImageNet-normalized)
    img_in = im2single(res_img);
    meanRGB = reshape(single([0.485 0.456 0.406]), 1, 1, 3);
    stdRGB = reshape(single([0.229 0.224 0.225]), 1, 1, 3);

    img_in = (img_in - meanRGB) ./ stdRGB;

    % Convert into GPU backed dlarray (if GPU is available) so that predict knows to use GPU.
    if canUseGPU()
        final_in = gpuArray(dlarray(img_in, "SSCB"));
    else
        final_in = dlarray(img_in, "SSCB");
    end

    %Use the model to get heatmap, this returns a dlarray.
    resArray = predict(model, final_in);

    % Gather grabs the the data on GPU VRAM and moves it to system RAM.
    % Extracdata extracts that data lmao

    depthMap = gather(extractdata(resArray));
    depthMap = squeeze(depthMap);
    depthMap = imresize(depthMap, og_size);

    fprintf("Depth Anything V2: %.2f seconds\n", toc(t));
    
end