classdef Shape_To_ResizeLayer1001 < nnet.layer.Layer & nnet.layer.Formattable
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
            this_cg = model.coder.Shape_To_ResizeLayer1001(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = model.Shape_To_ResizeLayer1001(cgInstance.Name);
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
        function this = Shape_To_ResizeLayer1001(mlInstance)
            this.Name = mlInstance.Name;
            this.OutputNames = {'x_depth_head_refi_59'};
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

        function [x_depth_head_refi_59] = predict(this, x_depth_head_refi_63__)
            if isdlarray(x_depth_head_refi_63__)
                x_depth_head_refi_63_ = stripdims(x_depth_head_refi_63__);
            else
                x_depth_head_refi_63_ = x_depth_head_refi_63__;
            end
            x_depth_head_refi_63NumDims = 4;
            x_depth_head_refi_63 = model.coder.ops.permuteInputVar(x_depth_head_refi_63_, [4 3 1 2], 4);

            [x_depth_head_refi_59__, x_depth_head_refi_59NumDims__] = Shape_To_ResizeGraph1046(this, x_depth_head_refi_63, x_depth_head_refi_63NumDims, false);
            x_depth_head_refi_59_ = model.coder.ops.permuteOutputVar(x_depth_head_refi_59__, [3 4 2 1], 4);

            x_depth_head_refi_59 = dlarray(single(x_depth_head_refi_59_), 'SSCB');
        end

        function [x_depth_head_refi_59, x_depth_head_refi_59NumDims1055] = Shape_To_ResizeGraph1046(this, x_depth_head_refi_63, x_depth_head_refi_63NumDims, Training)

            % Execute the operators:
            % Shape:
            [x_depth_head_refi_60, x_depth_head_refi_60NumDims] = model.coder.ops.onnxShape(x_depth_head_refi_63, coder.const(x_depth_head_refi_63NumDims), 0, coder.const(x_depth_head_refi_63NumDims)+1);

            % Slice:
            [indices1076, x_depth_head_refi_61NumDims] = model.coder.ops.prepareSliceArgs(x_depth_head_refi_60, this.Vars.x_depth_head_refi_55, this.Vars.x_depth_head_refi_56, this.Vars.x_depth_head_refi_58, '', coder.const(x_depth_head_refi_60NumDims));
            x_depth_head_refi_61 = x_depth_head_refi_60(indices1076{:});

            % Concat:
            [x_depth_head_refi_54, x_depth_head_refi_54NumDims] = model.coder.ops.onnxConcat(0, {x_depth_head_refi_61, this.Vars.x_depth_head_refi_57}, [coder.const(x_depth_head_refi_61NumDims), this.NumDims.x_depth_head_refi_57]);

            % PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (Resize):
            % "Resize" has following attributes:
            % "coordinate_transformation_mode" of "STRING" type; Value stored in "this.Vars.Resizecoordinate_transformation_mode1051"; Number of dimensions stored in "this.NumDims.Resizecoordinate_transformation_mode1051".
            % "cubic_coeff_a" of "FLOAT" type; Value stored in "this.Vars.Resizecubic_coeff_a1052"; Number of dimensions stored in "this.NumDims.Resizecubic_coeff_a1052".
            % "mode" of "STRING" type; Value stored in "this.Vars.Resizemode1053"; Number of dimensions stored in "this.NumDims.Resizemode1053".
            % "nearest_mode" of "STRING" type; Value stored in "this.Vars.Resizenearest_mode1054"; Number of dimensions stored in "this.NumDims.Resizenearest_mode1054".
            [x_depth_head_refi_59, x_depth_head_refi_59NumDims] = model.coder.ops.onnxResize(x_depth_head_refi_63, x_depth_head_refi_54, coder.const(x_depth_head_refi_63NumDims), coder.const(x_depth_head_refi_54NumDims), this.Vars.Resizecoordinate_transformation_mode1051, this.Vars.Resizecubic_coeff_a1052, this.Vars.Resizemode1053, this.Vars.Resizenearest_mode1054, this.NumDims.Resizecoordinate_transformation_mode1051, this.NumDims.Resizecubic_coeff_a1052, this.NumDims.Resizemode1053, this.NumDims.Resizenearest_mode1054);

            % Set graph output arguments
            x_depth_head_refi_59NumDims1055 = coder.const(x_depth_head_refi_59NumDims);

        end

    end

end