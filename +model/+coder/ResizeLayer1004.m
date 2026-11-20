classdef ResizeLayer1004 < nnet.layer.Layer & nnet.layer.Formattable
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
            this_cg = model.coder.ResizeLayer1004(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = model.ResizeLayer1004(cgInstance.Name);
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
        function this = ResizeLayer1004(mlInstance)
            this.Name = mlInstance.Name;
            this.OutputNames = {'x_depth_head_refin_2'};
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

        function [x_depth_head_refin_2] = predict(this, x_depth_head_refin_9__)
            if isdlarray(x_depth_head_refin_9__)
                x_depth_head_refin_9_ = stripdims(x_depth_head_refin_9__);
            else
                x_depth_head_refin_9_ = x_depth_head_refin_9__;
            end
            x_depth_head_refin_9NumDims = 4;
            x_depth_head_refin_9 = model.coder.ops.permuteInputVar(x_depth_head_refin_9_, [4 3 1 2], 4);

            [x_depth_head_refin_2__, x_depth_head_refin_2NumDims__] = ResizeGraph1076(this, x_depth_head_refin_9, x_depth_head_refin_9NumDims, false);
            x_depth_head_refin_2_ = model.coder.ops.permuteOutputVar(x_depth_head_refin_2__, [3 4 2 1], 4);

            x_depth_head_refin_2 = dlarray(single(x_depth_head_refin_2_), 'SSCB');
        end

        function [x_depth_head_refin_2, x_depth_head_refin_2NumDims1085] = ResizeGraph1076(this, x_depth_head_refin_9, x_depth_head_refin_9NumDims, Training)

            % Execute the operators:
            % PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (Resize):
            % "Resize" has following attributes:
            % "coordinate_transformation_mode" of "STRING" type; Value stored in "this.Vars.Resizecoordinate_transformation_mode1081"; Number of dimensions stored in "this.NumDims.Resizecoordinate_transformation_mode1081".
            % "cubic_coeff_a" of "FLOAT" type; Value stored in "this.Vars.Resizecubic_coeff_a1082"; Number of dimensions stored in "this.NumDims.Resizecubic_coeff_a1082".
            % "mode" of "STRING" type; Value stored in "this.Vars.Resizemode1083"; Number of dimensions stored in "this.NumDims.Resizemode1083".
            % "nearest_mode" of "STRING" type; Value stored in "this.Vars.Resizenearest_mode1084"; Number of dimensions stored in "this.NumDims.Resizenearest_mode1084".
            [x_depth_head_refin_2, x_depth_head_refin_2NumDims] = model.coder.ops.onnxResize(x_depth_head_refin_9, this.Vars.x_depth_head_refin_1, coder.const(x_depth_head_refin_9NumDims), this.NumDims.x_depth_head_refin_1, this.Vars.Resizecoordinate_transformation_mode1081, this.Vars.Resizecubic_coeff_a1082, this.Vars.Resizemode1083, this.Vars.Resizenearest_mode1084, this.NumDims.Resizecoordinate_transformation_mode1081, this.NumDims.Resizecubic_coeff_a1082, this.NumDims.Resizemode1083, this.NumDims.Resizenearest_mode1084);

            % Set graph output arguments
            x_depth_head_refin_2NumDims1085 = coder.const(x_depth_head_refin_2NumDims);

        end

    end

end