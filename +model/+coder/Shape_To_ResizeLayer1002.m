classdef Shape_To_ResizeLayer1002 < nnet.layer.Layer & nnet.layer.Formattable
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
            this_cg = model.coder.Shape_To_ResizeLayer1002(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = model.Shape_To_ResizeLayer1002(cgInstance.Name);
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
        function this = Shape_To_ResizeLayer1002(mlInstance)
            this.Name = mlInstance.Name;
            this.OutputNames = {'x_depth_head_refi_40'};
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

        function [x_depth_head_refi_40] = predict(this, x_depth_head_refi_49__)
            if isdlarray(x_depth_head_refi_49__)
                x_depth_head_refi_49_ = stripdims(x_depth_head_refi_49__);
            else
                x_depth_head_refi_49_ = x_depth_head_refi_49__;
            end
            x_depth_head_refi_49NumDims = 4;
            x_depth_head_refi_49 = model.coder.ops.permuteInputVar(x_depth_head_refi_49_, [4 3 1 2], 4);

            [x_depth_head_refi_40__, x_depth_head_refi_40NumDims__] = Shape_To_ResizeGraph1056(this, x_depth_head_refi_49, x_depth_head_refi_49NumDims, false);
            x_depth_head_refi_40_ = model.coder.ops.permuteOutputVar(x_depth_head_refi_40__, [3 4 2 1], 4);

            x_depth_head_refi_40 = dlarray(single(x_depth_head_refi_40_), 'SSCB');
        end

        function [x_depth_head_refi_40, x_depth_head_refi_40NumDims1065] = Shape_To_ResizeGraph1056(this, x_depth_head_refi_49, x_depth_head_refi_49NumDims, Training)

            % Execute the operators:
            % Shape:
            [x_depth_head_refi_41, x_depth_head_refi_41NumDims] = model.coder.ops.onnxShape(x_depth_head_refi_49, coder.const(x_depth_head_refi_49NumDims), 0, coder.const(x_depth_head_refi_49NumDims)+1);

            % Slice:
            [indices1077, x_depth_head_refi_42NumDims] = model.coder.ops.prepareSliceArgs(x_depth_head_refi_41, this.Vars.x_depth_head_refi_36, this.Vars.x_depth_head_refi_37, this.Vars.x_depth_head_refi_39, '', coder.const(x_depth_head_refi_41NumDims));
            x_depth_head_refi_42 = x_depth_head_refi_41(indices1077{:});

            % Concat:
            [x_depth_head_refi_35, x_depth_head_refi_35NumDims] = model.coder.ops.onnxConcat(0, {x_depth_head_refi_42, this.Vars.x_depth_head_refi_38}, [coder.const(x_depth_head_refi_42NumDims), this.NumDims.x_depth_head_refi_38]);

            % PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (Resize):
            % "Resize" has following attributes:
            % "coordinate_transformation_mode" of "STRING" type; Value stored in "this.Vars.Resizecoordinate_transformation_mode1061"; Number of dimensions stored in "this.NumDims.Resizecoordinate_transformation_mode1061".
            % "cubic_coeff_a" of "FLOAT" type; Value stored in "this.Vars.Resizecubic_coeff_a1062"; Number of dimensions stored in "this.NumDims.Resizecubic_coeff_a1062".
            % "mode" of "STRING" type; Value stored in "this.Vars.Resizemode1063"; Number of dimensions stored in "this.NumDims.Resizemode1063".
            % "nearest_mode" of "STRING" type; Value stored in "this.Vars.Resizenearest_mode1064"; Number of dimensions stored in "this.NumDims.Resizenearest_mode1064".
            [x_depth_head_refi_40, x_depth_head_refi_40NumDims] = model.coder.ops.onnxResize(x_depth_head_refi_49, x_depth_head_refi_35, coder.const(x_depth_head_refi_49NumDims), coder.const(x_depth_head_refi_35NumDims), this.Vars.Resizecoordinate_transformation_mode1061, this.Vars.Resizecubic_coeff_a1062, this.Vars.Resizemode1063, this.Vars.Resizenearest_mode1064, this.NumDims.Resizecoordinate_transformation_mode1061, this.NumDims.Resizecubic_coeff_a1062, this.NumDims.Resizemode1063, this.NumDims.Resizenearest_mode1064);

            % Set graph output arguments
            x_depth_head_refi_40NumDims1065 = coder.const(x_depth_head_refi_40NumDims);

        end

    end

end