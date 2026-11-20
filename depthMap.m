function depthMap = depthMap(model, img)
    tic;
    dpro.py.torch.cuda.empty_cache();
    fprintf("Cache cleared: %.2f seconds\n", toc);
    tic;
    depthMap = estimateDepth(model, img, ExecutionEnvironment="gpu");
    fprintf("Depth Pro: %.2f seconds\n", toc);
end
