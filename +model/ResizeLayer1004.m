classdef ResizeLayer1004 < nnet.layer.Layer & nnet.layer.Formattable
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
            name = 'model.coder.ResizeLayer1004';
        end
    end


    methods
        function this = ResizeLayer1004(name)
            this.Name = name;
            this.OutputNames = {'x_depth_head_refin_2'};
        end

        function [x_depth_head_refin_2] = predict(this, x_depth_head_refin_9)
            if isdlarray(x_depth_head_refin_9)
                x_depth_head_refin_9 = stripdims(x_depth_head_refin_9);
            end
            x_depth_head_refin_9NumDims = 4;
            x_depth_head_refin_9 = model.ops.permuteInputVar(x_depth_head_refin_9, [4 3 1 2], 4);

            [x_depth_head_refin_2, x_depth_head_refin_2NumDims] = ResizeGraph1076(this, x_depth_head_refin_9, x_depth_head_refin_9NumDims, false);
            x_depth_head_refin_2 = model.ops.permuteOutputVar(x_depth_head_refin_2, [3 4 2 1], 4);

            x_depth_head_refin_2 = dlarray(single(x_depth_head_refin_2), 'SSCB');
        end

        function [x_depth_head_refin_2] = forward(this, x_depth_head_refin_9)
            if isdlarray(x_depth_head_refin_9)
                x_depth_head_refin_9 = stripdims(x_depth_head_refin_9);
            end
            x_depth_head_refin_9NumDims = 4;
            x_depth_head_refin_9 = model.ops.permuteInputVar(x_depth_head_refin_9, [4 3 1 2], 4);

            [x_depth_head_refin_2, x_depth_head_refin_2NumDims] = ResizeGraph1076(this, x_depth_head_refin_9, x_depth_head_refin_9NumDims, true);
            x_depth_head_refin_2 = model.ops.permuteOutputVar(x_depth_head_refin_2, [3 4 2 1], 4);

            x_depth_head_refin_2 = dlarray(single(x_depth_head_refin_2), 'SSCB');
        end

        function [x_depth_head_refin_2, x_depth_head_refin_2NumDims1085] = ResizeGraph1076(this, x_depth_head_refin_9, x_depth_head_refin_9NumDims, Training)

            % Execute the operators:
            % PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (Resize):
            % "Resize" has following attributes:
            % "coordinate_transformation_mode" of "STRING" type; Value stored in "this.Vars.Resizecoordinate_transformation_mode1081"; Number of dimensions stored in "this.NumDims.Resizecoordinate_transformation_mode1081".
            % "cubic_coeff_a" of "FLOAT" type; Value stored in "this.Vars.Resizecubic_coeff_a1082"; Number of dimensions stored in "this.NumDims.Resizecubic_coeff_a1082".
            % "mode" of "STRING" type; Value stored in "this.Vars.Resizemode1083"; Number of dimensions stored in "this.NumDims.Resizemode1083".
            % "nearest_mode" of "STRING" type; Value stored in "this.Vars.Resizenearest_mode1084"; Number of dimensions stored in "this.NumDims.Resizenearest_mode1084".
            [x_depth_head_refin_2, x_depth_head_refin_2NumDims] = model.ops.onnxResize(x_depth_head_refin_9, this.Vars.x_depth_head_refin_1, x_depth_head_refin_9NumDims, this.NumDims.x_depth_head_refin_1, this.Vars.Resizecoordinate_transformation_mode1081, this.Vars.Resizecubic_coeff_a1082, this.Vars.Resizemode1083, this.Vars.Resizenearest_mode1084, this.NumDims.Resizecoordinate_transformation_mode1081, this.NumDims.Resizecubic_coeff_a1082, this.NumDims.Resizemode1083, this.NumDims.Resizenearest_mode1084);

            % Set graph output arguments
            x_depth_head_refin_2NumDims1085 = x_depth_head_refin_2NumDims;

        end

    end

end