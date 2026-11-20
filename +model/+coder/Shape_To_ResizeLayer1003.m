classdef Shape_To_ResizeLayer1003 < nnet.layer.Layer & nnet.layer.Formattable
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
            this_cg = model.coder.Shape_To_ResizeLayer1003(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = model.Shape_To_ResizeLayer1003(cgInstance.Name);
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
        function this = Shape_To_ResizeLayer1003(mlInstance)
            this.Name = mlInstance.Name;
            this.OutputNames = {'x_depth_head_refi_20'};
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

        function [x_depth_head_refi_20] = predict(this, x_depth_head_refi_29__)
            if isdlarray(x_depth_head_refi_29__)
                x_depth_head_refi_29_ = stripdims(x_depth_head_refi_29__);
            else
                x_depth_head_refi_29_ = x_depth_head_refi_29__;
            end
            x_depth_head_refi_29NumDims = 4;
            x_depth_head_refi_29 = model.coder.ops.permuteInputVar(x_depth_head_refi_29_, [4 3 1 2], 4);

            [x_depth_head_refi_20__, x_depth_head_refi_20NumDims__] = Shape_To_ResizeGraph1066(this, x_depth_head_refi_29, x_depth_head_refi_29NumDims, false);
            x_depth_head_refi_20_ = model.coder.ops.permuteOutputVar(x_depth_head_refi_20__, [3 4 2 1], 4);

            x_depth_head_refi_20 = dlarray(single(x_depth_head_refi_20_), 'SSCB');
        end

        function [x_depth_head_refi_20, x_depth_head_refi_20NumDims1075] = Shape_To_ResizeGraph1066(this, x_depth_head_refi_29, x_depth_head_refi_29NumDims, Training)

            % Execute the operators:
            % Shape:
            [x_depth_head_refi_21, x_depth_head_refi_21NumDims] = model.coder.ops.onnxShape(x_depth_head_refi_29, coder.const(x_depth_head_refi_29NumDims), 0, coder.const(x_depth_head_refi_29NumDims)+1);

            % Slice:
            [indices1078, x_depth_head_refi_22NumDims] = model.coder.ops.prepareSliceArgs(x_depth_head_refi_21, this.Vars.x_depth_head_refi_16, this.Vars.x_depth_head_refi_17, this.Vars.x_depth_head_refi_19, '', coder.const(x_depth_head_refi_21NumDims));
            x_depth_head_refi_22 = x_depth_head_refi_21(indices1078{:});

            % Concat:
            [x_depth_head_refi_15, x_depth_head_refi_15NumDims] = model.coder.ops.onnxConcat(0, {x_depth_head_refi_22, this.Vars.x_depth_head_refi_18}, [coder.const(x_depth_head_refi_22NumDims), this.NumDims.x_depth_head_refi_18]);

            % PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (Resize):
            % "Resize" has following attributes:
            % "coordinate_transformation_mode" of "STRING" type; Value stored in "this.Vars.Resizecoordinate_transformation_mode1071"; Number of dimensions stored in "this.NumDims.Resizecoordinate_transformation_mode1071".
            % "cubic_coeff_a" of "FLOAT" type; Value stored in "this.Vars.Resizecubic_coeff_a1072"; Number of dimensions stored in "this.NumDims.Resizecubic_coeff_a1072".
            % "mode" of "STRING" type; Value stored in "this.Vars.Resizemode1073"; Number of dimensions stored in "this.NumDims.Resizemode1073".
            % "nearest_mode" of "STRING" type; Value stored in "this.Vars.Resizenearest_mode1074"; Number of dimensions stored in "this.NumDims.Resizenearest_mode1074".
            [x_depth_head_refi_20, x_depth_head_refi_20NumDims] = model.coder.ops.onnxResize(x_depth_head_refi_29, x_depth_head_refi_15, coder.const(x_depth_head_refi_29NumDims), coder.const(x_depth_head_refi_15NumDims), this.Vars.Resizecoordinate_transformation_mode1071, this.Vars.Resizecubic_coeff_a1072, this.Vars.Resizemode1073, this.Vars.Resizenearest_mode1074, this.NumDims.Resizecoordinate_transformation_mode1071, this.NumDims.Resizecubic_coeff_a1072, this.NumDims.Resizemode1073, this.NumDims.Resizenearest_mode1074);

            % Set graph output arguments
            x_depth_head_refi_20NumDims1075 = coder.const(x_depth_head_refi_20NumDims);

        end

    end

end