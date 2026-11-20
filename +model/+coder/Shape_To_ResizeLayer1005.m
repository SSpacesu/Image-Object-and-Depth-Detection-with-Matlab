classdef Shape_To_ResizeLayer1005 < nnet.layer.Layer & nnet.layer.Formattable
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
            this_cg = model.coder.Shape_To_ResizeLayer1005(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = model.Shape_To_ResizeLayer1005(cgInstance.Name);
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
        function this = Shape_To_ResizeLayer1005(mlInstance)
            this.Name = mlInstance.Name;
            this.OutputNames = {'x_depth_head_Resize_'};
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

        function [x_depth_head_Resize_] = predict(this, x_depth_head_output___)
            if isdlarray(x_depth_head_output___)
                x_depth_head_output__ = stripdims(x_depth_head_output___);
            else
                x_depth_head_output__ = x_depth_head_output___;
            end
            x_depth_head_output_NumDims = 4;
            x_depth_head_output_ = model.coder.ops.permuteInputVar(x_depth_head_output__, [4 3 1 2], 4);

            [x_depth_head_Resize___, x_depth_head_Resize_NumDims__] = Shape_To_ResizeGraph1086(this, x_depth_head_output_, x_depth_head_output_NumDims, false);
            x_depth_head_Resize__ = model.coder.ops.permuteOutputVar(x_depth_head_Resize___, [3 4 2 1], 4);

            x_depth_head_Resize_ = dlarray(single(x_depth_head_Resize__), 'SSCB');
        end

        function [x_depth_head_Resize_, x_depth_head_Resize_NumDims1095] = Shape_To_ResizeGraph1086(this, x_depth_head_output_, x_depth_head_output_NumDims, Training)

            % Execute the operators:
            % Shape:
            [x_depth_head_Shape_o, x_depth_head_Shape_oNumDims] = model.coder.ops.onnxShape(x_depth_head_output_, coder.const(x_depth_head_output_NumDims), 0, coder.const(x_depth_head_output_NumDims)+1);

            % Slice:
            [indices1079, x_depth_head_Slice_oNumDims] = model.coder.ops.prepareSliceArgs(x_depth_head_Shape_o, this.Vars.x_depth_head_Const_4, this.Vars.x_depth_head_Const_5, this.Vars.x_depth_head_Const_3, '', coder.const(x_depth_head_Shape_oNumDims));
            x_depth_head_Slice_o = x_depth_head_Shape_o(indices1079{:});

            % Concat:
            [x_depth_head_Concat_, x_depth_head_Concat_NumDims] = model.coder.ops.onnxConcat(0, {x_depth_head_Slice_o, this.Vars.x_depth_head_Const_6}, [coder.const(x_depth_head_Slice_oNumDims), this.NumDims.x_depth_head_Const_6]);

            % PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (Resize):
            % "Resize" has following attributes:
            % "coordinate_transformation_mode" of "STRING" type; Value stored in "this.Vars.Resizecoordinate_transformation_mode1091"; Number of dimensions stored in "this.NumDims.Resizecoordinate_transformation_mode1091".
            % "cubic_coeff_a" of "FLOAT" type; Value stored in "this.Vars.Resizecubic_coeff_a1092"; Number of dimensions stored in "this.NumDims.Resizecubic_coeff_a1092".
            % "mode" of "STRING" type; Value stored in "this.Vars.Resizemode1093"; Number of dimensions stored in "this.NumDims.Resizemode1093".
            % "nearest_mode" of "STRING" type; Value stored in "this.Vars.Resizenearest_mode1094"; Number of dimensions stored in "this.NumDims.Resizenearest_mode1094".
            [x_depth_head_Resize_, x_depth_head_Resize_NumDims] = model.coder.ops.onnxResize(x_depth_head_output_, x_depth_head_Concat_, coder.const(x_depth_head_output_NumDims), coder.const(x_depth_head_Concat_NumDims), this.Vars.Resizecoordinate_transformation_mode1091, this.Vars.Resizecubic_coeff_a1092, this.Vars.Resizemode1093, this.Vars.Resizenearest_mode1094, this.NumDims.Resizecoordinate_transformation_mode1091, this.NumDims.Resizecubic_coeff_a1092, this.NumDims.Resizemode1093, this.NumDims.Resizenearest_mode1094);

            % Set graph output arguments
            x_depth_head_Resize_NumDims1095 = coder.const(x_depth_head_Resize_NumDims);

        end

    end

end