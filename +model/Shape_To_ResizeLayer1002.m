classdef Shape_To_ResizeLayer1002 < nnet.layer.Layer & nnet.layer.Formattable
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
            name = 'model.coder.Shape_To_ResizeLayer1002';
        end
    end


    methods
        function this = Shape_To_ResizeLayer1002(name)
            this.Name = name;
            this.OutputNames = {'x_depth_head_refi_40'};
        end

        function [x_depth_head_refi_40] = predict(this, x_depth_head_refi_49)
            if isdlarray(x_depth_head_refi_49)
                x_depth_head_refi_49 = stripdims(x_depth_head_refi_49);
            end
            x_depth_head_refi_49NumDims = 4;
            x_depth_head_refi_49 = model.ops.permuteInputVar(x_depth_head_refi_49, [4 3 1 2], 4);

            [x_depth_head_refi_40, x_depth_head_refi_40NumDims] = Shape_To_ResizeGraph1056(this, x_depth_head_refi_49, x_depth_head_refi_49NumDims, false);
            x_depth_head_refi_40 = model.ops.permuteOutputVar(x_depth_head_refi_40, [3 4 2 1], 4);

            x_depth_head_refi_40 = dlarray(single(x_depth_head_refi_40), 'SSCB');
        end

        function [x_depth_head_refi_40] = forward(this, x_depth_head_refi_49)
            if isdlarray(x_depth_head_refi_49)
                x_depth_head_refi_49 = stripdims(x_depth_head_refi_49);
            end
            x_depth_head_refi_49NumDims = 4;
            x_depth_head_refi_49 = model.ops.permuteInputVar(x_depth_head_refi_49, [4 3 1 2], 4);

            [x_depth_head_refi_40, x_depth_head_refi_40NumDims] = Shape_To_ResizeGraph1056(this, x_depth_head_refi_49, x_depth_head_refi_49NumDims, true);
            x_depth_head_refi_40 = model.ops.permuteOutputVar(x_depth_head_refi_40, [3 4 2 1], 4);

            x_depth_head_refi_40 = dlarray(single(x_depth_head_refi_40), 'SSCB');
        end

        function [x_depth_head_refi_40, x_depth_head_refi_40NumDims1065] = Shape_To_ResizeGraph1056(this, x_depth_head_refi_49, x_depth_head_refi_49NumDims, Training)

            % Execute the operators:
            % Shape:
            [x_depth_head_refi_41, x_depth_head_refi_41NumDims] = model.ops.onnxShape(x_depth_head_refi_49, x_depth_head_refi_49NumDims, 0, x_depth_head_refi_49NumDims+1);

            % Slice:
            [Indices, x_depth_head_refi_42NumDims] = model.ops.prepareSliceArgs(x_depth_head_refi_41, this.Vars.x_depth_head_refi_36, this.Vars.x_depth_head_refi_37, this.Vars.x_depth_head_refi_39, '', x_depth_head_refi_41NumDims);
            x_depth_head_refi_42 = x_depth_head_refi_41(Indices{:});

            % Concat:
            [x_depth_head_refi_35, x_depth_head_refi_35NumDims] = model.ops.onnxConcat(0, {x_depth_head_refi_42, this.Vars.x_depth_head_refi_38}, [x_depth_head_refi_42NumDims, this.NumDims.x_depth_head_refi_38]);

            % PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (Resize):
            % "Resize" has following attributes:
            % "coordinate_transformation_mode" of "STRING" type; Value stored in "this.Vars.Resizecoordinate_transformation_mode1061"; Number of dimensions stored in "this.NumDims.Resizecoordinate_transformation_mode1061".
            % "cubic_coeff_a" of "FLOAT" type; Value stored in "this.Vars.Resizecubic_coeff_a1062"; Number of dimensions stored in "this.NumDims.Resizecubic_coeff_a1062".
            % "mode" of "STRING" type; Value stored in "this.Vars.Resizemode1063"; Number of dimensions stored in "this.NumDims.Resizemode1063".
            % "nearest_mode" of "STRING" type; Value stored in "this.Vars.Resizenearest_mode1064"; Number of dimensions stored in "this.NumDims.Resizenearest_mode1064".
            [x_depth_head_refi_40, x_depth_head_refi_40NumDims] = model.ops.onnxResize(x_depth_head_refi_49, x_depth_head_refi_35, x_depth_head_refi_49NumDims, x_depth_head_refi_35NumDims, this.Vars.Resizecoordinate_transformation_mode1061, this.Vars.Resizecubic_coeff_a1062, this.Vars.Resizemode1063, this.Vars.Resizenearest_mode1064, this.NumDims.Resizecoordinate_transformation_mode1061, this.NumDims.Resizecubic_coeff_a1062, this.NumDims.Resizemode1063, this.NumDims.Resizenearest_mode1064);

            % Set graph output arguments
            x_depth_head_refi_40NumDims1065 = x_depth_head_refi_40NumDims;

        end

    end

end