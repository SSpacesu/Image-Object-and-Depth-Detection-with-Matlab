classdef Mul_To_ReshapeLayer1000 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.

    %#ok<*PROPLC>
    %#ok<*NBRAK>
    %#ok<*INUSL>
    %#ok<*VARARG>
    properties (Learnable)
        pretrained_blocks__7
        pretrained_blocks__6
        onnx__MatMul_1237
        onnx__MatMul_1248
        pretrained_blocks__9
        pretrained_blocks__8
        onnx__MatMul_1249
        onnx__MatMul_1250
        pretrained_blocks_36
        pretrained_blocks_35
        onnx__MatMul_1251
        onnx__MatMul_1262
        pretrained_blocks_38
        pretrained_blocks_37
        onnx__MatMul_1263
        onnx__MatMul_1264
        pretrained_blocks_45
        pretrained_blocks_44
        onnx__MatMul_1265
        onnx__MatMul_1276
        pretrained_blocks_47
        pretrained_blocks_46
        onnx__MatMul_1277
        onnx__MatMul_1278
        pretrained_norm_weig
        pretrained_norm_bias
        pretrained_blocks_54
        pretrained_blocks_53
        onnx__MatMul_1279
        onnx__MatMul_1290
        pretrained_blocks_56
        pretrained_blocks_55
        onnx__MatMul_1291
        onnx__MatMul_1292
        pretrained_blocks_63
        pretrained_blocks_62
        onnx__MatMul_1293
        onnx__MatMul_1304
        pretrained_blocks_65
        pretrained_blocks_64
        onnx__MatMul_1305
        onnx__MatMul_1306
        pretrained_blocks_72
        pretrained_blocks_71
        onnx__MatMul_1307
        onnx__MatMul_1318
        pretrained_blocks_74
        pretrained_blocks_73
        onnx__MatMul_1319
        onnx__MatMul_1320
        pretrained_blocks_81
        pretrained_blocks_80
        onnx__MatMul_1321
        onnx__MatMul_1332
        pretrained_blocks_83
        pretrained_blocks_82
        onnx__MatMul_1333
        onnx__MatMul_1334
        pretrained_blocks_90
        pretrained_blocks_89
        onnx__MatMul_1335
        onnx__MatMul_1346
        pretrained_blocks_92
        pretrained_blocks_91
        onnx__MatMul_1347
        onnx__MatMul_1348
        pretrained_blocks_99
        pretrained_blocks_98
        onnx__MatMul_1349
        onnx__MatMul_1360
        pretrained_block_101
        pretrained_block_100
        onnx__MatMul_1361
        onnx__MatMul_1362
        pretrained_block_108
        pretrained_block_107
        onnx__MatMul_1363
        onnx__MatMul_1374
        pretrained_block_110
        pretrained_block_109
        onnx__MatMul_1375
        onnx__MatMul_1376
        pretrained_blocks_18
        pretrained_blocks_17
        onnx__MatMul_1377
        onnx__MatMul_1388
        pretrained_blocks_20
        pretrained_blocks_19
        onnx__MatMul_1389
        onnx__MatMul_1390
        pretrained_blocks_27
        pretrained_blocks_26
        onnx__MatMul_1391
        onnx__MatMul_1402
        pretrained_blocks_29
        pretrained_blocks_28
        onnx__MatMul_1403
        onnx__MatMul_1404
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
            name = 'model.coder.Mul_To_ReshapeLayer1000';
        end
    end


    methods
        function this = Mul_To_ReshapeLayer1000(name)
            this.Name = name;
            this.NumOutputs = 4;
            this.OutputNames = {'x_depth_head_Resha_3', 'x_depth_head_Reshape', 'x_depth_head_Resha_1', 'x_depth_head_Resha_2'};
        end

        function [x_depth_head_Resha_3, x_depth_head_Reshape, x_depth_head_Resha_1, x_depth_head_Resha_2] = predict(this, x_patch_embed_proj_1)
            if isdlarray(x_patch_embed_proj_1)
                x_patch_embed_proj_1 = stripdims(x_patch_embed_proj_1);
            end
            x_patch_embed_proj_1NumDims = 4;
            x_patch_embed_proj_1 = model.ops.permuteInputVar(x_patch_embed_proj_1, [4 3 1 2], 4);

            [x_depth_head_Resha_3, x_depth_head_Reshape, x_depth_head_Resha_1, x_depth_head_Resha_2, x_depth_head_Resha_3NumDims, x_depth_head_ReshapeNumDims, x_depth_head_Resha_1NumDims, x_depth_head_Resha_2NumDims] = Mul_To_ReshapeGraph1000(this, x_patch_embed_proj_1, x_patch_embed_proj_1NumDims, false);
            x_depth_head_Resha_3 = model.ops.permuteOutputVar(x_depth_head_Resha_3, [3 4 2 1], 4);
            x_depth_head_Reshape = model.ops.permuteOutputVar(x_depth_head_Reshape, [3 4 2 1], 4);
            x_depth_head_Resha_1 = model.ops.permuteOutputVar(x_depth_head_Resha_1, [3 4 2 1], 4);
            x_depth_head_Resha_2 = model.ops.permuteOutputVar(x_depth_head_Resha_2, [3 4 2 1], 4);

            x_depth_head_Resha_3 = dlarray(single(x_depth_head_Resha_3), 'SSCB');
            x_depth_head_Reshape = dlarray(single(x_depth_head_Reshape), 'SSCB');
            x_depth_head_Resha_1 = dlarray(single(x_depth_head_Resha_1), 'SSCB');
            x_depth_head_Resha_2 = dlarray(single(x_depth_head_Resha_2), 'SSCB');
        end

        function [x_depth_head_Resha_3, x_depth_head_Reshape, x_depth_head_Resha_1, x_depth_head_Resha_2] = forward(this, x_patch_embed_proj_1)
            if isdlarray(x_patch_embed_proj_1)
                x_patch_embed_proj_1 = stripdims(x_patch_embed_proj_1);
            end
            x_patch_embed_proj_1NumDims = 4;
            x_patch_embed_proj_1 = model.ops.permuteInputVar(x_patch_embed_proj_1, [4 3 1 2], 4);

            [x_depth_head_Resha_3, x_depth_head_Reshape, x_depth_head_Resha_1, x_depth_head_Resha_2, x_depth_head_Resha_3NumDims, x_depth_head_ReshapeNumDims, x_depth_head_Resha_1NumDims, x_depth_head_Resha_2NumDims] = Mul_To_ReshapeGraph1000(this, x_patch_embed_proj_1, x_patch_embed_proj_1NumDims, true);
            x_depth_head_Resha_3 = model.ops.permuteOutputVar(x_depth_head_Resha_3, [3 4 2 1], 4);
            x_depth_head_Reshape = model.ops.permuteOutputVar(x_depth_head_Reshape, [3 4 2 1], 4);
            x_depth_head_Resha_1 = model.ops.permuteOutputVar(x_depth_head_Resha_1, [3 4 2 1], 4);
            x_depth_head_Resha_2 = model.ops.permuteOutputVar(x_depth_head_Resha_2, [3 4 2 1], 4);

            x_depth_head_Resha_3 = dlarray(single(x_depth_head_Resha_3), 'SSCB');
            x_depth_head_Reshape = dlarray(single(x_depth_head_Reshape), 'SSCB');
            x_depth_head_Resha_1 = dlarray(single(x_depth_head_Resha_1), 'SSCB');
            x_depth_head_Resha_2 = dlarray(single(x_depth_head_Resha_2), 'SSCB');
        end

        function [x_depth_head_Resha_3, x_depth_head_Reshape, x_depth_head_Resha_1, x_depth_head_Resha_2, x_depth_head_Resha_3NumDims1042, x_depth_head_ReshapeNumDims1043, x_depth_head_Resha_1NumDims1044, x_depth_head_Resha_2NumDims1045] = Mul_To_ReshapeGraph1000(this, x_patch_embed_proj_1, x_patch_embed_proj_1NumDims, Training)

            % Execute the operators:
            % Mul:
            x_Mul_output_0 = this.Vars.x_ConstantOfShape_ou .* this.Vars.x_Constant_4_output_;
            x_Mul_output_0NumDims = max(this.NumDims.x_ConstantOfShape_ou, this.NumDims.x_Constant_4_output_);

            % Equal:
            x_Equal_output_0 = this.Vars.x_Constant_2_output_ == x_Mul_output_0;
            x_Equal_output_0NumDims = max(this.NumDims.x_Constant_2_output_, x_Mul_output_0NumDims);

            % Where:
            [x_Where_output_0, x_Where_output_0NumDims] = model.ops.onnxWhere(x_Equal_output_0, this.Vars.x_ConstantOfShape_ou, this.Vars.x_Constant_2_output_, x_Equal_output_0NumDims, this.NumDims.x_ConstantOfShape_ou, this.NumDims.x_Constant_2_output_);

            % Expand:
            [shape, x_Expand_output_0NumDims] = model.ops.prepareExpandArgs(this.NumDims.pretrained_cls_token, x_Where_output_0);
            x_Expand_output_0 = this.Vars.pretrained_cls_token + zeros(shape);

            % Shape:
            [x_patch_embed_Shape_, x_patch_embed_Shape_NumDims] = model.ops.onnxShape(x_patch_embed_proj_1, x_patch_embed_proj_1NumDims, 0, x_patch_embed_proj_1NumDims+1);

            % Slice:
            [Indices, x_patch_embed_Slice_NumDims] = model.ops.prepareSliceArgs(x_patch_embed_Shape_, this.Vars.x_patch_embed_Consta, this.Vars.x_patch_embed_Cons_1, this.Vars.x_patch_embed_Cons_3, '', x_patch_embed_Shape_NumDims);
            x_patch_embed_Slice_ = x_patch_embed_Shape_(Indices{:});

            % Concat:
            [x_patch_embed_Concat, x_patch_embed_ConcatNumDims] = model.ops.onnxConcat(0, {x_patch_embed_Slice_, this.Vars.x_patch_embed_Cons_2}, [x_patch_embed_Slice_NumDims, this.NumDims.x_patch_embed_Cons_2]);

            % Reshape:
            [shape, x_patch_embed_ReshapNumDims] = model.ops.prepareReshapeArgs(x_patch_embed_proj_1, x_patch_embed_Concat, x_patch_embed_proj_1NumDims, 0);
            x_patch_embed_Reshap = reshape(x_patch_embed_proj_1, shape{:});

            % Transpose:
            [perm, x_patch_embed_TranspNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1001, x_patch_embed_ReshapNumDims);
            if isempty(perm)
                x_patch_embed_Transp = x_patch_embed_Reshap;
            else
                x_patch_embed_Transp = permute(x_patch_embed_Reshap, perm);
            end

            % Concat:
            [x_Concat_output_0, x_Concat_output_0NumDims] = model.ops.onnxConcat(1, {x_Expand_output_0, x_patch_embed_Transp}, [x_Expand_output_0NumDims, x_patch_embed_TranspNumDims]);

            % Add:
            x_Add_output_0 = x_Concat_output_0 + this.Vars.pretrained_pos_embed;
            x_Add_output_0NumDims = max(x_Concat_output_0NumDims, this.NumDims.pretrained_pos_embed);

            % LayerNormalization:
            [x_blocks_0_norm1_Lay, x_blocks_0_norm1_LayNumDims] = model.ops.onnxLayerNormalization(x_Add_output_0, this.pretrained_blocks__7, this.pretrained_blocks__6, -1, 1.000000e-06, x_Add_output_0NumDims);

            % MatMul:
            [x_blocks_0_attn_qk_1, x_blocks_0_attn_qk_1NumDims] = model.ops.onnxMatMul(x_blocks_0_norm1_Lay, this.onnx__MatMul_1237, x_blocks_0_norm1_LayNumDims, this.NumDims.onnx__MatMul_1237);

            % Add:
            x_blocks_0_attn_qkv_ = this.Vars.pretrained_blocks__1 + x_blocks_0_attn_qk_1;
            x_blocks_0_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks__1, x_blocks_0_attn_qk_1NumDims);

            % Reshape:
            [shape, x_blocks_0_attn_Re_1NumDims] = model.ops.prepareReshapeArgs(x_blocks_0_attn_qkv_, this.Vars.x_blocks_0_attn_Co_2, x_blocks_0_attn_qkv_NumDims, 0);
            x_blocks_0_attn_Re_1 = reshape(x_blocks_0_attn_qkv_, shape{:});

            % Transpose:
            [perm, x_blocks_0_attn_Tr_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1002, x_blocks_0_attn_Re_1NumDims);
            if isempty(perm)
                x_blocks_0_attn_Tr_2 = x_blocks_0_attn_Re_1;
            else
                x_blocks_0_attn_Tr_2 = permute(x_blocks_0_attn_Re_1, perm);
            end

            % Gather:
            [x_blocks_0_attn_Ga_1, x_blocks_0_attn_Ga_1NumDims] = model.ops.onnxGather(x_blocks_0_attn_Tr_2, this.Vars.x_Constant_output_0, 0, x_blocks_0_attn_Tr_2NumDims, this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_0_attn_Gath, x_blocks_0_attn_GathNumDims] = model.ops.onnxGather(x_blocks_0_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, x_blocks_0_attn_Tr_2NumDims, this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm, x_blocks_0_attn_TranNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1003, x_blocks_0_attn_GathNumDims);
            if isempty(perm)
                x_blocks_0_attn_Tran = x_blocks_0_attn_Gath;
            else
                x_blocks_0_attn_Tran = permute(x_blocks_0_attn_Gath, perm);
            end

            % Gather:
            [x_blocks_0_attn_Ga_2, x_blocks_0_attn_Ga_2NumDims] = model.ops.onnxGather(x_blocks_0_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, x_blocks_0_attn_Tr_2NumDims, this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_0_attn_Mul_ = x_blocks_0_attn_Ga_2 .* this.Vars.x_blocks_0_attn_Cons;
            x_blocks_0_attn_Mul_NumDims = max(x_blocks_0_attn_Ga_2NumDims, this.NumDims.x_blocks_0_attn_Cons);

            % MatMul:
            [x_blocks_0_attn_Ma_1, x_blocks_0_attn_Ma_1NumDims] = model.ops.onnxMatMul(x_blocks_0_attn_Mul_, x_blocks_0_attn_Tran, x_blocks_0_attn_Mul_NumDims, x_blocks_0_attn_TranNumDims);

            % Softmax:
            [x_blocks_0_attn_Soft, x_blocks_0_attn_SoftNumDims] = model.ops.onnxSoftmax13(x_blocks_0_attn_Ma_1, -1, x_blocks_0_attn_Ma_1NumDims);

            % MatMul:
            [x_blocks_0_attn_MatM, x_blocks_0_attn_MatMNumDims] = model.ops.onnxMatMul(x_blocks_0_attn_Soft, x_blocks_0_attn_Ga_1, x_blocks_0_attn_SoftNumDims, x_blocks_0_attn_Ga_1NumDims);

            % Transpose:
            [perm, x_blocks_0_attn_Tr_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1004, x_blocks_0_attn_MatMNumDims);
            if isempty(perm)
                x_blocks_0_attn_Tr_1 = x_blocks_0_attn_MatM;
            else
                x_blocks_0_attn_Tr_1 = permute(x_blocks_0_attn_MatM, perm);
            end

            % Reshape:
            [shape, x_blocks_0_attn_ReshNumDims] = model.ops.prepareReshapeArgs(x_blocks_0_attn_Tr_1, this.Vars.x_blocks_0_attn_Co_1, x_blocks_0_attn_Tr_1NumDims, 0);
            x_blocks_0_attn_Resh = reshape(x_blocks_0_attn_Tr_1, shape{:});

            % MatMul:
            [x_blocks_0_attn_pr_1, x_blocks_0_attn_pr_1NumDims] = model.ops.onnxMatMul(x_blocks_0_attn_Resh, this.onnx__MatMul_1248, x_blocks_0_attn_ReshNumDims, this.NumDims.onnx__MatMul_1248);

            % Add:
            x_blocks_0_attn_proj = this.Vars.pretrained_blocks_0_ + x_blocks_0_attn_pr_1;
            x_blocks_0_attn_projNumDims = max(this.NumDims.pretrained_blocks_0_, x_blocks_0_attn_pr_1NumDims);

            % Mul:
            x_blocks_0_ls1_Mul_o = x_blocks_0_attn_proj .* this.Vars.pretrained_blocks__2;
            x_blocks_0_ls1_Mul_oNumDims = max(x_blocks_0_attn_projNumDims, this.NumDims.pretrained_blocks__2);

            % Add:
            x_blocks_0_Add_outpu = x_Add_output_0 + x_blocks_0_ls1_Mul_o;
            x_blocks_0_Add_outpuNumDims = max(x_Add_output_0NumDims, x_blocks_0_ls1_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_0_norm2_Lay, x_blocks_0_norm2_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_0_Add_outpu, this.pretrained_blocks__9, this.pretrained_blocks__8, -1, 1.000000e-06, x_blocks_0_Add_outpuNumDims);

            % MatMul:
            [x_blocks_0_mlp_fc1_M, x_blocks_0_mlp_fc1_MNumDims] = model.ops.onnxMatMul(x_blocks_0_norm2_Lay, this.onnx__MatMul_1249, x_blocks_0_norm2_LayNumDims, this.NumDims.onnx__MatMul_1249);

            % Add:
            x_blocks_0_mlp_fc1_A = this.Vars.pretrained_blocks__4 + x_blocks_0_mlp_fc1_M;
            x_blocks_0_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks__4, x_blocks_0_mlp_fc1_MNumDims);

            % Div:
            x_blocks_0_mlp_act_D = x_blocks_0_mlp_fc1_A ./ this.Vars.x_blocks_0_mlp_act_3;
            x_blocks_0_mlp_act_DNumDims = max(x_blocks_0_mlp_fc1_ANumDims, this.NumDims.x_blocks_0_mlp_act_3);

            % Erf:
            x_blocks_0_mlp_act_E = erf(x_blocks_0_mlp_act_D);
            x_blocks_0_mlp_act_ENumDims = x_blocks_0_mlp_act_DNumDims;

            % Add:
            x_blocks_0_mlp_act_A = x_blocks_0_mlp_act_E + this.Vars.x_blocks_0_mlp_act_C;
            x_blocks_0_mlp_act_ANumDims = max(x_blocks_0_mlp_act_ENumDims, this.NumDims.x_blocks_0_mlp_act_C);

            % Mul:
            x_blocks_0_mlp_act_9 = x_blocks_0_mlp_fc1_A .* x_blocks_0_mlp_act_A;
            x_blocks_0_mlp_act_9NumDims = max(x_blocks_0_mlp_fc1_ANumDims, x_blocks_0_mlp_act_ANumDims);

            % Mul:
            x_blocks_0_mlp_act_M = x_blocks_0_mlp_act_9 .* this.Vars.x_blocks_0_mlp_act_2;
            x_blocks_0_mlp_act_MNumDims = max(x_blocks_0_mlp_act_9NumDims, this.NumDims.x_blocks_0_mlp_act_2);

            % MatMul:
            [x_blocks_0_mlp_fc2_M, x_blocks_0_mlp_fc2_MNumDims] = model.ops.onnxMatMul(x_blocks_0_mlp_act_M, this.onnx__MatMul_1250, x_blocks_0_mlp_act_MNumDims, this.NumDims.onnx__MatMul_1250);

            % Add:
            x_blocks_0_mlp_fc2_A = this.Vars.pretrained_blocks__5 + x_blocks_0_mlp_fc2_M;
            x_blocks_0_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks__5, x_blocks_0_mlp_fc2_MNumDims);

            % Mul:
            x_blocks_0_ls2_Mul_o = x_blocks_0_mlp_fc2_A .* this.Vars.pretrained_blocks__3;
            x_blocks_0_ls2_Mul_oNumDims = max(x_blocks_0_mlp_fc2_ANumDims, this.NumDims.pretrained_blocks__3);

            % Add:
            x_blocks_0_Add_1_out = x_blocks_0_Add_outpu + x_blocks_0_ls2_Mul_o;
            x_blocks_0_Add_1_outNumDims = max(x_blocks_0_Add_outpuNumDims, x_blocks_0_ls2_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_1_norm1_Lay, x_blocks_1_norm1_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_0_Add_1_out, this.pretrained_blocks_36, this.pretrained_blocks_35, -1, 1.000000e-06, x_blocks_0_Add_1_outNumDims);

            % MatMul:
            [x_blocks_1_attn_qk_1, x_blocks_1_attn_qk_1NumDims] = model.ops.onnxMatMul(x_blocks_1_norm1_Lay, this.onnx__MatMul_1251, x_blocks_1_norm1_LayNumDims, this.NumDims.onnx__MatMul_1251);

            % Add:
            x_blocks_1_attn_qkv_ = this.Vars.pretrained_blocks_30 + x_blocks_1_attn_qk_1;
            x_blocks_1_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_30, x_blocks_1_attn_qk_1NumDims);

            % Reshape:
            [shape, x_blocks_1_attn_Re_1NumDims] = model.ops.prepareReshapeArgs(x_blocks_1_attn_qkv_, this.Vars.x_blocks_1_attn_Co_2, x_blocks_1_attn_qkv_NumDims, 0);
            x_blocks_1_attn_Re_1 = reshape(x_blocks_1_attn_qkv_, shape{:});

            % Transpose:
            [perm, x_blocks_1_attn_Tr_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1005, x_blocks_1_attn_Re_1NumDims);
            if isempty(perm)
                x_blocks_1_attn_Tr_2 = x_blocks_1_attn_Re_1;
            else
                x_blocks_1_attn_Tr_2 = permute(x_blocks_1_attn_Re_1, perm);
            end

            % Gather:
            [x_blocks_1_attn_Ga_1, x_blocks_1_attn_Ga_1NumDims] = model.ops.onnxGather(x_blocks_1_attn_Tr_2, this.Vars.x_Constant_output_0, 0, x_blocks_1_attn_Tr_2NumDims, this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_1_attn_Gath, x_blocks_1_attn_GathNumDims] = model.ops.onnxGather(x_blocks_1_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, x_blocks_1_attn_Tr_2NumDims, this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm, x_blocks_1_attn_TranNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1006, x_blocks_1_attn_GathNumDims);
            if isempty(perm)
                x_blocks_1_attn_Tran = x_blocks_1_attn_Gath;
            else
                x_blocks_1_attn_Tran = permute(x_blocks_1_attn_Gath, perm);
            end

            % Gather:
            [x_blocks_1_attn_Ga_2, x_blocks_1_attn_Ga_2NumDims] = model.ops.onnxGather(x_blocks_1_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, x_blocks_1_attn_Tr_2NumDims, this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_1_attn_Mul_ = x_blocks_1_attn_Ga_2 .* this.Vars.x_blocks_1_attn_Cons;
            x_blocks_1_attn_Mul_NumDims = max(x_blocks_1_attn_Ga_2NumDims, this.NumDims.x_blocks_1_attn_Cons);

            % MatMul:
            [x_blocks_1_attn_Ma_1, x_blocks_1_attn_Ma_1NumDims] = model.ops.onnxMatMul(x_blocks_1_attn_Mul_, x_blocks_1_attn_Tran, x_blocks_1_attn_Mul_NumDims, x_blocks_1_attn_TranNumDims);

            % Softmax:
            [x_blocks_1_attn_Soft, x_blocks_1_attn_SoftNumDims] = model.ops.onnxSoftmax13(x_blocks_1_attn_Ma_1, -1, x_blocks_1_attn_Ma_1NumDims);

            % MatMul:
            [x_blocks_1_attn_MatM, x_blocks_1_attn_MatMNumDims] = model.ops.onnxMatMul(x_blocks_1_attn_Soft, x_blocks_1_attn_Ga_1, x_blocks_1_attn_SoftNumDims, x_blocks_1_attn_Ga_1NumDims);

            % Transpose:
            [perm, x_blocks_1_attn_Tr_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1007, x_blocks_1_attn_MatMNumDims);
            if isempty(perm)
                x_blocks_1_attn_Tr_1 = x_blocks_1_attn_MatM;
            else
                x_blocks_1_attn_Tr_1 = permute(x_blocks_1_attn_MatM, perm);
            end

            % Reshape:
            [shape, x_blocks_1_attn_ReshNumDims] = model.ops.prepareReshapeArgs(x_blocks_1_attn_Tr_1, this.Vars.x_blocks_1_attn_Co_1, x_blocks_1_attn_Tr_1NumDims, 0);
            x_blocks_1_attn_Resh = reshape(x_blocks_1_attn_Tr_1, shape{:});

            % MatMul:
            [x_blocks_1_attn_pr_1, x_blocks_1_attn_pr_1NumDims] = model.ops.onnxMatMul(x_blocks_1_attn_Resh, this.onnx__MatMul_1262, x_blocks_1_attn_ReshNumDims, this.NumDims.onnx__MatMul_1262);

            % Add:
            x_blocks_1_attn_proj = this.Vars.pretrained_blocks_1_ + x_blocks_1_attn_pr_1;
            x_blocks_1_attn_projNumDims = max(this.NumDims.pretrained_blocks_1_, x_blocks_1_attn_pr_1NumDims);

            % Mul:
            x_blocks_1_ls1_Mul_o = x_blocks_1_attn_proj .* this.Vars.pretrained_blocks_31;
            x_blocks_1_ls1_Mul_oNumDims = max(x_blocks_1_attn_projNumDims, this.NumDims.pretrained_blocks_31);

            % Add:
            x_blocks_1_Add_outpu = x_blocks_0_Add_1_out + x_blocks_1_ls1_Mul_o;
            x_blocks_1_Add_outpuNumDims = max(x_blocks_0_Add_1_outNumDims, x_blocks_1_ls1_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_1_norm2_Lay, x_blocks_1_norm2_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_1_Add_outpu, this.pretrained_blocks_38, this.pretrained_blocks_37, -1, 1.000000e-06, x_blocks_1_Add_outpuNumDims);

            % MatMul:
            [x_blocks_1_mlp_fc1_M, x_blocks_1_mlp_fc1_MNumDims] = model.ops.onnxMatMul(x_blocks_1_norm2_Lay, this.onnx__MatMul_1263, x_blocks_1_norm2_LayNumDims, this.NumDims.onnx__MatMul_1263);

            % Add:
            x_blocks_1_mlp_fc1_A = this.Vars.pretrained_blocks_33 + x_blocks_1_mlp_fc1_M;
            x_blocks_1_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_33, x_blocks_1_mlp_fc1_MNumDims);

            % Div:
            x_blocks_1_mlp_act_D = x_blocks_1_mlp_fc1_A ./ this.Vars.x_blocks_1_mlp_act_3;
            x_blocks_1_mlp_act_DNumDims = max(x_blocks_1_mlp_fc1_ANumDims, this.NumDims.x_blocks_1_mlp_act_3);

            % Erf:
            x_blocks_1_mlp_act_E = erf(x_blocks_1_mlp_act_D);
            x_blocks_1_mlp_act_ENumDims = x_blocks_1_mlp_act_DNumDims;

            % Add:
            x_blocks_1_mlp_act_A = x_blocks_1_mlp_act_E + this.Vars.x_blocks_1_mlp_act_C;
            x_blocks_1_mlp_act_ANumDims = max(x_blocks_1_mlp_act_ENumDims, this.NumDims.x_blocks_1_mlp_act_C);

            % Mul:
            x_blocks_1_mlp_act_9 = x_blocks_1_mlp_fc1_A .* x_blocks_1_mlp_act_A;
            x_blocks_1_mlp_act_9NumDims = max(x_blocks_1_mlp_fc1_ANumDims, x_blocks_1_mlp_act_ANumDims);

            % Mul:
            x_blocks_1_mlp_act_M = x_blocks_1_mlp_act_9 .* this.Vars.x_blocks_1_mlp_act_2;
            x_blocks_1_mlp_act_MNumDims = max(x_blocks_1_mlp_act_9NumDims, this.NumDims.x_blocks_1_mlp_act_2);

            % MatMul:
            [x_blocks_1_mlp_fc2_M, x_blocks_1_mlp_fc2_MNumDims] = model.ops.onnxMatMul(x_blocks_1_mlp_act_M, this.onnx__MatMul_1264, x_blocks_1_mlp_act_MNumDims, this.NumDims.onnx__MatMul_1264);

            % Add:
            x_blocks_1_mlp_fc2_A = this.Vars.pretrained_blocks_34 + x_blocks_1_mlp_fc2_M;
            x_blocks_1_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_34, x_blocks_1_mlp_fc2_MNumDims);

            % Mul:
            x_blocks_1_ls2_Mul_o = x_blocks_1_mlp_fc2_A .* this.Vars.pretrained_blocks_32;
            x_blocks_1_ls2_Mul_oNumDims = max(x_blocks_1_mlp_fc2_ANumDims, this.NumDims.pretrained_blocks_32);

            % Add:
            x_blocks_1_Add_1_out = x_blocks_1_Add_outpu + x_blocks_1_ls2_Mul_o;
            x_blocks_1_Add_1_outNumDims = max(x_blocks_1_Add_outpuNumDims, x_blocks_1_ls2_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_2_norm1_Lay, x_blocks_2_norm1_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_1_Add_1_out, this.pretrained_blocks_45, this.pretrained_blocks_44, -1, 1.000000e-06, x_blocks_1_Add_1_outNumDims);

            % MatMul:
            [x_blocks_2_attn_qk_1, x_blocks_2_attn_qk_1NumDims] = model.ops.onnxMatMul(x_blocks_2_norm1_Lay, this.onnx__MatMul_1265, x_blocks_2_norm1_LayNumDims, this.NumDims.onnx__MatMul_1265);

            % Add:
            x_blocks_2_attn_qkv_ = this.Vars.pretrained_blocks_39 + x_blocks_2_attn_qk_1;
            x_blocks_2_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_39, x_blocks_2_attn_qk_1NumDims);

            % Reshape:
            [shape, x_blocks_2_attn_Re_1NumDims] = model.ops.prepareReshapeArgs(x_blocks_2_attn_qkv_, this.Vars.x_blocks_2_attn_Co_2, x_blocks_2_attn_qkv_NumDims, 0);
            x_blocks_2_attn_Re_1 = reshape(x_blocks_2_attn_qkv_, shape{:});

            % Transpose:
            [perm, x_blocks_2_attn_Tr_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1008, x_blocks_2_attn_Re_1NumDims);
            if isempty(perm)
                x_blocks_2_attn_Tr_2 = x_blocks_2_attn_Re_1;
            else
                x_blocks_2_attn_Tr_2 = permute(x_blocks_2_attn_Re_1, perm);
            end

            % Gather:
            [x_blocks_2_attn_Ga_1, x_blocks_2_attn_Ga_1NumDims] = model.ops.onnxGather(x_blocks_2_attn_Tr_2, this.Vars.x_Constant_output_0, 0, x_blocks_2_attn_Tr_2NumDims, this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_2_attn_Gath, x_blocks_2_attn_GathNumDims] = model.ops.onnxGather(x_blocks_2_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, x_blocks_2_attn_Tr_2NumDims, this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm, x_blocks_2_attn_TranNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1009, x_blocks_2_attn_GathNumDims);
            if isempty(perm)
                x_blocks_2_attn_Tran = x_blocks_2_attn_Gath;
            else
                x_blocks_2_attn_Tran = permute(x_blocks_2_attn_Gath, perm);
            end

            % Gather:
            [x_blocks_2_attn_Ga_2, x_blocks_2_attn_Ga_2NumDims] = model.ops.onnxGather(x_blocks_2_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, x_blocks_2_attn_Tr_2NumDims, this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_2_attn_Mul_ = x_blocks_2_attn_Ga_2 .* this.Vars.x_blocks_2_attn_Cons;
            x_blocks_2_attn_Mul_NumDims = max(x_blocks_2_attn_Ga_2NumDims, this.NumDims.x_blocks_2_attn_Cons);

            % MatMul:
            [x_blocks_2_attn_Ma_1, x_blocks_2_attn_Ma_1NumDims] = model.ops.onnxMatMul(x_blocks_2_attn_Mul_, x_blocks_2_attn_Tran, x_blocks_2_attn_Mul_NumDims, x_blocks_2_attn_TranNumDims);

            % Softmax:
            [x_blocks_2_attn_Soft, x_blocks_2_attn_SoftNumDims] = model.ops.onnxSoftmax13(x_blocks_2_attn_Ma_1, -1, x_blocks_2_attn_Ma_1NumDims);

            % MatMul:
            [x_blocks_2_attn_MatM, x_blocks_2_attn_MatMNumDims] = model.ops.onnxMatMul(x_blocks_2_attn_Soft, x_blocks_2_attn_Ga_1, x_blocks_2_attn_SoftNumDims, x_blocks_2_attn_Ga_1NumDims);

            % Transpose:
            [perm, x_blocks_2_attn_Tr_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1010, x_blocks_2_attn_MatMNumDims);
            if isempty(perm)
                x_blocks_2_attn_Tr_1 = x_blocks_2_attn_MatM;
            else
                x_blocks_2_attn_Tr_1 = permute(x_blocks_2_attn_MatM, perm);
            end

            % Reshape:
            [shape, x_blocks_2_attn_ReshNumDims] = model.ops.prepareReshapeArgs(x_blocks_2_attn_Tr_1, this.Vars.x_blocks_2_attn_Co_1, x_blocks_2_attn_Tr_1NumDims, 0);
            x_blocks_2_attn_Resh = reshape(x_blocks_2_attn_Tr_1, shape{:});

            % MatMul:
            [x_blocks_2_attn_pr_1, x_blocks_2_attn_pr_1NumDims] = model.ops.onnxMatMul(x_blocks_2_attn_Resh, this.onnx__MatMul_1276, x_blocks_2_attn_ReshNumDims, this.NumDims.onnx__MatMul_1276);

            % Add:
            x_blocks_2_attn_proj = this.Vars.pretrained_blocks_2_ + x_blocks_2_attn_pr_1;
            x_blocks_2_attn_projNumDims = max(this.NumDims.pretrained_blocks_2_, x_blocks_2_attn_pr_1NumDims);

            % Mul:
            x_blocks_2_ls1_Mul_o = x_blocks_2_attn_proj .* this.Vars.pretrained_blocks_40;
            x_blocks_2_ls1_Mul_oNumDims = max(x_blocks_2_attn_projNumDims, this.NumDims.pretrained_blocks_40);

            % Add:
            x_blocks_2_Add_outpu = x_blocks_1_Add_1_out + x_blocks_2_ls1_Mul_o;
            x_blocks_2_Add_outpuNumDims = max(x_blocks_1_Add_1_outNumDims, x_blocks_2_ls1_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_2_norm2_Lay, x_blocks_2_norm2_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_2_Add_outpu, this.pretrained_blocks_47, this.pretrained_blocks_46, -1, 1.000000e-06, x_blocks_2_Add_outpuNumDims);

            % MatMul:
            [x_blocks_2_mlp_fc1_M, x_blocks_2_mlp_fc1_MNumDims] = model.ops.onnxMatMul(x_blocks_2_norm2_Lay, this.onnx__MatMul_1277, x_blocks_2_norm2_LayNumDims, this.NumDims.onnx__MatMul_1277);

            % Add:
            x_blocks_2_mlp_fc1_A = this.Vars.pretrained_blocks_42 + x_blocks_2_mlp_fc1_M;
            x_blocks_2_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_42, x_blocks_2_mlp_fc1_MNumDims);

            % Div:
            x_blocks_2_mlp_act_D = x_blocks_2_mlp_fc1_A ./ this.Vars.x_blocks_2_mlp_act_3;
            x_blocks_2_mlp_act_DNumDims = max(x_blocks_2_mlp_fc1_ANumDims, this.NumDims.x_blocks_2_mlp_act_3);

            % Erf:
            x_blocks_2_mlp_act_E = erf(x_blocks_2_mlp_act_D);
            x_blocks_2_mlp_act_ENumDims = x_blocks_2_mlp_act_DNumDims;

            % Add:
            x_blocks_2_mlp_act_A = x_blocks_2_mlp_act_E + this.Vars.x_blocks_2_mlp_act_C;
            x_blocks_2_mlp_act_ANumDims = max(x_blocks_2_mlp_act_ENumDims, this.NumDims.x_blocks_2_mlp_act_C);

            % Mul:
            x_blocks_2_mlp_act_9 = x_blocks_2_mlp_fc1_A .* x_blocks_2_mlp_act_A;
            x_blocks_2_mlp_act_9NumDims = max(x_blocks_2_mlp_fc1_ANumDims, x_blocks_2_mlp_act_ANumDims);

            % Mul:
            x_blocks_2_mlp_act_M = x_blocks_2_mlp_act_9 .* this.Vars.x_blocks_2_mlp_act_2;
            x_blocks_2_mlp_act_MNumDims = max(x_blocks_2_mlp_act_9NumDims, this.NumDims.x_blocks_2_mlp_act_2);

            % MatMul:
            [x_blocks_2_mlp_fc2_M, x_blocks_2_mlp_fc2_MNumDims] = model.ops.onnxMatMul(x_blocks_2_mlp_act_M, this.onnx__MatMul_1278, x_blocks_2_mlp_act_MNumDims, this.NumDims.onnx__MatMul_1278);

            % Add:
            x_blocks_2_mlp_fc2_A = this.Vars.pretrained_blocks_43 + x_blocks_2_mlp_fc2_M;
            x_blocks_2_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_43, x_blocks_2_mlp_fc2_MNumDims);

            % Mul:
            x_blocks_2_ls2_Mul_o = x_blocks_2_mlp_fc2_A .* this.Vars.pretrained_blocks_41;
            x_blocks_2_ls2_Mul_oNumDims = max(x_blocks_2_mlp_fc2_ANumDims, this.NumDims.pretrained_blocks_41);

            % Add:
            x_blocks_2_Add_1_out = x_blocks_2_Add_outpu + x_blocks_2_ls2_Mul_o;
            x_blocks_2_Add_1_outNumDims = max(x_blocks_2_Add_outpuNumDims, x_blocks_2_ls2_Mul_oNumDims);

            % LayerNormalization:
            [x_norm_LayerNormaliz, x_norm_LayerNormalizNumDims] = model.ops.onnxLayerNormalization(x_blocks_2_Add_1_out, this.pretrained_norm_weig, this.pretrained_norm_bias, -1, 1.000000e-06, x_blocks_2_Add_1_outNumDims);

            % Slice:
            [Indices, x_Slice_output_0NumDims] = model.ops.prepareSliceArgs(x_norm_LayerNormaliz, this.Vars.x_Constant_6_output_, this.Vars.x_Constant_7_output_, this.Vars.x_Constant_5_output_, this.Vars.x_Constant_8_output_, x_norm_LayerNormalizNumDims);
            x_Slice_output_0 = x_norm_LayerNormaliz(Indices{:});

            % Transpose:
            [perm, x_depth_head_Trans_3NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1011, x_Slice_output_0NumDims);
            if isempty(perm)
                x_depth_head_Trans_3 = x_Slice_output_0;
            else
                x_depth_head_Trans_3 = permute(x_Slice_output_0, perm);
            end

            % Reshape:
            [shape, x_depth_head_Resha_3NumDims] = model.ops.prepareReshapeArgs(x_depth_head_Trans_3, this.Vars.x_depth_head_Const_7, x_depth_head_Trans_3NumDims, 0);
            x_depth_head_Resha_3 = reshape(x_depth_head_Trans_3, shape{:});

            % LayerNormalization:
            [x_blocks_3_norm1_Lay, x_blocks_3_norm1_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_2_Add_1_out, this.pretrained_blocks_54, this.pretrained_blocks_53, -1, 1.000000e-06, x_blocks_2_Add_1_outNumDims);

            % MatMul:
            [x_blocks_3_attn_qk_1, x_blocks_3_attn_qk_1NumDims] = model.ops.onnxMatMul(x_blocks_3_norm1_Lay, this.onnx__MatMul_1279, x_blocks_3_norm1_LayNumDims, this.NumDims.onnx__MatMul_1279);

            % Add:
            x_blocks_3_attn_qkv_ = this.Vars.pretrained_blocks_48 + x_blocks_3_attn_qk_1;
            x_blocks_3_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_48, x_blocks_3_attn_qk_1NumDims);

            % Reshape:
            [shape, x_blocks_3_attn_Re_1NumDims] = model.ops.prepareReshapeArgs(x_blocks_3_attn_qkv_, this.Vars.x_blocks_3_attn_Co_2, x_blocks_3_attn_qkv_NumDims, 0);
            x_blocks_3_attn_Re_1 = reshape(x_blocks_3_attn_qkv_, shape{:});

            % Transpose:
            [perm, x_blocks_3_attn_Tr_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1012, x_blocks_3_attn_Re_1NumDims);
            if isempty(perm)
                x_blocks_3_attn_Tr_2 = x_blocks_3_attn_Re_1;
            else
                x_blocks_3_attn_Tr_2 = permute(x_blocks_3_attn_Re_1, perm);
            end

            % Gather:
            [x_blocks_3_attn_Ga_1, x_blocks_3_attn_Ga_1NumDims] = model.ops.onnxGather(x_blocks_3_attn_Tr_2, this.Vars.x_Constant_output_0, 0, x_blocks_3_attn_Tr_2NumDims, this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_3_attn_Gath, x_blocks_3_attn_GathNumDims] = model.ops.onnxGather(x_blocks_3_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, x_blocks_3_attn_Tr_2NumDims, this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm, x_blocks_3_attn_TranNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1013, x_blocks_3_attn_GathNumDims);
            if isempty(perm)
                x_blocks_3_attn_Tran = x_blocks_3_attn_Gath;
            else
                x_blocks_3_attn_Tran = permute(x_blocks_3_attn_Gath, perm);
            end

            % Gather:
            [x_blocks_3_attn_Ga_2, x_blocks_3_attn_Ga_2NumDims] = model.ops.onnxGather(x_blocks_3_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, x_blocks_3_attn_Tr_2NumDims, this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_3_attn_Mul_ = x_blocks_3_attn_Ga_2 .* this.Vars.x_blocks_3_attn_Cons;
            x_blocks_3_attn_Mul_NumDims = max(x_blocks_3_attn_Ga_2NumDims, this.NumDims.x_blocks_3_attn_Cons);

            % MatMul:
            [x_blocks_3_attn_Ma_1, x_blocks_3_attn_Ma_1NumDims] = model.ops.onnxMatMul(x_blocks_3_attn_Mul_, x_blocks_3_attn_Tran, x_blocks_3_attn_Mul_NumDims, x_blocks_3_attn_TranNumDims);

            % Softmax:
            [x_blocks_3_attn_Soft, x_blocks_3_attn_SoftNumDims] = model.ops.onnxSoftmax13(x_blocks_3_attn_Ma_1, -1, x_blocks_3_attn_Ma_1NumDims);

            % MatMul:
            [x_blocks_3_attn_MatM, x_blocks_3_attn_MatMNumDims] = model.ops.onnxMatMul(x_blocks_3_attn_Soft, x_blocks_3_attn_Ga_1, x_blocks_3_attn_SoftNumDims, x_blocks_3_attn_Ga_1NumDims);

            % Transpose:
            [perm, x_blocks_3_attn_Tr_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1014, x_blocks_3_attn_MatMNumDims);
            if isempty(perm)
                x_blocks_3_attn_Tr_1 = x_blocks_3_attn_MatM;
            else
                x_blocks_3_attn_Tr_1 = permute(x_blocks_3_attn_MatM, perm);
            end

            % Reshape:
            [shape, x_blocks_3_attn_ReshNumDims] = model.ops.prepareReshapeArgs(x_blocks_3_attn_Tr_1, this.Vars.x_blocks_3_attn_Co_1, x_blocks_3_attn_Tr_1NumDims, 0);
            x_blocks_3_attn_Resh = reshape(x_blocks_3_attn_Tr_1, shape{:});

            % MatMul:
            [x_blocks_3_attn_pr_1, x_blocks_3_attn_pr_1NumDims] = model.ops.onnxMatMul(x_blocks_3_attn_Resh, this.onnx__MatMul_1290, x_blocks_3_attn_ReshNumDims, this.NumDims.onnx__MatMul_1290);

            % Add:
            x_blocks_3_attn_proj = this.Vars.pretrained_blocks_3_ + x_blocks_3_attn_pr_1;
            x_blocks_3_attn_projNumDims = max(this.NumDims.pretrained_blocks_3_, x_blocks_3_attn_pr_1NumDims);

            % Mul:
            x_blocks_3_ls1_Mul_o = x_blocks_3_attn_proj .* this.Vars.pretrained_blocks_49;
            x_blocks_3_ls1_Mul_oNumDims = max(x_blocks_3_attn_projNumDims, this.NumDims.pretrained_blocks_49);

            % Add:
            x_blocks_3_Add_outpu = x_blocks_2_Add_1_out + x_blocks_3_ls1_Mul_o;
            x_blocks_3_Add_outpuNumDims = max(x_blocks_2_Add_1_outNumDims, x_blocks_3_ls1_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_3_norm2_Lay, x_blocks_3_norm2_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_3_Add_outpu, this.pretrained_blocks_56, this.pretrained_blocks_55, -1, 1.000000e-06, x_blocks_3_Add_outpuNumDims);

            % MatMul:
            [x_blocks_3_mlp_fc1_M, x_blocks_3_mlp_fc1_MNumDims] = model.ops.onnxMatMul(x_blocks_3_norm2_Lay, this.onnx__MatMul_1291, x_blocks_3_norm2_LayNumDims, this.NumDims.onnx__MatMul_1291);

            % Add:
            x_blocks_3_mlp_fc1_A = this.Vars.pretrained_blocks_51 + x_blocks_3_mlp_fc1_M;
            x_blocks_3_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_51, x_blocks_3_mlp_fc1_MNumDims);

            % Div:
            x_blocks_3_mlp_act_D = x_blocks_3_mlp_fc1_A ./ this.Vars.x_blocks_3_mlp_act_3;
            x_blocks_3_mlp_act_DNumDims = max(x_blocks_3_mlp_fc1_ANumDims, this.NumDims.x_blocks_3_mlp_act_3);

            % Erf:
            x_blocks_3_mlp_act_E = erf(x_blocks_3_mlp_act_D);
            x_blocks_3_mlp_act_ENumDims = x_blocks_3_mlp_act_DNumDims;

            % Add:
            x_blocks_3_mlp_act_A = x_blocks_3_mlp_act_E + this.Vars.x_blocks_3_mlp_act_C;
            x_blocks_3_mlp_act_ANumDims = max(x_blocks_3_mlp_act_ENumDims, this.NumDims.x_blocks_3_mlp_act_C);

            % Mul:
            x_blocks_3_mlp_act_9 = x_blocks_3_mlp_fc1_A .* x_blocks_3_mlp_act_A;
            x_blocks_3_mlp_act_9NumDims = max(x_blocks_3_mlp_fc1_ANumDims, x_blocks_3_mlp_act_ANumDims);

            % Mul:
            x_blocks_3_mlp_act_M = x_blocks_3_mlp_act_9 .* this.Vars.x_blocks_3_mlp_act_2;
            x_blocks_3_mlp_act_MNumDims = max(x_blocks_3_mlp_act_9NumDims, this.NumDims.x_blocks_3_mlp_act_2);

            % MatMul:
            [x_blocks_3_mlp_fc2_M, x_blocks_3_mlp_fc2_MNumDims] = model.ops.onnxMatMul(x_blocks_3_mlp_act_M, this.onnx__MatMul_1292, x_blocks_3_mlp_act_MNumDims, this.NumDims.onnx__MatMul_1292);

            % Add:
            x_blocks_3_mlp_fc2_A = this.Vars.pretrained_blocks_52 + x_blocks_3_mlp_fc2_M;
            x_blocks_3_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_52, x_blocks_3_mlp_fc2_MNumDims);

            % Mul:
            x_blocks_3_ls2_Mul_o = x_blocks_3_mlp_fc2_A .* this.Vars.pretrained_blocks_50;
            x_blocks_3_ls2_Mul_oNumDims = max(x_blocks_3_mlp_fc2_ANumDims, this.NumDims.pretrained_blocks_50);

            % Add:
            x_blocks_3_Add_1_out = x_blocks_3_Add_outpu + x_blocks_3_ls2_Mul_o;
            x_blocks_3_Add_1_outNumDims = max(x_blocks_3_Add_outpuNumDims, x_blocks_3_ls2_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_4_norm1_Lay, x_blocks_4_norm1_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_3_Add_1_out, this.pretrained_blocks_63, this.pretrained_blocks_62, -1, 1.000000e-06, x_blocks_3_Add_1_outNumDims);

            % MatMul:
            [x_blocks_4_attn_qk_1, x_blocks_4_attn_qk_1NumDims] = model.ops.onnxMatMul(x_blocks_4_norm1_Lay, this.onnx__MatMul_1293, x_blocks_4_norm1_LayNumDims, this.NumDims.onnx__MatMul_1293);

            % Add:
            x_blocks_4_attn_qkv_ = this.Vars.pretrained_blocks_57 + x_blocks_4_attn_qk_1;
            x_blocks_4_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_57, x_blocks_4_attn_qk_1NumDims);

            % Reshape:
            [shape, x_blocks_4_attn_Re_1NumDims] = model.ops.prepareReshapeArgs(x_blocks_4_attn_qkv_, this.Vars.x_blocks_4_attn_Co_2, x_blocks_4_attn_qkv_NumDims, 0);
            x_blocks_4_attn_Re_1 = reshape(x_blocks_4_attn_qkv_, shape{:});

            % Transpose:
            [perm, x_blocks_4_attn_Tr_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1015, x_blocks_4_attn_Re_1NumDims);
            if isempty(perm)
                x_blocks_4_attn_Tr_2 = x_blocks_4_attn_Re_1;
            else
                x_blocks_4_attn_Tr_2 = permute(x_blocks_4_attn_Re_1, perm);
            end

            % Gather:
            [x_blocks_4_attn_Ga_1, x_blocks_4_attn_Ga_1NumDims] = model.ops.onnxGather(x_blocks_4_attn_Tr_2, this.Vars.x_Constant_output_0, 0, x_blocks_4_attn_Tr_2NumDims, this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_4_attn_Gath, x_blocks_4_attn_GathNumDims] = model.ops.onnxGather(x_blocks_4_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, x_blocks_4_attn_Tr_2NumDims, this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm, x_blocks_4_attn_TranNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1016, x_blocks_4_attn_GathNumDims);
            if isempty(perm)
                x_blocks_4_attn_Tran = x_blocks_4_attn_Gath;
            else
                x_blocks_4_attn_Tran = permute(x_blocks_4_attn_Gath, perm);
            end

            % Gather:
            [x_blocks_4_attn_Ga_2, x_blocks_4_attn_Ga_2NumDims] = model.ops.onnxGather(x_blocks_4_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, x_blocks_4_attn_Tr_2NumDims, this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_4_attn_Mul_ = x_blocks_4_attn_Ga_2 .* this.Vars.x_blocks_4_attn_Cons;
            x_blocks_4_attn_Mul_NumDims = max(x_blocks_4_attn_Ga_2NumDims, this.NumDims.x_blocks_4_attn_Cons);

            % MatMul:
            [x_blocks_4_attn_Ma_1, x_blocks_4_attn_Ma_1NumDims] = model.ops.onnxMatMul(x_blocks_4_attn_Mul_, x_blocks_4_attn_Tran, x_blocks_4_attn_Mul_NumDims, x_blocks_4_attn_TranNumDims);

            % Softmax:
            [x_blocks_4_attn_Soft, x_blocks_4_attn_SoftNumDims] = model.ops.onnxSoftmax13(x_blocks_4_attn_Ma_1, -1, x_blocks_4_attn_Ma_1NumDims);

            % MatMul:
            [x_blocks_4_attn_MatM, x_blocks_4_attn_MatMNumDims] = model.ops.onnxMatMul(x_blocks_4_attn_Soft, x_blocks_4_attn_Ga_1, x_blocks_4_attn_SoftNumDims, x_blocks_4_attn_Ga_1NumDims);

            % Transpose:
            [perm, x_blocks_4_attn_Tr_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1017, x_blocks_4_attn_MatMNumDims);
            if isempty(perm)
                x_blocks_4_attn_Tr_1 = x_blocks_4_attn_MatM;
            else
                x_blocks_4_attn_Tr_1 = permute(x_blocks_4_attn_MatM, perm);
            end

            % Reshape:
            [shape, x_blocks_4_attn_ReshNumDims] = model.ops.prepareReshapeArgs(x_blocks_4_attn_Tr_1, this.Vars.x_blocks_4_attn_Co_1, x_blocks_4_attn_Tr_1NumDims, 0);
            x_blocks_4_attn_Resh = reshape(x_blocks_4_attn_Tr_1, shape{:});

            % MatMul:
            [x_blocks_4_attn_pr_1, x_blocks_4_attn_pr_1NumDims] = model.ops.onnxMatMul(x_blocks_4_attn_Resh, this.onnx__MatMul_1304, x_blocks_4_attn_ReshNumDims, this.NumDims.onnx__MatMul_1304);

            % Add:
            x_blocks_4_attn_proj = this.Vars.pretrained_blocks_4_ + x_blocks_4_attn_pr_1;
            x_blocks_4_attn_projNumDims = max(this.NumDims.pretrained_blocks_4_, x_blocks_4_attn_pr_1NumDims);

            % Mul:
            x_blocks_4_ls1_Mul_o = x_blocks_4_attn_proj .* this.Vars.pretrained_blocks_58;
            x_blocks_4_ls1_Mul_oNumDims = max(x_blocks_4_attn_projNumDims, this.NumDims.pretrained_blocks_58);

            % Add:
            x_blocks_4_Add_outpu = x_blocks_3_Add_1_out + x_blocks_4_ls1_Mul_o;
            x_blocks_4_Add_outpuNumDims = max(x_blocks_3_Add_1_outNumDims, x_blocks_4_ls1_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_4_norm2_Lay, x_blocks_4_norm2_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_4_Add_outpu, this.pretrained_blocks_65, this.pretrained_blocks_64, -1, 1.000000e-06, x_blocks_4_Add_outpuNumDims);

            % MatMul:
            [x_blocks_4_mlp_fc1_M, x_blocks_4_mlp_fc1_MNumDims] = model.ops.onnxMatMul(x_blocks_4_norm2_Lay, this.onnx__MatMul_1305, x_blocks_4_norm2_LayNumDims, this.NumDims.onnx__MatMul_1305);

            % Add:
            x_blocks_4_mlp_fc1_A = this.Vars.pretrained_blocks_60 + x_blocks_4_mlp_fc1_M;
            x_blocks_4_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_60, x_blocks_4_mlp_fc1_MNumDims);

            % Div:
            x_blocks_4_mlp_act_D = x_blocks_4_mlp_fc1_A ./ this.Vars.x_blocks_4_mlp_act_3;
            x_blocks_4_mlp_act_DNumDims = max(x_blocks_4_mlp_fc1_ANumDims, this.NumDims.x_blocks_4_mlp_act_3);

            % Erf:
            x_blocks_4_mlp_act_E = erf(x_blocks_4_mlp_act_D);
            x_blocks_4_mlp_act_ENumDims = x_blocks_4_mlp_act_DNumDims;

            % Add:
            x_blocks_4_mlp_act_A = x_blocks_4_mlp_act_E + this.Vars.x_blocks_4_mlp_act_C;
            x_blocks_4_mlp_act_ANumDims = max(x_blocks_4_mlp_act_ENumDims, this.NumDims.x_blocks_4_mlp_act_C);

            % Mul:
            x_blocks_4_mlp_act_9 = x_blocks_4_mlp_fc1_A .* x_blocks_4_mlp_act_A;
            x_blocks_4_mlp_act_9NumDims = max(x_blocks_4_mlp_fc1_ANumDims, x_blocks_4_mlp_act_ANumDims);

            % Mul:
            x_blocks_4_mlp_act_M = x_blocks_4_mlp_act_9 .* this.Vars.x_blocks_4_mlp_act_2;
            x_blocks_4_mlp_act_MNumDims = max(x_blocks_4_mlp_act_9NumDims, this.NumDims.x_blocks_4_mlp_act_2);

            % MatMul:
            [x_blocks_4_mlp_fc2_M, x_blocks_4_mlp_fc2_MNumDims] = model.ops.onnxMatMul(x_blocks_4_mlp_act_M, this.onnx__MatMul_1306, x_blocks_4_mlp_act_MNumDims, this.NumDims.onnx__MatMul_1306);

            % Add:
            x_blocks_4_mlp_fc2_A = this.Vars.pretrained_blocks_61 + x_blocks_4_mlp_fc2_M;
            x_blocks_4_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_61, x_blocks_4_mlp_fc2_MNumDims);

            % Mul:
            x_blocks_4_ls2_Mul_o = x_blocks_4_mlp_fc2_A .* this.Vars.pretrained_blocks_59;
            x_blocks_4_ls2_Mul_oNumDims = max(x_blocks_4_mlp_fc2_ANumDims, this.NumDims.pretrained_blocks_59);

            % Add:
            x_blocks_4_Add_1_out = x_blocks_4_Add_outpu + x_blocks_4_ls2_Mul_o;
            x_blocks_4_Add_1_outNumDims = max(x_blocks_4_Add_outpuNumDims, x_blocks_4_ls2_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_5_norm1_Lay, x_blocks_5_norm1_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_4_Add_1_out, this.pretrained_blocks_72, this.pretrained_blocks_71, -1, 1.000000e-06, x_blocks_4_Add_1_outNumDims);

            % MatMul:
            [x_blocks_5_attn_qk_1, x_blocks_5_attn_qk_1NumDims] = model.ops.onnxMatMul(x_blocks_5_norm1_Lay, this.onnx__MatMul_1307, x_blocks_5_norm1_LayNumDims, this.NumDims.onnx__MatMul_1307);

            % Add:
            x_blocks_5_attn_qkv_ = this.Vars.pretrained_blocks_66 + x_blocks_5_attn_qk_1;
            x_blocks_5_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_66, x_blocks_5_attn_qk_1NumDims);

            % Reshape:
            [shape, x_blocks_5_attn_Re_1NumDims] = model.ops.prepareReshapeArgs(x_blocks_5_attn_qkv_, this.Vars.x_blocks_5_attn_Co_2, x_blocks_5_attn_qkv_NumDims, 0);
            x_blocks_5_attn_Re_1 = reshape(x_blocks_5_attn_qkv_, shape{:});

            % Transpose:
            [perm, x_blocks_5_attn_Tr_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1018, x_blocks_5_attn_Re_1NumDims);
            if isempty(perm)
                x_blocks_5_attn_Tr_2 = x_blocks_5_attn_Re_1;
            else
                x_blocks_5_attn_Tr_2 = permute(x_blocks_5_attn_Re_1, perm);
            end

            % Gather:
            [x_blocks_5_attn_Ga_1, x_blocks_5_attn_Ga_1NumDims] = model.ops.onnxGather(x_blocks_5_attn_Tr_2, this.Vars.x_Constant_output_0, 0, x_blocks_5_attn_Tr_2NumDims, this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_5_attn_Gath, x_blocks_5_attn_GathNumDims] = model.ops.onnxGather(x_blocks_5_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, x_blocks_5_attn_Tr_2NumDims, this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm, x_blocks_5_attn_TranNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1019, x_blocks_5_attn_GathNumDims);
            if isempty(perm)
                x_blocks_5_attn_Tran = x_blocks_5_attn_Gath;
            else
                x_blocks_5_attn_Tran = permute(x_blocks_5_attn_Gath, perm);
            end

            % Gather:
            [x_blocks_5_attn_Ga_2, x_blocks_5_attn_Ga_2NumDims] = model.ops.onnxGather(x_blocks_5_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, x_blocks_5_attn_Tr_2NumDims, this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_5_attn_Mul_ = x_blocks_5_attn_Ga_2 .* this.Vars.x_blocks_5_attn_Cons;
            x_blocks_5_attn_Mul_NumDims = max(x_blocks_5_attn_Ga_2NumDims, this.NumDims.x_blocks_5_attn_Cons);

            % MatMul:
            [x_blocks_5_attn_Ma_1, x_blocks_5_attn_Ma_1NumDims] = model.ops.onnxMatMul(x_blocks_5_attn_Mul_, x_blocks_5_attn_Tran, x_blocks_5_attn_Mul_NumDims, x_blocks_5_attn_TranNumDims);

            % Softmax:
            [x_blocks_5_attn_Soft, x_blocks_5_attn_SoftNumDims] = model.ops.onnxSoftmax13(x_blocks_5_attn_Ma_1, -1, x_blocks_5_attn_Ma_1NumDims);

            % MatMul:
            [x_blocks_5_attn_MatM, x_blocks_5_attn_MatMNumDims] = model.ops.onnxMatMul(x_blocks_5_attn_Soft, x_blocks_5_attn_Ga_1, x_blocks_5_attn_SoftNumDims, x_blocks_5_attn_Ga_1NumDims);

            % Transpose:
            [perm, x_blocks_5_attn_Tr_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1020, x_blocks_5_attn_MatMNumDims);
            if isempty(perm)
                x_blocks_5_attn_Tr_1 = x_blocks_5_attn_MatM;
            else
                x_blocks_5_attn_Tr_1 = permute(x_blocks_5_attn_MatM, perm);
            end

            % Reshape:
            [shape, x_blocks_5_attn_ReshNumDims] = model.ops.prepareReshapeArgs(x_blocks_5_attn_Tr_1, this.Vars.x_blocks_5_attn_Co_1, x_blocks_5_attn_Tr_1NumDims, 0);
            x_blocks_5_attn_Resh = reshape(x_blocks_5_attn_Tr_1, shape{:});

            % MatMul:
            [x_blocks_5_attn_pr_1, x_blocks_5_attn_pr_1NumDims] = model.ops.onnxMatMul(x_blocks_5_attn_Resh, this.onnx__MatMul_1318, x_blocks_5_attn_ReshNumDims, this.NumDims.onnx__MatMul_1318);

            % Add:
            x_blocks_5_attn_proj = this.Vars.pretrained_blocks_5_ + x_blocks_5_attn_pr_1;
            x_blocks_5_attn_projNumDims = max(this.NumDims.pretrained_blocks_5_, x_blocks_5_attn_pr_1NumDims);

            % Mul:
            x_blocks_5_ls1_Mul_o = x_blocks_5_attn_proj .* this.Vars.pretrained_blocks_67;
            x_blocks_5_ls1_Mul_oNumDims = max(x_blocks_5_attn_projNumDims, this.NumDims.pretrained_blocks_67);

            % Add:
            x_blocks_5_Add_outpu = x_blocks_4_Add_1_out + x_blocks_5_ls1_Mul_o;
            x_blocks_5_Add_outpuNumDims = max(x_blocks_4_Add_1_outNumDims, x_blocks_5_ls1_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_5_norm2_Lay, x_blocks_5_norm2_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_5_Add_outpu, this.pretrained_blocks_74, this.pretrained_blocks_73, -1, 1.000000e-06, x_blocks_5_Add_outpuNumDims);

            % MatMul:
            [x_blocks_5_mlp_fc1_M, x_blocks_5_mlp_fc1_MNumDims] = model.ops.onnxMatMul(x_blocks_5_norm2_Lay, this.onnx__MatMul_1319, x_blocks_5_norm2_LayNumDims, this.NumDims.onnx__MatMul_1319);

            % Add:
            x_blocks_5_mlp_fc1_A = this.Vars.pretrained_blocks_69 + x_blocks_5_mlp_fc1_M;
            x_blocks_5_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_69, x_blocks_5_mlp_fc1_MNumDims);

            % Div:
            x_blocks_5_mlp_act_D = x_blocks_5_mlp_fc1_A ./ this.Vars.x_blocks_5_mlp_act_3;
            x_blocks_5_mlp_act_DNumDims = max(x_blocks_5_mlp_fc1_ANumDims, this.NumDims.x_blocks_5_mlp_act_3);

            % Erf:
            x_blocks_5_mlp_act_E = erf(x_blocks_5_mlp_act_D);
            x_blocks_5_mlp_act_ENumDims = x_blocks_5_mlp_act_DNumDims;

            % Add:
            x_blocks_5_mlp_act_A = x_blocks_5_mlp_act_E + this.Vars.x_blocks_5_mlp_act_C;
            x_blocks_5_mlp_act_ANumDims = max(x_blocks_5_mlp_act_ENumDims, this.NumDims.x_blocks_5_mlp_act_C);

            % Mul:
            x_blocks_5_mlp_act_9 = x_blocks_5_mlp_fc1_A .* x_blocks_5_mlp_act_A;
            x_blocks_5_mlp_act_9NumDims = max(x_blocks_5_mlp_fc1_ANumDims, x_blocks_5_mlp_act_ANumDims);

            % Mul:
            x_blocks_5_mlp_act_M = x_blocks_5_mlp_act_9 .* this.Vars.x_blocks_5_mlp_act_2;
            x_blocks_5_mlp_act_MNumDims = max(x_blocks_5_mlp_act_9NumDims, this.NumDims.x_blocks_5_mlp_act_2);

            % MatMul:
            [x_blocks_5_mlp_fc2_M, x_blocks_5_mlp_fc2_MNumDims] = model.ops.onnxMatMul(x_blocks_5_mlp_act_M, this.onnx__MatMul_1320, x_blocks_5_mlp_act_MNumDims, this.NumDims.onnx__MatMul_1320);

            % Add:
            x_blocks_5_mlp_fc2_A = this.Vars.pretrained_blocks_70 + x_blocks_5_mlp_fc2_M;
            x_blocks_5_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_70, x_blocks_5_mlp_fc2_MNumDims);

            % Mul:
            x_blocks_5_ls2_Mul_o = x_blocks_5_mlp_fc2_A .* this.Vars.pretrained_blocks_68;
            x_blocks_5_ls2_Mul_oNumDims = max(x_blocks_5_mlp_fc2_ANumDims, this.NumDims.pretrained_blocks_68);

            % Add:
            x_blocks_5_Add_1_out = x_blocks_5_Add_outpu + x_blocks_5_ls2_Mul_o;
            x_blocks_5_Add_1_outNumDims = max(x_blocks_5_Add_outpuNumDims, x_blocks_5_ls2_Mul_oNumDims);

            % LayerNormalization:
            [x_norm_1_LayerNormal, x_norm_1_LayerNormalNumDims] = model.ops.onnxLayerNormalization(x_blocks_5_Add_1_out, this.pretrained_norm_weig, this.pretrained_norm_bias, -1, 1.000000e-06, x_blocks_5_Add_1_outNumDims);

            % Slice:
            [Indices, x_Slice_1_output_0NumDims] = model.ops.prepareSliceArgs(x_norm_1_LayerNormal, this.Vars.x_Constant_10_output, this.Vars.x_Constant_11_output, this.Vars.x_Constant_9_output_, this.Vars.x_Constant_12_output, x_norm_1_LayerNormalNumDims);
            x_Slice_1_output_0 = x_norm_1_LayerNormal(Indices{:});

            % Transpose:
            [perm, x_depth_head_TranspoNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1021, x_Slice_1_output_0NumDims);
            if isempty(perm)
                x_depth_head_Transpo = x_Slice_1_output_0;
            else
                x_depth_head_Transpo = permute(x_Slice_1_output_0, perm);
            end

            % Reshape:
            [shape, x_depth_head_ReshapeNumDims] = model.ops.prepareReshapeArgs(x_depth_head_Transpo, this.Vars.x_depth_head_Constan, x_depth_head_TranspoNumDims, 0);
            x_depth_head_Reshape = reshape(x_depth_head_Transpo, shape{:});

            % LayerNormalization:
            [x_blocks_6_norm1_Lay, x_blocks_6_norm1_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_5_Add_1_out, this.pretrained_blocks_81, this.pretrained_blocks_80, -1, 1.000000e-06, x_blocks_5_Add_1_outNumDims);

            % MatMul:
            [x_blocks_6_attn_qk_1, x_blocks_6_attn_qk_1NumDims] = model.ops.onnxMatMul(x_blocks_6_norm1_Lay, this.onnx__MatMul_1321, x_blocks_6_norm1_LayNumDims, this.NumDims.onnx__MatMul_1321);

            % Add:
            x_blocks_6_attn_qkv_ = this.Vars.pretrained_blocks_75 + x_blocks_6_attn_qk_1;
            x_blocks_6_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_75, x_blocks_6_attn_qk_1NumDims);

            % Reshape:
            [shape, x_blocks_6_attn_Re_1NumDims] = model.ops.prepareReshapeArgs(x_blocks_6_attn_qkv_, this.Vars.x_blocks_6_attn_Co_2, x_blocks_6_attn_qkv_NumDims, 0);
            x_blocks_6_attn_Re_1 = reshape(x_blocks_6_attn_qkv_, shape{:});

            % Transpose:
            [perm, x_blocks_6_attn_Tr_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1022, x_blocks_6_attn_Re_1NumDims);
            if isempty(perm)
                x_blocks_6_attn_Tr_2 = x_blocks_6_attn_Re_1;
            else
                x_blocks_6_attn_Tr_2 = permute(x_blocks_6_attn_Re_1, perm);
            end

            % Gather:
            [x_blocks_6_attn_Ga_1, x_blocks_6_attn_Ga_1NumDims] = model.ops.onnxGather(x_blocks_6_attn_Tr_2, this.Vars.x_Constant_output_0, 0, x_blocks_6_attn_Tr_2NumDims, this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_6_attn_Gath, x_blocks_6_attn_GathNumDims] = model.ops.onnxGather(x_blocks_6_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, x_blocks_6_attn_Tr_2NumDims, this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm, x_blocks_6_attn_TranNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1023, x_blocks_6_attn_GathNumDims);
            if isempty(perm)
                x_blocks_6_attn_Tran = x_blocks_6_attn_Gath;
            else
                x_blocks_6_attn_Tran = permute(x_blocks_6_attn_Gath, perm);
            end

            % Gather:
            [x_blocks_6_attn_Ga_2, x_blocks_6_attn_Ga_2NumDims] = model.ops.onnxGather(x_blocks_6_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, x_blocks_6_attn_Tr_2NumDims, this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_6_attn_Mul_ = x_blocks_6_attn_Ga_2 .* this.Vars.x_blocks_6_attn_Cons;
            x_blocks_6_attn_Mul_NumDims = max(x_blocks_6_attn_Ga_2NumDims, this.NumDims.x_blocks_6_attn_Cons);

            % MatMul:
            [x_blocks_6_attn_Ma_1, x_blocks_6_attn_Ma_1NumDims] = model.ops.onnxMatMul(x_blocks_6_attn_Mul_, x_blocks_6_attn_Tran, x_blocks_6_attn_Mul_NumDims, x_blocks_6_attn_TranNumDims);

            % Softmax:
            [x_blocks_6_attn_Soft, x_blocks_6_attn_SoftNumDims] = model.ops.onnxSoftmax13(x_blocks_6_attn_Ma_1, -1, x_blocks_6_attn_Ma_1NumDims);

            % MatMul:
            [x_blocks_6_attn_MatM, x_blocks_6_attn_MatMNumDims] = model.ops.onnxMatMul(x_blocks_6_attn_Soft, x_blocks_6_attn_Ga_1, x_blocks_6_attn_SoftNumDims, x_blocks_6_attn_Ga_1NumDims);

            % Transpose:
            [perm, x_blocks_6_attn_Tr_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1024, x_blocks_6_attn_MatMNumDims);
            if isempty(perm)
                x_blocks_6_attn_Tr_1 = x_blocks_6_attn_MatM;
            else
                x_blocks_6_attn_Tr_1 = permute(x_blocks_6_attn_MatM, perm);
            end

            % Reshape:
            [shape, x_blocks_6_attn_ReshNumDims] = model.ops.prepareReshapeArgs(x_blocks_6_attn_Tr_1, this.Vars.x_blocks_6_attn_Co_1, x_blocks_6_attn_Tr_1NumDims, 0);
            x_blocks_6_attn_Resh = reshape(x_blocks_6_attn_Tr_1, shape{:});

            % MatMul:
            [x_blocks_6_attn_pr_1, x_blocks_6_attn_pr_1NumDims] = model.ops.onnxMatMul(x_blocks_6_attn_Resh, this.onnx__MatMul_1332, x_blocks_6_attn_ReshNumDims, this.NumDims.onnx__MatMul_1332);

            % Add:
            x_blocks_6_attn_proj = this.Vars.pretrained_blocks_6_ + x_blocks_6_attn_pr_1;
            x_blocks_6_attn_projNumDims = max(this.NumDims.pretrained_blocks_6_, x_blocks_6_attn_pr_1NumDims);

            % Mul:
            x_blocks_6_ls1_Mul_o = x_blocks_6_attn_proj .* this.Vars.pretrained_blocks_76;
            x_blocks_6_ls1_Mul_oNumDims = max(x_blocks_6_attn_projNumDims, this.NumDims.pretrained_blocks_76);

            % Add:
            x_blocks_6_Add_outpu = x_blocks_5_Add_1_out + x_blocks_6_ls1_Mul_o;
            x_blocks_6_Add_outpuNumDims = max(x_blocks_5_Add_1_outNumDims, x_blocks_6_ls1_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_6_norm2_Lay, x_blocks_6_norm2_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_6_Add_outpu, this.pretrained_blocks_83, this.pretrained_blocks_82, -1, 1.000000e-06, x_blocks_6_Add_outpuNumDims);

            % MatMul:
            [x_blocks_6_mlp_fc1_M, x_blocks_6_mlp_fc1_MNumDims] = model.ops.onnxMatMul(x_blocks_6_norm2_Lay, this.onnx__MatMul_1333, x_blocks_6_norm2_LayNumDims, this.NumDims.onnx__MatMul_1333);

            % Add:
            x_blocks_6_mlp_fc1_A = this.Vars.pretrained_blocks_78 + x_blocks_6_mlp_fc1_M;
            x_blocks_6_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_78, x_blocks_6_mlp_fc1_MNumDims);

            % Div:
            x_blocks_6_mlp_act_D = x_blocks_6_mlp_fc1_A ./ this.Vars.x_blocks_6_mlp_act_3;
            x_blocks_6_mlp_act_DNumDims = max(x_blocks_6_mlp_fc1_ANumDims, this.NumDims.x_blocks_6_mlp_act_3);

            % Erf:
            x_blocks_6_mlp_act_E = erf(x_blocks_6_mlp_act_D);
            x_blocks_6_mlp_act_ENumDims = x_blocks_6_mlp_act_DNumDims;

            % Add:
            x_blocks_6_mlp_act_A = x_blocks_6_mlp_act_E + this.Vars.x_blocks_6_mlp_act_C;
            x_blocks_6_mlp_act_ANumDims = max(x_blocks_6_mlp_act_ENumDims, this.NumDims.x_blocks_6_mlp_act_C);

            % Mul:
            x_blocks_6_mlp_act_9 = x_blocks_6_mlp_fc1_A .* x_blocks_6_mlp_act_A;
            x_blocks_6_mlp_act_9NumDims = max(x_blocks_6_mlp_fc1_ANumDims, x_blocks_6_mlp_act_ANumDims);

            % Mul:
            x_blocks_6_mlp_act_M = x_blocks_6_mlp_act_9 .* this.Vars.x_blocks_6_mlp_act_2;
            x_blocks_6_mlp_act_MNumDims = max(x_blocks_6_mlp_act_9NumDims, this.NumDims.x_blocks_6_mlp_act_2);

            % MatMul:
            [x_blocks_6_mlp_fc2_M, x_blocks_6_mlp_fc2_MNumDims] = model.ops.onnxMatMul(x_blocks_6_mlp_act_M, this.onnx__MatMul_1334, x_blocks_6_mlp_act_MNumDims, this.NumDims.onnx__MatMul_1334);

            % Add:
            x_blocks_6_mlp_fc2_A = this.Vars.pretrained_blocks_79 + x_blocks_6_mlp_fc2_M;
            x_blocks_6_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_79, x_blocks_6_mlp_fc2_MNumDims);

            % Mul:
            x_blocks_6_ls2_Mul_o = x_blocks_6_mlp_fc2_A .* this.Vars.pretrained_blocks_77;
            x_blocks_6_ls2_Mul_oNumDims = max(x_blocks_6_mlp_fc2_ANumDims, this.NumDims.pretrained_blocks_77);

            % Add:
            x_blocks_6_Add_1_out = x_blocks_6_Add_outpu + x_blocks_6_ls2_Mul_o;
            x_blocks_6_Add_1_outNumDims = max(x_blocks_6_Add_outpuNumDims, x_blocks_6_ls2_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_7_norm1_Lay, x_blocks_7_norm1_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_6_Add_1_out, this.pretrained_blocks_90, this.pretrained_blocks_89, -1, 1.000000e-06, x_blocks_6_Add_1_outNumDims);

            % MatMul:
            [x_blocks_7_attn_qk_1, x_blocks_7_attn_qk_1NumDims] = model.ops.onnxMatMul(x_blocks_7_norm1_Lay, this.onnx__MatMul_1335, x_blocks_7_norm1_LayNumDims, this.NumDims.onnx__MatMul_1335);

            % Add:
            x_blocks_7_attn_qkv_ = this.Vars.pretrained_blocks_84 + x_blocks_7_attn_qk_1;
            x_blocks_7_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_84, x_blocks_7_attn_qk_1NumDims);

            % Reshape:
            [shape, x_blocks_7_attn_Re_1NumDims] = model.ops.prepareReshapeArgs(x_blocks_7_attn_qkv_, this.Vars.x_blocks_7_attn_Co_2, x_blocks_7_attn_qkv_NumDims, 0);
            x_blocks_7_attn_Re_1 = reshape(x_blocks_7_attn_qkv_, shape{:});

            % Transpose:
            [perm, x_blocks_7_attn_Tr_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1025, x_blocks_7_attn_Re_1NumDims);
            if isempty(perm)
                x_blocks_7_attn_Tr_2 = x_blocks_7_attn_Re_1;
            else
                x_blocks_7_attn_Tr_2 = permute(x_blocks_7_attn_Re_1, perm);
            end

            % Gather:
            [x_blocks_7_attn_Ga_1, x_blocks_7_attn_Ga_1NumDims] = model.ops.onnxGather(x_blocks_7_attn_Tr_2, this.Vars.x_Constant_output_0, 0, x_blocks_7_attn_Tr_2NumDims, this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_7_attn_Gath, x_blocks_7_attn_GathNumDims] = model.ops.onnxGather(x_blocks_7_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, x_blocks_7_attn_Tr_2NumDims, this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm, x_blocks_7_attn_TranNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1026, x_blocks_7_attn_GathNumDims);
            if isempty(perm)
                x_blocks_7_attn_Tran = x_blocks_7_attn_Gath;
            else
                x_blocks_7_attn_Tran = permute(x_blocks_7_attn_Gath, perm);
            end

            % Gather:
            [x_blocks_7_attn_Ga_2, x_blocks_7_attn_Ga_2NumDims] = model.ops.onnxGather(x_blocks_7_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, x_blocks_7_attn_Tr_2NumDims, this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_7_attn_Mul_ = x_blocks_7_attn_Ga_2 .* this.Vars.x_blocks_7_attn_Cons;
            x_blocks_7_attn_Mul_NumDims = max(x_blocks_7_attn_Ga_2NumDims, this.NumDims.x_blocks_7_attn_Cons);

            % MatMul:
            [x_blocks_7_attn_Ma_1, x_blocks_7_attn_Ma_1NumDims] = model.ops.onnxMatMul(x_blocks_7_attn_Mul_, x_blocks_7_attn_Tran, x_blocks_7_attn_Mul_NumDims, x_blocks_7_attn_TranNumDims);

            % Softmax:
            [x_blocks_7_attn_Soft, x_blocks_7_attn_SoftNumDims] = model.ops.onnxSoftmax13(x_blocks_7_attn_Ma_1, -1, x_blocks_7_attn_Ma_1NumDims);

            % MatMul:
            [x_blocks_7_attn_MatM, x_blocks_7_attn_MatMNumDims] = model.ops.onnxMatMul(x_blocks_7_attn_Soft, x_blocks_7_attn_Ga_1, x_blocks_7_attn_SoftNumDims, x_blocks_7_attn_Ga_1NumDims);

            % Transpose:
            [perm, x_blocks_7_attn_Tr_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1027, x_blocks_7_attn_MatMNumDims);
            if isempty(perm)
                x_blocks_7_attn_Tr_1 = x_blocks_7_attn_MatM;
            else
                x_blocks_7_attn_Tr_1 = permute(x_blocks_7_attn_MatM, perm);
            end

            % Reshape:
            [shape, x_blocks_7_attn_ReshNumDims] = model.ops.prepareReshapeArgs(x_blocks_7_attn_Tr_1, this.Vars.x_blocks_7_attn_Co_1, x_blocks_7_attn_Tr_1NumDims, 0);
            x_blocks_7_attn_Resh = reshape(x_blocks_7_attn_Tr_1, shape{:});

            % MatMul:
            [x_blocks_7_attn_pr_1, x_blocks_7_attn_pr_1NumDims] = model.ops.onnxMatMul(x_blocks_7_attn_Resh, this.onnx__MatMul_1346, x_blocks_7_attn_ReshNumDims, this.NumDims.onnx__MatMul_1346);

            % Add:
            x_blocks_7_attn_proj = this.Vars.pretrained_blocks_7_ + x_blocks_7_attn_pr_1;
            x_blocks_7_attn_projNumDims = max(this.NumDims.pretrained_blocks_7_, x_blocks_7_attn_pr_1NumDims);

            % Mul:
            x_blocks_7_ls1_Mul_o = x_blocks_7_attn_proj .* this.Vars.pretrained_blocks_85;
            x_blocks_7_ls1_Mul_oNumDims = max(x_blocks_7_attn_projNumDims, this.NumDims.pretrained_blocks_85);

            % Add:
            x_blocks_7_Add_outpu = x_blocks_6_Add_1_out + x_blocks_7_ls1_Mul_o;
            x_blocks_7_Add_outpuNumDims = max(x_blocks_6_Add_1_outNumDims, x_blocks_7_ls1_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_7_norm2_Lay, x_blocks_7_norm2_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_7_Add_outpu, this.pretrained_blocks_92, this.pretrained_blocks_91, -1, 1.000000e-06, x_blocks_7_Add_outpuNumDims);

            % MatMul:
            [x_blocks_7_mlp_fc1_M, x_blocks_7_mlp_fc1_MNumDims] = model.ops.onnxMatMul(x_blocks_7_norm2_Lay, this.onnx__MatMul_1347, x_blocks_7_norm2_LayNumDims, this.NumDims.onnx__MatMul_1347);

            % Add:
            x_blocks_7_mlp_fc1_A = this.Vars.pretrained_blocks_87 + x_blocks_7_mlp_fc1_M;
            x_blocks_7_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_87, x_blocks_7_mlp_fc1_MNumDims);

            % Div:
            x_blocks_7_mlp_act_D = x_blocks_7_mlp_fc1_A ./ this.Vars.x_blocks_7_mlp_act_3;
            x_blocks_7_mlp_act_DNumDims = max(x_blocks_7_mlp_fc1_ANumDims, this.NumDims.x_blocks_7_mlp_act_3);

            % Erf:
            x_blocks_7_mlp_act_E = erf(x_blocks_7_mlp_act_D);
            x_blocks_7_mlp_act_ENumDims = x_blocks_7_mlp_act_DNumDims;

            % Add:
            x_blocks_7_mlp_act_A = x_blocks_7_mlp_act_E + this.Vars.x_blocks_7_mlp_act_C;
            x_blocks_7_mlp_act_ANumDims = max(x_blocks_7_mlp_act_ENumDims, this.NumDims.x_blocks_7_mlp_act_C);

            % Mul:
            x_blocks_7_mlp_act_9 = x_blocks_7_mlp_fc1_A .* x_blocks_7_mlp_act_A;
            x_blocks_7_mlp_act_9NumDims = max(x_blocks_7_mlp_fc1_ANumDims, x_blocks_7_mlp_act_ANumDims);

            % Mul:
            x_blocks_7_mlp_act_M = x_blocks_7_mlp_act_9 .* this.Vars.x_blocks_7_mlp_act_2;
            x_blocks_7_mlp_act_MNumDims = max(x_blocks_7_mlp_act_9NumDims, this.NumDims.x_blocks_7_mlp_act_2);

            % MatMul:
            [x_blocks_7_mlp_fc2_M, x_blocks_7_mlp_fc2_MNumDims] = model.ops.onnxMatMul(x_blocks_7_mlp_act_M, this.onnx__MatMul_1348, x_blocks_7_mlp_act_MNumDims, this.NumDims.onnx__MatMul_1348);

            % Add:
            x_blocks_7_mlp_fc2_A = this.Vars.pretrained_blocks_88 + x_blocks_7_mlp_fc2_M;
            x_blocks_7_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_88, x_blocks_7_mlp_fc2_MNumDims);

            % Mul:
            x_blocks_7_ls2_Mul_o = x_blocks_7_mlp_fc2_A .* this.Vars.pretrained_blocks_86;
            x_blocks_7_ls2_Mul_oNumDims = max(x_blocks_7_mlp_fc2_ANumDims, this.NumDims.pretrained_blocks_86);

            % Add:
            x_blocks_7_Add_1_out = x_blocks_7_Add_outpu + x_blocks_7_ls2_Mul_o;
            x_blocks_7_Add_1_outNumDims = max(x_blocks_7_Add_outpuNumDims, x_blocks_7_ls2_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_8_norm1_Lay, x_blocks_8_norm1_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_7_Add_1_out, this.pretrained_blocks_99, this.pretrained_blocks_98, -1, 1.000000e-06, x_blocks_7_Add_1_outNumDims);

            % MatMul:
            [x_blocks_8_attn_qk_1, x_blocks_8_attn_qk_1NumDims] = model.ops.onnxMatMul(x_blocks_8_norm1_Lay, this.onnx__MatMul_1349, x_blocks_8_norm1_LayNumDims, this.NumDims.onnx__MatMul_1349);

            % Add:
            x_blocks_8_attn_qkv_ = this.Vars.pretrained_blocks_93 + x_blocks_8_attn_qk_1;
            x_blocks_8_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_93, x_blocks_8_attn_qk_1NumDims);

            % Reshape:
            [shape, x_blocks_8_attn_Re_1NumDims] = model.ops.prepareReshapeArgs(x_blocks_8_attn_qkv_, this.Vars.x_blocks_8_attn_Co_2, x_blocks_8_attn_qkv_NumDims, 0);
            x_blocks_8_attn_Re_1 = reshape(x_blocks_8_attn_qkv_, shape{:});

            % Transpose:
            [perm, x_blocks_8_attn_Tr_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1028, x_blocks_8_attn_Re_1NumDims);
            if isempty(perm)
                x_blocks_8_attn_Tr_2 = x_blocks_8_attn_Re_1;
            else
                x_blocks_8_attn_Tr_2 = permute(x_blocks_8_attn_Re_1, perm);
            end

            % Gather:
            [x_blocks_8_attn_Ga_1, x_blocks_8_attn_Ga_1NumDims] = model.ops.onnxGather(x_blocks_8_attn_Tr_2, this.Vars.x_Constant_output_0, 0, x_blocks_8_attn_Tr_2NumDims, this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_8_attn_Gath, x_blocks_8_attn_GathNumDims] = model.ops.onnxGather(x_blocks_8_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, x_blocks_8_attn_Tr_2NumDims, this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm, x_blocks_8_attn_TranNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1029, x_blocks_8_attn_GathNumDims);
            if isempty(perm)
                x_blocks_8_attn_Tran = x_blocks_8_attn_Gath;
            else
                x_blocks_8_attn_Tran = permute(x_blocks_8_attn_Gath, perm);
            end

            % Gather:
            [x_blocks_8_attn_Ga_2, x_blocks_8_attn_Ga_2NumDims] = model.ops.onnxGather(x_blocks_8_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, x_blocks_8_attn_Tr_2NumDims, this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_8_attn_Mul_ = x_blocks_8_attn_Ga_2 .* this.Vars.x_blocks_8_attn_Cons;
            x_blocks_8_attn_Mul_NumDims = max(x_blocks_8_attn_Ga_2NumDims, this.NumDims.x_blocks_8_attn_Cons);

            % MatMul:
            [x_blocks_8_attn_Ma_1, x_blocks_8_attn_Ma_1NumDims] = model.ops.onnxMatMul(x_blocks_8_attn_Mul_, x_blocks_8_attn_Tran, x_blocks_8_attn_Mul_NumDims, x_blocks_8_attn_TranNumDims);

            % Softmax:
            [x_blocks_8_attn_Soft, x_blocks_8_attn_SoftNumDims] = model.ops.onnxSoftmax13(x_blocks_8_attn_Ma_1, -1, x_blocks_8_attn_Ma_1NumDims);

            % MatMul:
            [x_blocks_8_attn_MatM, x_blocks_8_attn_MatMNumDims] = model.ops.onnxMatMul(x_blocks_8_attn_Soft, x_blocks_8_attn_Ga_1, x_blocks_8_attn_SoftNumDims, x_blocks_8_attn_Ga_1NumDims);

            % Transpose:
            [perm, x_blocks_8_attn_Tr_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1030, x_blocks_8_attn_MatMNumDims);
            if isempty(perm)
                x_blocks_8_attn_Tr_1 = x_blocks_8_attn_MatM;
            else
                x_blocks_8_attn_Tr_1 = permute(x_blocks_8_attn_MatM, perm);
            end

            % Reshape:
            [shape, x_blocks_8_attn_ReshNumDims] = model.ops.prepareReshapeArgs(x_blocks_8_attn_Tr_1, this.Vars.x_blocks_8_attn_Co_1, x_blocks_8_attn_Tr_1NumDims, 0);
            x_blocks_8_attn_Resh = reshape(x_blocks_8_attn_Tr_1, shape{:});

            % MatMul:
            [x_blocks_8_attn_pr_1, x_blocks_8_attn_pr_1NumDims] = model.ops.onnxMatMul(x_blocks_8_attn_Resh, this.onnx__MatMul_1360, x_blocks_8_attn_ReshNumDims, this.NumDims.onnx__MatMul_1360);

            % Add:
            x_blocks_8_attn_proj = this.Vars.pretrained_blocks_8_ + x_blocks_8_attn_pr_1;
            x_blocks_8_attn_projNumDims = max(this.NumDims.pretrained_blocks_8_, x_blocks_8_attn_pr_1NumDims);

            % Mul:
            x_blocks_8_ls1_Mul_o = x_blocks_8_attn_proj .* this.Vars.pretrained_blocks_94;
            x_blocks_8_ls1_Mul_oNumDims = max(x_blocks_8_attn_projNumDims, this.NumDims.pretrained_blocks_94);

            % Add:
            x_blocks_8_Add_outpu = x_blocks_7_Add_1_out + x_blocks_8_ls1_Mul_o;
            x_blocks_8_Add_outpuNumDims = max(x_blocks_7_Add_1_outNumDims, x_blocks_8_ls1_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_8_norm2_Lay, x_blocks_8_norm2_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_8_Add_outpu, this.pretrained_block_101, this.pretrained_block_100, -1, 1.000000e-06, x_blocks_8_Add_outpuNumDims);

            % MatMul:
            [x_blocks_8_mlp_fc1_M, x_blocks_8_mlp_fc1_MNumDims] = model.ops.onnxMatMul(x_blocks_8_norm2_Lay, this.onnx__MatMul_1361, x_blocks_8_norm2_LayNumDims, this.NumDims.onnx__MatMul_1361);

            % Add:
            x_blocks_8_mlp_fc1_A = this.Vars.pretrained_blocks_96 + x_blocks_8_mlp_fc1_M;
            x_blocks_8_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_96, x_blocks_8_mlp_fc1_MNumDims);

            % Div:
            x_blocks_8_mlp_act_D = x_blocks_8_mlp_fc1_A ./ this.Vars.x_blocks_8_mlp_act_3;
            x_blocks_8_mlp_act_DNumDims = max(x_blocks_8_mlp_fc1_ANumDims, this.NumDims.x_blocks_8_mlp_act_3);

            % Erf:
            x_blocks_8_mlp_act_E = erf(x_blocks_8_mlp_act_D);
            x_blocks_8_mlp_act_ENumDims = x_blocks_8_mlp_act_DNumDims;

            % Add:
            x_blocks_8_mlp_act_A = x_blocks_8_mlp_act_E + this.Vars.x_blocks_8_mlp_act_C;
            x_blocks_8_mlp_act_ANumDims = max(x_blocks_8_mlp_act_ENumDims, this.NumDims.x_blocks_8_mlp_act_C);

            % Mul:
            x_blocks_8_mlp_act_9 = x_blocks_8_mlp_fc1_A .* x_blocks_8_mlp_act_A;
            x_blocks_8_mlp_act_9NumDims = max(x_blocks_8_mlp_fc1_ANumDims, x_blocks_8_mlp_act_ANumDims);

            % Mul:
            x_blocks_8_mlp_act_M = x_blocks_8_mlp_act_9 .* this.Vars.x_blocks_8_mlp_act_2;
            x_blocks_8_mlp_act_MNumDims = max(x_blocks_8_mlp_act_9NumDims, this.NumDims.x_blocks_8_mlp_act_2);

            % MatMul:
            [x_blocks_8_mlp_fc2_M, x_blocks_8_mlp_fc2_MNumDims] = model.ops.onnxMatMul(x_blocks_8_mlp_act_M, this.onnx__MatMul_1362, x_blocks_8_mlp_act_MNumDims, this.NumDims.onnx__MatMul_1362);

            % Add:
            x_blocks_8_mlp_fc2_A = this.Vars.pretrained_blocks_97 + x_blocks_8_mlp_fc2_M;
            x_blocks_8_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_97, x_blocks_8_mlp_fc2_MNumDims);

            % Mul:
            x_blocks_8_ls2_Mul_o = x_blocks_8_mlp_fc2_A .* this.Vars.pretrained_blocks_95;
            x_blocks_8_ls2_Mul_oNumDims = max(x_blocks_8_mlp_fc2_ANumDims, this.NumDims.pretrained_blocks_95);

            % Add:
            x_blocks_8_Add_1_out = x_blocks_8_Add_outpu + x_blocks_8_ls2_Mul_o;
            x_blocks_8_Add_1_outNumDims = max(x_blocks_8_Add_outpuNumDims, x_blocks_8_ls2_Mul_oNumDims);

            % LayerNormalization:
            [x_norm_2_LayerNormal, x_norm_2_LayerNormalNumDims] = model.ops.onnxLayerNormalization(x_blocks_8_Add_1_out, this.pretrained_norm_weig, this.pretrained_norm_bias, -1, 1.000000e-06, x_blocks_8_Add_1_outNumDims);

            % Slice:
            [Indices, x_Slice_2_output_0NumDims] = model.ops.prepareSliceArgs(x_norm_2_LayerNormal, this.Vars.x_Constant_14_output, this.Vars.x_Constant_15_output, this.Vars.x_Constant_13_output, this.Vars.x_Constant_16_output, x_norm_2_LayerNormalNumDims);
            x_Slice_2_output_0 = x_norm_2_LayerNormal(Indices{:});

            % Transpose:
            [perm, x_depth_head_Trans_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1031, x_Slice_2_output_0NumDims);
            if isempty(perm)
                x_depth_head_Trans_1 = x_Slice_2_output_0;
            else
                x_depth_head_Trans_1 = permute(x_Slice_2_output_0, perm);
            end

            % Reshape:
            [shape, x_depth_head_Resha_1NumDims] = model.ops.prepareReshapeArgs(x_depth_head_Trans_1, this.Vars.x_depth_head_Const_1, x_depth_head_Trans_1NumDims, 0);
            x_depth_head_Resha_1 = reshape(x_depth_head_Trans_1, shape{:});

            % LayerNormalization:
            [x_blocks_9_norm1_Lay, x_blocks_9_norm1_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_8_Add_1_out, this.pretrained_block_108, this.pretrained_block_107, -1, 1.000000e-06, x_blocks_8_Add_1_outNumDims);

            % MatMul:
            [x_blocks_9_attn_qk_1, x_blocks_9_attn_qk_1NumDims] = model.ops.onnxMatMul(x_blocks_9_norm1_Lay, this.onnx__MatMul_1363, x_blocks_9_norm1_LayNumDims, this.NumDims.onnx__MatMul_1363);

            % Add:
            x_blocks_9_attn_qkv_ = this.Vars.pretrained_block_102 + x_blocks_9_attn_qk_1;
            x_blocks_9_attn_qkv_NumDims = max(this.NumDims.pretrained_block_102, x_blocks_9_attn_qk_1NumDims);

            % Reshape:
            [shape, x_blocks_9_attn_Re_1NumDims] = model.ops.prepareReshapeArgs(x_blocks_9_attn_qkv_, this.Vars.x_blocks_9_attn_Co_2, x_blocks_9_attn_qkv_NumDims, 0);
            x_blocks_9_attn_Re_1 = reshape(x_blocks_9_attn_qkv_, shape{:});

            % Transpose:
            [perm, x_blocks_9_attn_Tr_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1032, x_blocks_9_attn_Re_1NumDims);
            if isempty(perm)
                x_blocks_9_attn_Tr_2 = x_blocks_9_attn_Re_1;
            else
                x_blocks_9_attn_Tr_2 = permute(x_blocks_9_attn_Re_1, perm);
            end

            % Gather:
            [x_blocks_9_attn_Ga_1, x_blocks_9_attn_Ga_1NumDims] = model.ops.onnxGather(x_blocks_9_attn_Tr_2, this.Vars.x_Constant_output_0, 0, x_blocks_9_attn_Tr_2NumDims, this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_9_attn_Gath, x_blocks_9_attn_GathNumDims] = model.ops.onnxGather(x_blocks_9_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, x_blocks_9_attn_Tr_2NumDims, this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm, x_blocks_9_attn_TranNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1033, x_blocks_9_attn_GathNumDims);
            if isempty(perm)
                x_blocks_9_attn_Tran = x_blocks_9_attn_Gath;
            else
                x_blocks_9_attn_Tran = permute(x_blocks_9_attn_Gath, perm);
            end

            % Gather:
            [x_blocks_9_attn_Ga_2, x_blocks_9_attn_Ga_2NumDims] = model.ops.onnxGather(x_blocks_9_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, x_blocks_9_attn_Tr_2NumDims, this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_9_attn_Mul_ = x_blocks_9_attn_Ga_2 .* this.Vars.x_blocks_9_attn_Cons;
            x_blocks_9_attn_Mul_NumDims = max(x_blocks_9_attn_Ga_2NumDims, this.NumDims.x_blocks_9_attn_Cons);

            % MatMul:
            [x_blocks_9_attn_Ma_1, x_blocks_9_attn_Ma_1NumDims] = model.ops.onnxMatMul(x_blocks_9_attn_Mul_, x_blocks_9_attn_Tran, x_blocks_9_attn_Mul_NumDims, x_blocks_9_attn_TranNumDims);

            % Softmax:
            [x_blocks_9_attn_Soft, x_blocks_9_attn_SoftNumDims] = model.ops.onnxSoftmax13(x_blocks_9_attn_Ma_1, -1, x_blocks_9_attn_Ma_1NumDims);

            % MatMul:
            [x_blocks_9_attn_MatM, x_blocks_9_attn_MatMNumDims] = model.ops.onnxMatMul(x_blocks_9_attn_Soft, x_blocks_9_attn_Ga_1, x_blocks_9_attn_SoftNumDims, x_blocks_9_attn_Ga_1NumDims);

            % Transpose:
            [perm, x_blocks_9_attn_Tr_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1034, x_blocks_9_attn_MatMNumDims);
            if isempty(perm)
                x_blocks_9_attn_Tr_1 = x_blocks_9_attn_MatM;
            else
                x_blocks_9_attn_Tr_1 = permute(x_blocks_9_attn_MatM, perm);
            end

            % Reshape:
            [shape, x_blocks_9_attn_ReshNumDims] = model.ops.prepareReshapeArgs(x_blocks_9_attn_Tr_1, this.Vars.x_blocks_9_attn_Co_1, x_blocks_9_attn_Tr_1NumDims, 0);
            x_blocks_9_attn_Resh = reshape(x_blocks_9_attn_Tr_1, shape{:});

            % MatMul:
            [x_blocks_9_attn_pr_1, x_blocks_9_attn_pr_1NumDims] = model.ops.onnxMatMul(x_blocks_9_attn_Resh, this.onnx__MatMul_1374, x_blocks_9_attn_ReshNumDims, this.NumDims.onnx__MatMul_1374);

            % Add:
            x_blocks_9_attn_proj = this.Vars.pretrained_blocks_9_ + x_blocks_9_attn_pr_1;
            x_blocks_9_attn_projNumDims = max(this.NumDims.pretrained_blocks_9_, x_blocks_9_attn_pr_1NumDims);

            % Mul:
            x_blocks_9_ls1_Mul_o = x_blocks_9_attn_proj .* this.Vars.pretrained_block_103;
            x_blocks_9_ls1_Mul_oNumDims = max(x_blocks_9_attn_projNumDims, this.NumDims.pretrained_block_103);

            % Add:
            x_blocks_9_Add_outpu = x_blocks_8_Add_1_out + x_blocks_9_ls1_Mul_o;
            x_blocks_9_Add_outpuNumDims = max(x_blocks_8_Add_1_outNumDims, x_blocks_9_ls1_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_9_norm2_Lay, x_blocks_9_norm2_LayNumDims] = model.ops.onnxLayerNormalization(x_blocks_9_Add_outpu, this.pretrained_block_110, this.pretrained_block_109, -1, 1.000000e-06, x_blocks_9_Add_outpuNumDims);

            % MatMul:
            [x_blocks_9_mlp_fc1_M, x_blocks_9_mlp_fc1_MNumDims] = model.ops.onnxMatMul(x_blocks_9_norm2_Lay, this.onnx__MatMul_1375, x_blocks_9_norm2_LayNumDims, this.NumDims.onnx__MatMul_1375);

            % Add:
            x_blocks_9_mlp_fc1_A = this.Vars.pretrained_block_105 + x_blocks_9_mlp_fc1_M;
            x_blocks_9_mlp_fc1_ANumDims = max(this.NumDims.pretrained_block_105, x_blocks_9_mlp_fc1_MNumDims);

            % Div:
            x_blocks_9_mlp_act_D = x_blocks_9_mlp_fc1_A ./ this.Vars.x_blocks_9_mlp_act_3;
            x_blocks_9_mlp_act_DNumDims = max(x_blocks_9_mlp_fc1_ANumDims, this.NumDims.x_blocks_9_mlp_act_3);

            % Erf:
            x_blocks_9_mlp_act_E = erf(x_blocks_9_mlp_act_D);
            x_blocks_9_mlp_act_ENumDims = x_blocks_9_mlp_act_DNumDims;

            % Add:
            x_blocks_9_mlp_act_A = x_blocks_9_mlp_act_E + this.Vars.x_blocks_9_mlp_act_C;
            x_blocks_9_mlp_act_ANumDims = max(x_blocks_9_mlp_act_ENumDims, this.NumDims.x_blocks_9_mlp_act_C);

            % Mul:
            x_blocks_9_mlp_act_9 = x_blocks_9_mlp_fc1_A .* x_blocks_9_mlp_act_A;
            x_blocks_9_mlp_act_9NumDims = max(x_blocks_9_mlp_fc1_ANumDims, x_blocks_9_mlp_act_ANumDims);

            % Mul:
            x_blocks_9_mlp_act_M = x_blocks_9_mlp_act_9 .* this.Vars.x_blocks_9_mlp_act_2;
            x_blocks_9_mlp_act_MNumDims = max(x_blocks_9_mlp_act_9NumDims, this.NumDims.x_blocks_9_mlp_act_2);

            % MatMul:
            [x_blocks_9_mlp_fc2_M, x_blocks_9_mlp_fc2_MNumDims] = model.ops.onnxMatMul(x_blocks_9_mlp_act_M, this.onnx__MatMul_1376, x_blocks_9_mlp_act_MNumDims, this.NumDims.onnx__MatMul_1376);

            % Add:
            x_blocks_9_mlp_fc2_A = this.Vars.pretrained_block_106 + x_blocks_9_mlp_fc2_M;
            x_blocks_9_mlp_fc2_ANumDims = max(this.NumDims.pretrained_block_106, x_blocks_9_mlp_fc2_MNumDims);

            % Mul:
            x_blocks_9_ls2_Mul_o = x_blocks_9_mlp_fc2_A .* this.Vars.pretrained_block_104;
            x_blocks_9_ls2_Mul_oNumDims = max(x_blocks_9_mlp_fc2_ANumDims, this.NumDims.pretrained_block_104);

            % Add:
            x_blocks_9_Add_1_out = x_blocks_9_Add_outpu + x_blocks_9_ls2_Mul_o;
            x_blocks_9_Add_1_outNumDims = max(x_blocks_9_Add_outpuNumDims, x_blocks_9_ls2_Mul_oNumDims);

            % LayerNormalization:
            [x_blocks_10_norm1_La, x_blocks_10_norm1_LaNumDims] = model.ops.onnxLayerNormalization(x_blocks_9_Add_1_out, this.pretrained_blocks_18, this.pretrained_blocks_17, -1, 1.000000e-06, x_blocks_9_Add_1_outNumDims);

            % MatMul:
            [x_blocks_10_attn_q_1, x_blocks_10_attn_q_1NumDims] = model.ops.onnxMatMul(x_blocks_10_norm1_La, this.onnx__MatMul_1377, x_blocks_10_norm1_LaNumDims, this.NumDims.onnx__MatMul_1377);

            % Add:
            x_blocks_10_attn_qkv = this.Vars.pretrained_blocks_12 + x_blocks_10_attn_q_1;
            x_blocks_10_attn_qkvNumDims = max(this.NumDims.pretrained_blocks_12, x_blocks_10_attn_q_1NumDims);

            % Reshape:
            [shape, x_blocks_10_attn_R_1NumDims] = model.ops.prepareReshapeArgs(x_blocks_10_attn_qkv, this.Vars.x_blocks_10_attn_C_2, x_blocks_10_attn_qkvNumDims, 0);
            x_blocks_10_attn_R_1 = reshape(x_blocks_10_attn_qkv, shape{:});

            % Transpose:
            [perm, x_blocks_10_attn_T_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1035, x_blocks_10_attn_R_1NumDims);
            if isempty(perm)
                x_blocks_10_attn_T_2 = x_blocks_10_attn_R_1;
            else
                x_blocks_10_attn_T_2 = permute(x_blocks_10_attn_R_1, perm);
            end

            % Gather:
            [x_blocks_10_attn_G_1, x_blocks_10_attn_G_1NumDims] = model.ops.onnxGather(x_blocks_10_attn_T_2, this.Vars.x_Constant_output_0, 0, x_blocks_10_attn_T_2NumDims, this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_10_attn_Gat, x_blocks_10_attn_GatNumDims] = model.ops.onnxGather(x_blocks_10_attn_T_2, this.Vars.x_patch_embed_proj_C, 0, x_blocks_10_attn_T_2NumDims, this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm, x_blocks_10_attn_TraNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1036, x_blocks_10_attn_GatNumDims);
            if isempty(perm)
                x_blocks_10_attn_Tra = x_blocks_10_attn_Gat;
            else
                x_blocks_10_attn_Tra = permute(x_blocks_10_attn_Gat, perm);
            end

            % Gather:
            [x_blocks_10_attn_G_2, x_blocks_10_attn_G_2NumDims] = model.ops.onnxGather(x_blocks_10_attn_T_2, this.Vars.x_Constant_1_output_, 0, x_blocks_10_attn_T_2NumDims, this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_10_attn_Mul = x_blocks_10_attn_G_2 .* this.Vars.x_blocks_10_attn_Con;
            x_blocks_10_attn_MulNumDims = max(x_blocks_10_attn_G_2NumDims, this.NumDims.x_blocks_10_attn_Con);

            % MatMul:
            [x_blocks_10_attn_M_1, x_blocks_10_attn_M_1NumDims] = model.ops.onnxMatMul(x_blocks_10_attn_Mul, x_blocks_10_attn_Tra, x_blocks_10_attn_MulNumDims, x_blocks_10_attn_TraNumDims);

            % Softmax:
            [x_blocks_10_attn_Sof, x_blocks_10_attn_SofNumDims] = model.ops.onnxSoftmax13(x_blocks_10_attn_M_1, -1, x_blocks_10_attn_M_1NumDims);

            % MatMul:
            [x_blocks_10_attn_Mat, x_blocks_10_attn_MatNumDims] = model.ops.onnxMatMul(x_blocks_10_attn_Sof, x_blocks_10_attn_G_1, x_blocks_10_attn_SofNumDims, x_blocks_10_attn_G_1NumDims);

            % Transpose:
            [perm, x_blocks_10_attn_T_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1037, x_blocks_10_attn_MatNumDims);
            if isempty(perm)
                x_blocks_10_attn_T_1 = x_blocks_10_attn_Mat;
            else
                x_blocks_10_attn_T_1 = permute(x_blocks_10_attn_Mat, perm);
            end

            % Reshape:
            [shape, x_blocks_10_attn_ResNumDims] = model.ops.prepareReshapeArgs(x_blocks_10_attn_T_1, this.Vars.x_blocks_10_attn_C_1, x_blocks_10_attn_T_1NumDims, 0);
            x_blocks_10_attn_Res = reshape(x_blocks_10_attn_T_1, shape{:});

            % MatMul:
            [x_blocks_10_attn_p_1, x_blocks_10_attn_p_1NumDims] = model.ops.onnxMatMul(x_blocks_10_attn_Res, this.onnx__MatMul_1388, x_blocks_10_attn_ResNumDims, this.NumDims.onnx__MatMul_1388);

            % Add:
            x_blocks_10_attn_pro = this.Vars.pretrained_blocks_10 + x_blocks_10_attn_p_1;
            x_blocks_10_attn_proNumDims = max(this.NumDims.pretrained_blocks_10, x_blocks_10_attn_p_1NumDims);

            % Mul:
            x_blocks_10_ls1_Mul_ = x_blocks_10_attn_pro .* this.Vars.pretrained_blocks_13;
            x_blocks_10_ls1_Mul_NumDims = max(x_blocks_10_attn_proNumDims, this.NumDims.pretrained_blocks_13);

            % Add:
            x_blocks_10_Add_outp = x_blocks_9_Add_1_out + x_blocks_10_ls1_Mul_;
            x_blocks_10_Add_outpNumDims = max(x_blocks_9_Add_1_outNumDims, x_blocks_10_ls1_Mul_NumDims);

            % LayerNormalization:
            [x_blocks_10_norm2_La, x_blocks_10_norm2_LaNumDims] = model.ops.onnxLayerNormalization(x_blocks_10_Add_outp, this.pretrained_blocks_20, this.pretrained_blocks_19, -1, 1.000000e-06, x_blocks_10_Add_outpNumDims);

            % MatMul:
            [x_blocks_10_mlp_fc_1, x_blocks_10_mlp_fc_1NumDims] = model.ops.onnxMatMul(x_blocks_10_norm2_La, this.onnx__MatMul_1389, x_blocks_10_norm2_LaNumDims, this.NumDims.onnx__MatMul_1389);

            % Add:
            x_blocks_10_mlp_fc1_ = this.Vars.pretrained_blocks_15 + x_blocks_10_mlp_fc_1;
            x_blocks_10_mlp_fc1_NumDims = max(this.NumDims.pretrained_blocks_15, x_blocks_10_mlp_fc_1NumDims);

            % Div:
            x_blocks_10_mlp_ac_4 = x_blocks_10_mlp_fc1_ ./ this.Vars.x_blocks_10_mlp_ac_3;
            x_blocks_10_mlp_ac_4NumDims = max(x_blocks_10_mlp_fc1_NumDims, this.NumDims.x_blocks_10_mlp_ac_3);

            % Erf:
            x_blocks_10_mlp_ac_5 = erf(x_blocks_10_mlp_ac_4);
            x_blocks_10_mlp_ac_5NumDims = x_blocks_10_mlp_ac_4NumDims;

            % Add:
            x_blocks_10_mlp_act_ = x_blocks_10_mlp_ac_5 + this.Vars.x_blocks_10_mlp_ac_1;
            x_blocks_10_mlp_act_NumDims = max(x_blocks_10_mlp_ac_5NumDims, this.NumDims.x_blocks_10_mlp_ac_1);

            % Mul:
            x_blocks_10_mlp_ac_7 = x_blocks_10_mlp_fc1_ .* x_blocks_10_mlp_act_;
            x_blocks_10_mlp_ac_7NumDims = max(x_blocks_10_mlp_fc1_NumDims, x_blocks_10_mlp_act_NumDims);

            % Mul:
            x_blocks_10_mlp_ac_6 = x_blocks_10_mlp_ac_7 .* this.Vars.x_blocks_10_mlp_ac_2;
            x_blocks_10_mlp_ac_6NumDims = max(x_blocks_10_mlp_ac_7NumDims, this.NumDims.x_blocks_10_mlp_ac_2);

            % MatMul:
            [x_blocks_10_mlp_fc_4, x_blocks_10_mlp_fc_4NumDims] = model.ops.onnxMatMul(x_blocks_10_mlp_ac_6, this.onnx__MatMul_1390, x_blocks_10_mlp_ac_6NumDims, this.NumDims.onnx__MatMul_1390);

            % Add:
            x_blocks_10_mlp_fc2_ = this.Vars.pretrained_blocks_16 + x_blocks_10_mlp_fc_4;
            x_blocks_10_mlp_fc2_NumDims = max(this.NumDims.pretrained_blocks_16, x_blocks_10_mlp_fc_4NumDims);

            % Mul:
            x_blocks_10_ls2_Mul_ = x_blocks_10_mlp_fc2_ .* this.Vars.pretrained_blocks_14;
            x_blocks_10_ls2_Mul_NumDims = max(x_blocks_10_mlp_fc2_NumDims, this.NumDims.pretrained_blocks_14);

            % Add:
            x_blocks_10_Add_1_ou = x_blocks_10_Add_outp + x_blocks_10_ls2_Mul_;
            x_blocks_10_Add_1_ouNumDims = max(x_blocks_10_Add_outpNumDims, x_blocks_10_ls2_Mul_NumDims);

            % LayerNormalization:
            [x_blocks_11_norm1_La, x_blocks_11_norm1_LaNumDims] = model.ops.onnxLayerNormalization(x_blocks_10_Add_1_ou, this.pretrained_blocks_27, this.pretrained_blocks_26, -1, 1.000000e-06, x_blocks_10_Add_1_ouNumDims);

            % MatMul:
            [x_blocks_11_attn_q_1, x_blocks_11_attn_q_1NumDims] = model.ops.onnxMatMul(x_blocks_11_norm1_La, this.onnx__MatMul_1391, x_blocks_11_norm1_LaNumDims, this.NumDims.onnx__MatMul_1391);

            % Add:
            x_blocks_11_attn_qkv = this.Vars.pretrained_blocks_21 + x_blocks_11_attn_q_1;
            x_blocks_11_attn_qkvNumDims = max(this.NumDims.pretrained_blocks_21, x_blocks_11_attn_q_1NumDims);

            % Reshape:
            [shape, x_blocks_11_attn_R_1NumDims] = model.ops.prepareReshapeArgs(x_blocks_11_attn_qkv, this.Vars.x_blocks_11_attn_C_2, x_blocks_11_attn_qkvNumDims, 0);
            x_blocks_11_attn_R_1 = reshape(x_blocks_11_attn_qkv, shape{:});

            % Transpose:
            [perm, x_blocks_11_attn_T_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1038, x_blocks_11_attn_R_1NumDims);
            if isempty(perm)
                x_blocks_11_attn_T_2 = x_blocks_11_attn_R_1;
            else
                x_blocks_11_attn_T_2 = permute(x_blocks_11_attn_R_1, perm);
            end

            % Gather:
            [x_blocks_11_attn_G_1, x_blocks_11_attn_G_1NumDims] = model.ops.onnxGather(x_blocks_11_attn_T_2, this.Vars.x_Constant_output_0, 0, x_blocks_11_attn_T_2NumDims, this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_11_attn_Gat, x_blocks_11_attn_GatNumDims] = model.ops.onnxGather(x_blocks_11_attn_T_2, this.Vars.x_patch_embed_proj_C, 0, x_blocks_11_attn_T_2NumDims, this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm, x_blocks_11_attn_TraNumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1039, x_blocks_11_attn_GatNumDims);
            if isempty(perm)
                x_blocks_11_attn_Tra = x_blocks_11_attn_Gat;
            else
                x_blocks_11_attn_Tra = permute(x_blocks_11_attn_Gat, perm);
            end

            % Gather:
            [x_blocks_11_attn_G_2, x_blocks_11_attn_G_2NumDims] = model.ops.onnxGather(x_blocks_11_attn_T_2, this.Vars.x_Constant_1_output_, 0, x_blocks_11_attn_T_2NumDims, this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_11_attn_Mul = x_blocks_11_attn_G_2 .* this.Vars.x_blocks_11_attn_Con;
            x_blocks_11_attn_MulNumDims = max(x_blocks_11_attn_G_2NumDims, this.NumDims.x_blocks_11_attn_Con);

            % MatMul:
            [x_blocks_11_attn_M_1, x_blocks_11_attn_M_1NumDims] = model.ops.onnxMatMul(x_blocks_11_attn_Mul, x_blocks_11_attn_Tra, x_blocks_11_attn_MulNumDims, x_blocks_11_attn_TraNumDims);

            % Softmax:
            [x_blocks_11_attn_Sof, x_blocks_11_attn_SofNumDims] = model.ops.onnxSoftmax13(x_blocks_11_attn_M_1, -1, x_blocks_11_attn_M_1NumDims);

            % MatMul:
            [x_blocks_11_attn_Mat, x_blocks_11_attn_MatNumDims] = model.ops.onnxMatMul(x_blocks_11_attn_Sof, x_blocks_11_attn_G_1, x_blocks_11_attn_SofNumDims, x_blocks_11_attn_G_1NumDims);

            % Transpose:
            [perm, x_blocks_11_attn_T_1NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1040, x_blocks_11_attn_MatNumDims);
            if isempty(perm)
                x_blocks_11_attn_T_1 = x_blocks_11_attn_Mat;
            else
                x_blocks_11_attn_T_1 = permute(x_blocks_11_attn_Mat, perm);
            end

            % Reshape:
            [shape, x_blocks_11_attn_ResNumDims] = model.ops.prepareReshapeArgs(x_blocks_11_attn_T_1, this.Vars.x_blocks_11_attn_C_1, x_blocks_11_attn_T_1NumDims, 0);
            x_blocks_11_attn_Res = reshape(x_blocks_11_attn_T_1, shape{:});

            % MatMul:
            [x_blocks_11_attn_p_1, x_blocks_11_attn_p_1NumDims] = model.ops.onnxMatMul(x_blocks_11_attn_Res, this.onnx__MatMul_1402, x_blocks_11_attn_ResNumDims, this.NumDims.onnx__MatMul_1402);

            % Add:
            x_blocks_11_attn_pro = this.Vars.pretrained_blocks_11 + x_blocks_11_attn_p_1;
            x_blocks_11_attn_proNumDims = max(this.NumDims.pretrained_blocks_11, x_blocks_11_attn_p_1NumDims);

            % Mul:
            x_blocks_11_ls1_Mul_ = x_blocks_11_attn_pro .* this.Vars.pretrained_blocks_22;
            x_blocks_11_ls1_Mul_NumDims = max(x_blocks_11_attn_proNumDims, this.NumDims.pretrained_blocks_22);

            % Add:
            x_blocks_11_Add_outp = x_blocks_10_Add_1_ou + x_blocks_11_ls1_Mul_;
            x_blocks_11_Add_outpNumDims = max(x_blocks_10_Add_1_ouNumDims, x_blocks_11_ls1_Mul_NumDims);

            % LayerNormalization:
            [x_blocks_11_norm2_La, x_blocks_11_norm2_LaNumDims] = model.ops.onnxLayerNormalization(x_blocks_11_Add_outp, this.pretrained_blocks_29, this.pretrained_blocks_28, -1, 1.000000e-06, x_blocks_11_Add_outpNumDims);

            % MatMul:
            [x_blocks_11_mlp_fc_1, x_blocks_11_mlp_fc_1NumDims] = model.ops.onnxMatMul(x_blocks_11_norm2_La, this.onnx__MatMul_1403, x_blocks_11_norm2_LaNumDims, this.NumDims.onnx__MatMul_1403);

            % Add:
            x_blocks_11_mlp_fc1_ = this.Vars.pretrained_blocks_24 + x_blocks_11_mlp_fc_1;
            x_blocks_11_mlp_fc1_NumDims = max(this.NumDims.pretrained_blocks_24, x_blocks_11_mlp_fc_1NumDims);

            % Div:
            x_blocks_11_mlp_ac_4 = x_blocks_11_mlp_fc1_ ./ this.Vars.x_blocks_11_mlp_ac_3;
            x_blocks_11_mlp_ac_4NumDims = max(x_blocks_11_mlp_fc1_NumDims, this.NumDims.x_blocks_11_mlp_ac_3);

            % Erf:
            x_blocks_11_mlp_ac_5 = erf(x_blocks_11_mlp_ac_4);
            x_blocks_11_mlp_ac_5NumDims = x_blocks_11_mlp_ac_4NumDims;

            % Add:
            x_blocks_11_mlp_act_ = x_blocks_11_mlp_ac_5 + this.Vars.x_blocks_11_mlp_ac_1;
            x_blocks_11_mlp_act_NumDims = max(x_blocks_11_mlp_ac_5NumDims, this.NumDims.x_blocks_11_mlp_ac_1);

            % Mul:
            x_blocks_11_mlp_ac_7 = x_blocks_11_mlp_fc1_ .* x_blocks_11_mlp_act_;
            x_blocks_11_mlp_ac_7NumDims = max(x_blocks_11_mlp_fc1_NumDims, x_blocks_11_mlp_act_NumDims);

            % Mul:
            x_blocks_11_mlp_ac_6 = x_blocks_11_mlp_ac_7 .* this.Vars.x_blocks_11_mlp_ac_2;
            x_blocks_11_mlp_ac_6NumDims = max(x_blocks_11_mlp_ac_7NumDims, this.NumDims.x_blocks_11_mlp_ac_2);

            % MatMul:
            [x_blocks_11_mlp_fc_4, x_blocks_11_mlp_fc_4NumDims] = model.ops.onnxMatMul(x_blocks_11_mlp_ac_6, this.onnx__MatMul_1404, x_blocks_11_mlp_ac_6NumDims, this.NumDims.onnx__MatMul_1404);

            % Add:
            x_blocks_11_mlp_fc2_ = this.Vars.pretrained_blocks_25 + x_blocks_11_mlp_fc_4;
            x_blocks_11_mlp_fc2_NumDims = max(this.NumDims.pretrained_blocks_25, x_blocks_11_mlp_fc_4NumDims);

            % Mul:
            x_blocks_11_ls2_Mul_ = x_blocks_11_mlp_fc2_ .* this.Vars.pretrained_blocks_23;
            x_blocks_11_ls2_Mul_NumDims = max(x_blocks_11_mlp_fc2_NumDims, this.NumDims.pretrained_blocks_23);

            % Add:
            x_blocks_11_Add_1_ou = x_blocks_11_Add_outp + x_blocks_11_ls2_Mul_;
            x_blocks_11_Add_1_ouNumDims = max(x_blocks_11_Add_outpNumDims, x_blocks_11_ls2_Mul_NumDims);

            % LayerNormalization:
            [x_norm_3_LayerNormal, x_norm_3_LayerNormalNumDims] = model.ops.onnxLayerNormalization(x_blocks_11_Add_1_ou, this.pretrained_norm_weig, this.pretrained_norm_bias, -1, 1.000000e-06, x_blocks_11_Add_1_ouNumDims);

            % Slice:
            [Indices, x_Slice_3_output_0NumDims] = model.ops.prepareSliceArgs(x_norm_3_LayerNormal, this.Vars.x_Constant_18_output, this.Vars.x_Constant_19_output, this.Vars.x_Constant_17_output, this.Vars.x_Constant_20_output, x_norm_3_LayerNormalNumDims);
            x_Slice_3_output_0 = x_norm_3_LayerNormal(Indices{:});

            % Transpose:
            [perm, x_depth_head_Trans_2NumDims] = model.ops.prepareTransposeArgs(this.Vars.TransposePerm1041, x_Slice_3_output_0NumDims);
            if isempty(perm)
                x_depth_head_Trans_2 = x_Slice_3_output_0;
            else
                x_depth_head_Trans_2 = permute(x_Slice_3_output_0, perm);
            end

            % Reshape:
            [shape, x_depth_head_Resha_2NumDims] = model.ops.prepareReshapeArgs(x_depth_head_Trans_2, this.Vars.x_depth_head_Const_2, x_depth_head_Trans_2NumDims, 0);
            x_depth_head_Resha_2 = reshape(x_depth_head_Trans_2, shape{:});

            % Set graph output arguments
            x_depth_head_Resha_3NumDims1042 = x_depth_head_Resha_3NumDims;
            x_depth_head_ReshapeNumDims1043 = x_depth_head_ReshapeNumDims;
            x_depth_head_Resha_1NumDims1044 = x_depth_head_Resha_1NumDims;
            x_depth_head_Resha_2NumDims1045 = x_depth_head_Resha_2NumDims;

        end

    end

end