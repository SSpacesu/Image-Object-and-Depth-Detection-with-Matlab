function depthMap = depthMap(model, img)
   
    dpro.py.torch.cuda.empty_cache();
    tic;
    depthMap = estimateDepth(model, img, ExecutionEnvironment="gpu");
    fprintf("Depth Pro: %.2f seconds\n", toc);
end
