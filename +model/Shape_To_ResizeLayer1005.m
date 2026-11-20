classdef Shape_To_ResizeLayer1005 < nnet.layer.Layer & nnet.layer.Formattable
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
            name = 'model.coder.Shape_To_ResizeLayer1005';
        end
    end


    methods
        function this = Shape_To_ResizeLayer1005(name)
            this.Name = name;
            this.OutputNames = {'x_depth_head_Resize_'};
        end

        function [x_depth_head_Resize_] = predict(this, x_depth_head_output_)
            if isdlarray(x_depth_head_output_)
                x_depth_head_output_ = stripdims(x_depth_head_output_);
            end
            x_depth_head_output_NumDims = 4;
            x_depth_head_output_ = model.ops.permuteInputVar(x_depth_head_output_, [4 3 1 2], 4);

            [x_depth_head_Resize_, x_depth_head_Resize_NumDims] = Shape_To_ResizeGraph1086(this, x_depth_head_output_, x_depth_head_output_NumDims, false);
            x_depth_head_Resize_ = model.ops.permuteOutputVar(x_depth_head_Resize_, [3 4 2 1], 4);

            x_depth_head_Resize_ = dlarray(single(x_depth_head_Resize_), 'SSCB');
        end

        function [x_depth_head_Resize_] = forward(this, x_depth_head_output_)
            if isdlarray(x_depth_head_output_)
                x_depth_head_output_ = stripdims(x_depth_head_output_);
            end
            x_depth_head_output_NumDims = 4;
            x_depth_head_output_ = model.ops.permuteInputVar(x_depth_head_output_, [4 3 1 2], 4);

            [x_depth_head_Resize_, x_depth_head_Resize_NumDims] = Shape_To_ResizeGraph1086(this, x_depth_head_output_, x_depth_head_output_NumDims, true);
            x_depth_head_Resize_ = model.ops.permuteOutputVar(x_depth_head_Resize_, [3 4 2 1], 4);

            x_depth_head_Resize_ = dlarray(single(x_depth_head_Resize_), 'SSCB');
        end

        function [x_depth_head_Resize_, x_depth_head_Resize_NumDims1095] = Shape_To_ResizeGraph1086(this, x_depth_head_output_, x_depth_head_output_NumDims, Training)

            % Execute the operators:
            % Shape:
            [x_depth_head_Shape_o, x_depth_head_Shape_oNumDims] = model.ops.onnxShape(x_depth_head_output_, x_depth_head_output_NumDims, 0, x_depth_head_output_NumDims+1);

            % Slice:
            [Indices, x_depth_head_Slice_oNumDims] = model.ops.prepareSliceArgs(x_depth_head_Shape_o, this.Vars.x_depth_head_Const_4, this.Vars.x_depth_head_Const_5, this.Vars.x_depth_head_Const_3, '', x_depth_head_Shape_oNumDims);
            x_depth_head_Slice_o = x_depth_head_Shape_o(Indices{:});

            % Concat:
            [x_depth_head_Concat_, x_depth_head_Concat_NumDims] = model.ops.onnxConcat(0, {x_depth_head_Slice_o, this.Vars.x_depth_head_Const_6}, [x_depth_head_Slice_oNumDims, this.NumDims.x_depth_head_Const_6]);

            % PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (Resize):
            % "Resize" has following attributes:
            % "coordinate_transformation_mode" of "STRING" type; Value stored in "this.Vars.Resizecoordinate_transformation_mode1091"; Number of dimensions stored in "this.NumDims.Resizecoordinate_transformation_mode1091".
            % "cubic_coeff_a" of "FLOAT" type; Value stored in "this.Vars.Resizecubic_coeff_a1092"; Number of dimensions stored in "this.NumDims.Resizecubic_coeff_a1092".
            % "mode" of "STRING" type; Value stored in "this.Vars.Resizemode1093"; Number of dimensions stored in "this.NumDims.Resizemode1093".
            % "nearest_mode" of "STRING" type; Value stored in "this.Vars.Resizenearest_mode1094"; Number of dimensions stored in "this.NumDims.Resizenearest_mode1094".
            [x_depth_head_Resize_, x_depth_head_Resize_NumDims] = model.ops.onnxResize(x_depth_head_output_, x_depth_head_Concat_, x_depth_head_output_NumDims, x_depth_head_Concat_NumDims, this.Vars.Resizecoordinate_transformation_mode1091, this.Vars.Resizecubic_coeff_a1092, this.Vars.Resizemode1093, this.Vars.Resizenearest_mode1094, this.NumDims.Resizecoordinate_transformation_mode1091, this.NumDims.Resizecubic_coeff_a1092, this.NumDims.Resizemode1093, this.NumDims.Resizenearest_mode1094);

            % Set graph output arguments
            x_depth_head_Resize_NumDims1095 = x_depth_head_Resize_NumDims;

        end

    end

end