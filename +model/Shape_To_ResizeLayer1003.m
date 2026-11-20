classdef Shape_To_ResizeLayer1003 < nnet.layer.Layer & nnet.layer.Formattable
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
            name = 'model.coder.Shape_To_ResizeLayer1003';
        end
    end


    methods
        function this = Shape_To_ResizeLayer1003(name)
            this.Name = name;
            this.OutputNames = {'x_depth_head_refi_20'};
        end

        function [x_depth_head_refi_20] = predict(this, x_depth_head_refi_29)
            if isdlarray(x_depth_head_refi_29)
                x_depth_head_refi_29 = stripdims(x_depth_head_refi_29);
            end
            x_depth_head_refi_29NumDims = 4;
            x_depth_head_refi_29 = model.ops.permuteInputVar(x_depth_head_refi_29, [4 3 1 2], 4);

            [x_depth_head_refi_20, x_depth_head_refi_20NumDims] = Shape_To_ResizeGraph1066(this, x_depth_head_refi_29, x_depth_head_refi_29NumDims, false);
            x_depth_head_refi_20 = model.ops.permuteOutputVar(x_depth_head_refi_20, [3 4 2 1], 4);

            x_depth_head_refi_20 = dlarray(single(x_depth_head_refi_20), 'SSCB');
        end

        function [x_depth_head_refi_20] = forward(this, x_depth_head_refi_29)
            if isdlarray(x_depth_head_refi_29)
                x_depth_head_refi_29 = stripdims(x_depth_head_refi_29);
            end
            x_depth_head_refi_29NumDims = 4;
            x_depth_head_refi_29 = model.ops.permuteInputVar(x_depth_head_refi_29, [4 3 1 2], 4);

            [x_depth_head_refi_20, x_depth_head_refi_20NumDims] = Shape_To_ResizeGraph1066(this, x_depth_head_refi_29, x_depth_head_refi_29NumDims, true);
            x_depth_head_refi_20 = model.ops.permuteOutputVar(x_depth_head_refi_20, [3 4 2 1], 4);

            x_depth_head_refi_20 = dlarray(single(x_depth_head_refi_20), 'SSCB');
        end

        function [x_depth_head_refi_20, x_depth_head_refi_20NumDims1075] = Shape_To_ResizeGraph1066(this, x_depth_head_refi_29, x_depth_head_refi_29NumDims, Training)

            % Execute the operators:
            % Shape:
            [x_depth_head_refi_21, x_depth_head_refi_21NumDims] = model.ops.onnxShape(x_depth_head_refi_29, x_depth_head_refi_29NumDims, 0, x_depth_head_refi_29NumDims+1);

            % Slice:
            [Indices, x_depth_head_refi_22NumDims] = model.ops.prepareSliceArgs(x_depth_head_refi_21, this.Vars.x_depth_head_refi_16, this.Vars.x_depth_head_refi_17, this.Vars.x_depth_head_refi_19, '', x_depth_head_refi_21NumDims);
            x_depth_head_refi_22 = x_depth_head_refi_21(Indices{:});

            % Concat:
            [x_depth_head_refi_15, x_depth_head_refi_15NumDims] = model.ops.onnxConcat(0, {x_depth_head_refi_22, this.Vars.x_depth_head_refi_18}, [x_depth_head_refi_22NumDims, this.NumDims.x_depth_head_refi_18]);

            % PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (Resize):
            % "Resize" has following attributes:
            % "coordinate_transformation_mode" of "STRING" type; Value stored in "this.Vars.Resizecoordinate_transformation_mode1071"; Number of dimensions stored in "this.NumDims.Resizecoordinate_transformation_mode1071".
            % "cubic_coeff_a" of "FLOAT" type; Value stored in "this.Vars.Resizecubic_coeff_a1072"; Number of dimensions stored in "this.NumDims.Resizecubic_coeff_a1072".
            % "mode" of "STRING" type; Value stored in "this.Vars.Resizemode1073"; Number of dimensions stored in "this.NumDims.Resizemode1073".
            % "nearest_mode" of "STRING" type; Value stored in "this.Vars.Resizenearest_mode1074"; Number of dimensions stored in "this.NumDims.Resizenearest_mode1074".
            [x_depth_head_refi_20, x_depth_head_refi_20NumDims] = model.ops.onnxResize(x_depth_head_refi_29, x_depth_head_refi_15, x_depth_head_refi_29NumDims, x_depth_head_refi_15NumDims, this.Vars.Resizecoordinate_transformation_mode1071, this.Vars.Resizecubic_coeff_a1072, this.Vars.Resizemode1073, this.Vars.Resizenearest_mode1074, this.NumDims.Resizecoordinate_transformation_mode1071, this.NumDims.Resizecubic_coeff_a1072, this.NumDims.Resizemode1073, this.NumDims.Resizenearest_mode1074);

            % Set graph output arguments
            x_depth_head_refi_20NumDims1075 = x_depth_head_refi_20NumDims;

        end

    end

end