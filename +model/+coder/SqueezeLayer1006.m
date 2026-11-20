classdef SqueezeLayer1006 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.
    %#codegen

    %#ok<*PROPLC>
    %#ok<*NBRAK>
    %#ok<*INUSL>
    %#ok<*VARARG>
    properties (Learnable)
    end

    properties (State)
    end

    properties
        Vars
        NumDims
    end

    methods(Static, Hidden)
        % Specify the properties of the class that will not be modified
        % after the first assignment.
        function p = matlabCodegenNontunableProperties(~)
            p = {
                % Constants, i.e., Vars, NumDims and all learnables and states
                'Vars'
                'NumDims'
                };
        end
    end


    methods(Static, Hidden)
        % Instantiate a codegenable layer instance from a MATLAB layer instance
        function this_cg = matlabCodegenToRedirected(mlInstance)
            this_cg = model.coder.SqueezeLayer1006(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = model.SqueezeLayer1006(cgInstance.Name);
            if isstruct(cgInstance.Vars)
                names = fieldnames(cgInstance.Vars);
                for i=1:numel(names)
                    fieldname = names{i};
                    this_ml.Vars.(fieldname) = dlarray(cgInstance.Vars.(fieldname));
                end
            else
                this_ml.Vars = [];
            end
            this_ml.NumDims = cgInstance.NumDims;
        end
    end

    methods
        function this = SqueezeLayer1006(mlInstance)
            this.Name = mlInstance.Name;
            this.OutputNames = {'predicted_depth'};
            if isstruct(mlInstance.Vars)
                names = fieldnames(mlInstance.Vars);
                for i=1:numel(names)
                    fieldname = names{i};
                    this.Vars.(fieldname) = model.coder.ops.extractIfDlarray(mlInstance.Vars.(fieldname));
                end
            else
                this.Vars = [];
            end

            this.NumDims = mlInstance.NumDims;
        end

        function [predicted_depth] = predict(this, x_Mul_1_output_0__)
            if isdlarray(x_Mul_1_output_0__)
                x_Mul_1_output_0_ = stripdims(x_Mul_1_output_0__);
            else
                x_Mul_1_output_0_ = x_Mul_1_output_0__;
            end
            x_Mul_1_output_0NumDims = 4;
            x_Mul_1_output_0 = model.coder.ops.permuteInputVar(x_Mul_1_output_0_, [4 3 1 2], 4);

            [predicted_depth__, predicted_depthNumDims__] = SqueezeGraph1096(this, x_Mul_1_output_0, x_Mul_1_output_0NumDims, false);
            predicted_depth_ = model.coder.ops.permuteOutputVar(predicted_depth__, ['as-is'], 3);

            predicted_depth = dlarray(single(predicted_depth_), repmat('U', 1, max(2, coder.const(predicted_depthNumDims__))));
        end

        function [predicted_depth, predicted_depthNumDims1097] = SqueezeGraph1096(this, x_Mul_1_output_0, x_Mul_1_output_0NumDims, Training)

            % Execute the operators:
            % Squeeze:
            [predicted_depth, predicted_depthNumDims] = model.coder.ops.onnxSqueeze(x_Mul_1_output_0, this.Vars.x_Constant_22_output, coder.const(x_Mul_1_output_0NumDims));

            % Set graph output arguments
            predicted_depthNumDims1097 = coder.const(predicted_depthNumDims);

        end

    end

end