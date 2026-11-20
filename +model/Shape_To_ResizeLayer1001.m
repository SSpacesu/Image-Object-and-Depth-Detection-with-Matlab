classdef Shape_To_ResizeLayer1001 < nnet.layer.Layer & nnet.layer.Formattable
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
            name = 'model.coder.Shape_To_ResizeLayer1001';
        end
    end


    methods
        function this = Shape_To_ResizeLayer1001(name)
            this.Name = name;
            this.OutputNames = {'x_depth_head_refi_59'};
        end

        function [x_depth_head_refi_59] = predict(this, x_depth_head_refi_63)
            if isdlarray(x_depth_head_refi_63)
                x_depth_head_refi_63 = stripdims(x_depth_head_refi_63);
            end
            x_depth_head_refi_63NumDims = 4;
            x_depth_head_refi_63 = model.ops.permuteInputVar(x_depth_head_refi_63, [4 3 1 2], 4);

            [x_depth_head_refi_59, x_depth_head_refi_59NumDims] = Shape_To_ResizeGraph1046(this, x_depth_head_refi_63, x_depth_head_refi_63NumDims, false);
            x_depth_head_refi_59 = model.ops.permuteOutputVar(x_depth_head_refi_59, [3 4 2 1], 4);

            x_depth_head_refi_59 = dlarray(single(x_depth_head_refi_59), 'SSCB');
        end

        function [x_depth_head_refi_59] = forward(this, x_depth_head_refi_63)
            if isdlarray(x_depth_head_refi_63)
                x_depth_head_refi_63 = stripdims(x_depth_head_refi_63);
            end
            x_depth_head_refi_63NumDims = 4;
            x_depth_head_refi_63 = model.ops.permuteInputVar(x_depth_head_refi_63, [4 3 1 2], 4);

            [x_depth_head_refi_59, x_depth_head_refi_59NumDims] = Shape_To_ResizeGraph1046(this, x_depth_head_refi_63, x_depth_head_refi_63NumDims, true);
            x_depth_head_refi_59 = model.ops.permuteOutputVar(x_depth_head_refi_59, [3 4 2 1], 4);

            x_depth_head_refi_59 = dlarray(single(x_depth_head_refi_59), 'SSCB');
        end

        function [x_depth_head_refi_59, x_depth_head_refi_59NumDims1055] = Shape_To_ResizeGraph1046(this, x_depth_head_refi_63, x_depth_head_refi_63NumDims, Training)

            % Execute the operators:
            % Shape:
            [x_depth_head_refi_60, x_depth_head_refi_60NumDims] = model.ops.onnxShape(x_depth_head_refi_63, x_depth_head_refi_63NumDims, 0, x_depth_head_refi_63NumDims+1);

            % Slice:
            [Indices, x_depth_head_refi_61NumDims] = model.ops.prepareSliceArgs(x_depth_head_refi_60, this.Vars.x_depth_head_refi_55, this.Vars.x_depth_head_refi_56, this.Vars.x_depth_head_refi_58, '', x_depth_head_refi_60NumDims);
            x_depth_head_refi_61 = x_depth_head_refi_60(Indices{:});

            % Concat:
            [x_depth_head_refi_54, x_depth_head_refi_54NumDims] = model.ops.onnxConcat(0, {x_depth_head_refi_61, this.Vars.x_depth_head_refi_57}, [x_depth_head_refi_61NumDims, this.NumDims.x_depth_head_refi_57]);

            % PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (Resize):
            % "Resize" has following attributes:
            % "coordinate_transformation_mode" of "STRING" type; Value stored in "this.Vars.Resizecoordinate_transformation_mode1051"; Number of dimensions stored in "this.NumDims.Resizecoordinate_transformation_mode1051".
            % "cubic_coeff_a" of "FLOAT" type; Value stored in "this.Vars.Resizecubic_coeff_a1052"; Number of dimensions stored in "this.NumDims.Resizecubic_coeff_a1052".
            % "mode" of "STRING" type; Value stored in "this.Vars.Resizemode1053"; Number of dimensions stored in "this.NumDims.Resizemode1053".
            % "nearest_mode" of "STRING" type; Value stored in "this.Vars.Resizenearest_mode1054"; Number of dimensions stored in "this.NumDims.Resizenearest_mode1054".
            [x_depth_head_refi_59, x_depth_head_refi_59NumDims] = model.ops.onnxResize(x_depth_head_refi_63, x_depth_head_refi_54, x_depth_head_refi_63NumDims, x_depth_head_refi_54NumDims, this.Vars.Resizecoordinate_transformation_mode1051, this.Vars.Resizecubic_coeff_a1052, this.Vars.Resizemode1053, this.Vars.Resizenearest_mode1054, this.NumDims.Resizecoordinate_transformation_mode1051, this.NumDims.Resizecubic_coeff_a1052, this.NumDims.Resizemode1053, this.NumDims.Resizenearest_mode1054);

            % Set graph output arguments
            x_depth_head_refi_59NumDims1055 = x_depth_head_refi_59NumDims;

        end

    end

end