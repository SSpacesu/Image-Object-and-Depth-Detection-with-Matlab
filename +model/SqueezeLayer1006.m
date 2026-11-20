classdef SqueezeLayer1006 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.

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
        % Specify the path to the class that will be used for codegen
        function name = matlabCodegenRedirect(~)
            name = 'model.coder.SqueezeLayer1006';
        end
    end


    methods
        function this = SqueezeLayer1006(name)
            this.Name = name;
            this.OutputNames = {'predicted_depth'};
        end

        function [predicted_depth] = predict(this, x_Mul_1_output_0)
            if isdlarray(x_Mul_1_output_0)
                x_Mul_1_output_0 = stripdims(x_Mul_1_output_0);
            end
            x_Mul_1_output_0NumDims = 4;
            x_Mul_1_output_0 = model.ops.permuteInputVar(x_Mul_1_output_0, [4 3 1 2], 4);

            [predicted_depth, predicted_depthNumDims] = SqueezeGraph1096(this, x_Mul_1_output_0, x_Mul_1_output_0NumDims, false);
            predicted_depth = model.ops.permuteOutputVar(predicted_depth, ['as-is'], 3);

            predicted_depth = dlarray(single(predicted_depth), repmat('U', 1, max(2, predicted_depthNumDims)));
        end

        function [predicted_depth] = forward(this, x_Mul_1_output_0)
            if isdlarray(x_Mul_1_output_0)
                x_Mul_1_output_0 = stripdims(x_Mul_1_output_0);
            end
            x_Mul_1_output_0NumDims = 4;
            x_Mul_1_output_0 = model.ops.permuteInputVar(x_Mul_1_output_0, [4 3 1 2], 4);

            [predicted_depth, predicted_depthNumDims] = SqueezeGraph1096(this, x_Mul_1_output_0, x_Mul_1_output_0NumDims, true);
            predicted_depth = model.ops.permuteOutputVar(predicted_depth, ['as-is'], 3);

            predicted_depth = dlarray(single(predicted_depth), repmat('U', 1, max(2, predicted_depthNumDims)));
        end

        function [predicted_depth, predicted_depthNumDims1097] = SqueezeGraph1096(this, x_Mul_1_output_0, x_Mul_1_output_0NumDims, Training)

            % Execute the operators:
            % Squeeze:
            [predicted_depth, predicted_depthNumDims] = model.ops.onnxSqueeze(x_Mul_1_output_0, this.Vars.x_Constant_22_output, x_Mul_1_output_0NumDims);

            % Set graph output arguments
            predicted_depthNumDims1097 = predicted_depthNumDims;

        end

    end

end