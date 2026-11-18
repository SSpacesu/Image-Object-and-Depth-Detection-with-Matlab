function depthMap = depthMap(img)

    persistent model
    
    if isempty(model)
        model = depthpro;
    end
   
    depthMap = estimateDepth(model,img);
end
