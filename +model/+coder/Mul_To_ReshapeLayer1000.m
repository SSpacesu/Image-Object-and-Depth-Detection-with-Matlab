classdef Mul_To_ReshapeLayer1000 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.
    %#codegen

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
            this_cg = model.coder.Mul_To_ReshapeLayer1000(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = model.Mul_To_ReshapeLayer1000(cgInstance.Name);
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
            this_ml.pretrained_blocks__7 = cgInstance.pretrained_blocks__7;
            this_ml.pretrained_blocks__6 = cgInstance.pretrained_blocks__6;
            this_ml.onnx__MatMul_1237 = cgInstance.onnx__MatMul_1237;
            this_ml.onnx__MatMul_1248 = cgInstance.onnx__MatMul_1248;
            this_ml.pretrained_blocks__9 = cgInstance.pretrained_blocks__9;
            this_ml.pretrained_blocks__8 = cgInstance.pretrained_blocks__8;
            this_ml.onnx__MatMul_1249 = cgInstance.onnx__MatMul_1249;
            this_ml.onnx__MatMul_1250 = cgInstance.onnx__MatMul_1250;
            this_ml.pretrained_blocks_36 = cgInstance.pretrained_blocks_36;
            this_ml.pretrained_blocks_35 = cgInstance.pretrained_blocks_35;
            this_ml.onnx__MatMul_1251 = cgInstance.onnx__MatMul_1251;
            this_ml.onnx__MatMul_1262 = cgInstance.onnx__MatMul_1262;
            this_ml.pretrained_blocks_38 = cgInstance.pretrained_blocks_38;
            this_ml.pretrained_blocks_37 = cgInstance.pretrained_blocks_37;
            this_ml.onnx__MatMul_1263 = cgInstance.onnx__MatMul_1263;
            this_ml.onnx__MatMul_1264 = cgInstance.onnx__MatMul_1264;
            this_ml.pretrained_blocks_45 = cgInstance.pretrained_blocks_45;
            this_ml.pretrained_blocks_44 = cgInstance.pretrained_blocks_44;
            this_ml.onnx__MatMul_1265 = cgInstance.onnx__MatMul_1265;
            this_ml.onnx__MatMul_1276 = cgInstance.onnx__MatMul_1276;
            this_ml.pretrained_blocks_47 = cgInstance.pretrained_blocks_47;
            this_ml.pretrained_blocks_46 = cgInstance.pretrained_blocks_46;
            this_ml.onnx__MatMul_1277 = cgInstance.onnx__MatMul_1277;
            this_ml.onnx__MatMul_1278 = cgInstance.onnx__MatMul_1278;
            this_ml.pretrained_norm_weig = cgInstance.pretrained_norm_weig;
            this_ml.pretrained_norm_bias = cgInstance.pretrained_norm_bias;
            this_ml.pretrained_blocks_54 = cgInstance.pretrained_blocks_54;
            this_ml.pretrained_blocks_53 = cgInstance.pretrained_blocks_53;
            this_ml.onnx__MatMul_1279 = cgInstance.onnx__MatMul_1279;
            this_ml.onnx__MatMul_1290 = cgInstance.onnx__MatMul_1290;
            this_ml.pretrained_blocks_56 = cgInstance.pretrained_blocks_56;
            this_ml.pretrained_blocks_55 = cgInstance.pretrained_blocks_55;
            this_ml.onnx__MatMul_1291 = cgInstance.onnx__MatMul_1291;
            this_ml.onnx__MatMul_1292 = cgInstance.onnx__MatMul_1292;
            this_ml.pretrained_blocks_63 = cgInstance.pretrained_blocks_63;
            this_ml.pretrained_blocks_62 = cgInstance.pretrained_blocks_62;
            this_ml.onnx__MatMul_1293 = cgInstance.onnx__MatMul_1293;
            this_ml.onnx__MatMul_1304 = cgInstance.onnx__MatMul_1304;
            this_ml.pretrained_blocks_65 = cgInstance.pretrained_blocks_65;
            this_ml.pretrained_blocks_64 = cgInstance.pretrained_blocks_64;
            this_ml.onnx__MatMul_1305 = cgInstance.onnx__MatMul_1305;
            this_ml.onnx__MatMul_1306 = cgInstance.onnx__MatMul_1306;
            this_ml.pretrained_blocks_72 = cgInstance.pretrained_blocks_72;
            this_ml.pretrained_blocks_71 = cgInstance.pretrained_blocks_71;
            this_ml.onnx__MatMul_1307 = cgInstance.onnx__MatMul_1307;
            this_ml.onnx__MatMul_1318 = cgInstance.onnx__MatMul_1318;
            this_ml.pretrained_blocks_74 = cgInstance.pretrained_blocks_74;
            this_ml.pretrained_blocks_73 = cgInstance.pretrained_blocks_73;
            this_ml.onnx__MatMul_1319 = cgInstance.onnx__MatMul_1319;
            this_ml.onnx__MatMul_1320 = cgInstance.onnx__MatMul_1320;
            this_ml.pretrained_blocks_81 = cgInstance.pretrained_blocks_81;
            this_ml.pretrained_blocks_80 = cgInstance.pretrained_blocks_80;
            this_ml.onnx__MatMul_1321 = cgInstance.onnx__MatMul_1321;
            this_ml.onnx__MatMul_1332 = cgInstance.onnx__MatMul_1332;
            this_ml.pretrained_blocks_83 = cgInstance.pretrained_blocks_83;
            this_ml.pretrained_blocks_82 = cgInstance.pretrained_blocks_82;
            this_ml.onnx__MatMul_1333 = cgInstance.onnx__MatMul_1333;
            this_ml.onnx__MatMul_1334 = cgInstance.onnx__MatMul_1334;
            this_ml.pretrained_blocks_90 = cgInstance.pretrained_blocks_90;
            this_ml.pretrained_blocks_89 = cgInstance.pretrained_blocks_89;
            this_ml.onnx__MatMul_1335 = cgInstance.onnx__MatMul_1335;
            this_ml.onnx__MatMul_1346 = cgInstance.onnx__MatMul_1346;
            this_ml.pretrained_blocks_92 = cgInstance.pretrained_blocks_92;
            this_ml.pretrained_blocks_91 = cgInstance.pretrained_blocks_91;
            this_ml.onnx__MatMul_1347 = cgInstance.onnx__MatMul_1347;
            this_ml.onnx__MatMul_1348 = cgInstance.onnx__MatMul_1348;
            this_ml.pretrained_blocks_99 = cgInstance.pretrained_blocks_99;
            this_ml.pretrained_blocks_98 = cgInstance.pretrained_blocks_98;
            this_ml.onnx__MatMul_1349 = cgInstance.onnx__MatMul_1349;
            this_ml.onnx__MatMul_1360 = cgInstance.onnx__MatMul_1360;
            this_ml.pretrained_block_101 = cgInstance.pretrained_block_101;
            this_ml.pretrained_block_100 = cgInstance.pretrained_block_100;
            this_ml.onnx__MatMul_1361 = cgInstance.onnx__MatMul_1361;
            this_ml.onnx__MatMul_1362 = cgInstance.onnx__MatMul_1362;
            this_ml.pretrained_block_108 = cgInstance.pretrained_block_108;
            this_ml.pretrained_block_107 = cgInstance.pretrained_block_107;
            this_ml.onnx__MatMul_1363 = cgInstance.onnx__MatMul_1363;
            this_ml.onnx__MatMul_1374 = cgInstance.onnx__MatMul_1374;
            this_ml.pretrained_block_110 = cgInstance.pretrained_block_110;
            this_ml.pretrained_block_109 = cgInstance.pretrained_block_109;
            this_ml.onnx__MatMul_1375 = cgInstance.onnx__MatMul_1375;
            this_ml.onnx__MatMul_1376 = cgInstance.onnx__MatMul_1376;
            this_ml.pretrained_blocks_18 = cgInstance.pretrained_blocks_18;
            this_ml.pretrained_blocks_17 = cgInstance.pretrained_blocks_17;
            this_ml.onnx__MatMul_1377 = cgInstance.onnx__MatMul_1377;
            this_ml.onnx__MatMul_1388 = cgInstance.onnx__MatMul_1388;
            this_ml.pretrained_blocks_20 = cgInstance.pretrained_blocks_20;
            this_ml.pretrained_blocks_19 = cgInstance.pretrained_blocks_19;
            this_ml.onnx__MatMul_1389 = cgInstance.onnx__MatMul_1389;
            this_ml.onnx__MatMul_1390 = cgInstance.onnx__MatMul_1390;
            this_ml.pretrained_blocks_27 = cgInstance.pretrained_blocks_27;
            this_ml.pretrained_blocks_26 = cgInstance.pretrained_blocks_26;
            this_ml.onnx__MatMul_1391 = cgInstance.onnx__MatMul_1391;
            this_ml.onnx__MatMul_1402 = cgInstance.onnx__MatMul_1402;
            this_ml.pretrained_blocks_29 = cgInstance.pretrained_blocks_29;
            this_ml.pretrained_blocks_28 = cgInstance.pretrained_blocks_28;
            this_ml.onnx__MatMul_1403 = cgInstance.onnx__MatMul_1403;
            this_ml.onnx__MatMul_1404 = cgInstance.onnx__MatMul_1404;
        end
    end

    methods
        function this = Mul_To_ReshapeLayer1000(mlInstance)
            this.Name = mlInstance.Name;
            this.NumOutputs = 4;
            this.OutputNames = {'x_depth_head_Resha_3', 'x_depth_head_Reshape', 'x_depth_head_Resha_1', 'x_depth_head_Resha_2'};
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
            this.pretrained_blocks__7 = mlInstance.pretrained_blocks__7;
            this.pretrained_blocks__6 = mlInstance.pretrained_blocks__6;
            this.onnx__MatMul_1237 = mlInstance.onnx__MatMul_1237;
            this.onnx__MatMul_1248 = mlInstance.onnx__MatMul_1248;
            this.pretrained_blocks__9 = mlInstance.pretrained_blocks__9;
            this.pretrained_blocks__8 = mlInstance.pretrained_blocks__8;
            this.onnx__MatMul_1249 = mlInstance.onnx__MatMul_1249;
            this.onnx__MatMul_1250 = mlInstance.onnx__MatMul_1250;
            this.pretrained_blocks_36 = mlInstance.pretrained_blocks_36;
            this.pretrained_blocks_35 = mlInstance.pretrained_blocks_35;
            this.onnx__MatMul_1251 = mlInstance.onnx__MatMul_1251;
            this.onnx__MatMul_1262 = mlInstance.onnx__MatMul_1262;
            this.pretrained_blocks_38 = mlInstance.pretrained_blocks_38;
            this.pretrained_blocks_37 = mlInstance.pretrained_blocks_37;
            this.onnx__MatMul_1263 = mlInstance.onnx__MatMul_1263;
            this.onnx__MatMul_1264 = mlInstance.onnx__MatMul_1264;
            this.pretrained_blocks_45 = mlInstance.pretrained_blocks_45;
            this.pretrained_blocks_44 = mlInstance.pretrained_blocks_44;
            this.onnx__MatMul_1265 = mlInstance.onnx__MatMul_1265;
            this.onnx__MatMul_1276 = mlInstance.onnx__MatMul_1276;
            this.pretrained_blocks_47 = mlInstance.pretrained_blocks_47;
            this.pretrained_blocks_46 = mlInstance.pretrained_blocks_46;
            this.onnx__MatMul_1277 = mlInstance.onnx__MatMul_1277;
            this.onnx__MatMul_1278 = mlInstance.onnx__MatMul_1278;
            this.pretrained_norm_weig = mlInstance.pretrained_norm_weig;
            this.pretrained_norm_bias = mlInstance.pretrained_norm_bias;
            this.pretrained_blocks_54 = mlInstance.pretrained_blocks_54;
            this.pretrained_blocks_53 = mlInstance.pretrained_blocks_53;
            this.onnx__MatMul_1279 = mlInstance.onnx__MatMul_1279;
            this.onnx__MatMul_1290 = mlInstance.onnx__MatMul_1290;
            this.pretrained_blocks_56 = mlInstance.pretrained_blocks_56;
            this.pretrained_blocks_55 = mlInstance.pretrained_blocks_55;
            this.onnx__MatMul_1291 = mlInstance.onnx__MatMul_1291;
            this.onnx__MatMul_1292 = mlInstance.onnx__MatMul_1292;
            this.pretrained_blocks_63 = mlInstance.pretrained_blocks_63;
            this.pretrained_blocks_62 = mlInstance.pretrained_blocks_62;
            this.onnx__MatMul_1293 = mlInstance.onnx__MatMul_1293;
            this.onnx__MatMul_1304 = mlInstance.onnx__MatMul_1304;
            this.pretrained_blocks_65 = mlInstance.pretrained_blocks_65;
            this.pretrained_blocks_64 = mlInstance.pretrained_blocks_64;
            this.onnx__MatMul_1305 = mlInstance.onnx__MatMul_1305;
            this.onnx__MatMul_1306 = mlInstance.onnx__MatMul_1306;
            this.pretrained_blocks_72 = mlInstance.pretrained_blocks_72;
            this.pretrained_blocks_71 = mlInstance.pretrained_blocks_71;
            this.onnx__MatMul_1307 = mlInstance.onnx__MatMul_1307;
            this.onnx__MatMul_1318 = mlInstance.onnx__MatMul_1318;
            this.pretrained_blocks_74 = mlInstance.pretrained_blocks_74;
            this.pretrained_blocks_73 = mlInstance.pretrained_blocks_73;
            this.onnx__MatMul_1319 = mlInstance.onnx__MatMul_1319;
            this.onnx__MatMul_1320 = mlInstance.onnx__MatMul_1320;
            this.pretrained_blocks_81 = mlInstance.pretrained_blocks_81;
            this.pretrained_blocks_80 = mlInstance.pretrained_blocks_80;
            this.onnx__MatMul_1321 = mlInstance.onnx__MatMul_1321;
            this.onnx__MatMul_1332 = mlInstance.onnx__MatMul_1332;
            this.pretrained_blocks_83 = mlInstance.pretrained_blocks_83;
            this.pretrained_blocks_82 = mlInstance.pretrained_blocks_82;
            this.onnx__MatMul_1333 = mlInstance.onnx__MatMul_1333;
            this.onnx__MatMul_1334 = mlInstance.onnx__MatMul_1334;
            this.pretrained_blocks_90 = mlInstance.pretrained_blocks_90;
            this.pretrained_blocks_89 = mlInstance.pretrained_blocks_89;
            this.onnx__MatMul_1335 = mlInstance.onnx__MatMul_1335;
            this.onnx__MatMul_1346 = mlInstance.onnx__MatMul_1346;
            this.pretrained_blocks_92 = mlInstance.pretrained_blocks_92;
            this.pretrained_blocks_91 = mlInstance.pretrained_blocks_91;
            this.onnx__MatMul_1347 = mlInstance.onnx__MatMul_1347;
            this.onnx__MatMul_1348 = mlInstance.onnx__MatMul_1348;
            this.pretrained_blocks_99 = mlInstance.pretrained_blocks_99;
            this.pretrained_blocks_98 = mlInstance.pretrained_blocks_98;
            this.onnx__MatMul_1349 = mlInstance.onnx__MatMul_1349;
            this.onnx__MatMul_1360 = mlInstance.onnx__MatMul_1360;
            this.pretrained_block_101 = mlInstance.pretrained_block_101;
            this.pretrained_block_100 = mlInstance.pretrained_block_100;
            this.onnx__MatMul_1361 = mlInstance.onnx__MatMul_1361;
            this.onnx__MatMul_1362 = mlInstance.onnx__MatMul_1362;
            this.pretrained_block_108 = mlInstance.pretrained_block_108;
            this.pretrained_block_107 = mlInstance.pretrained_block_107;
            this.onnx__MatMul_1363 = mlInstance.onnx__MatMul_1363;
            this.onnx__MatMul_1374 = mlInstance.onnx__MatMul_1374;
            this.pretrained_block_110 = mlInstance.pretrained_block_110;
            this.pretrained_block_109 = mlInstance.pretrained_block_109;
            this.onnx__MatMul_1375 = mlInstance.onnx__MatMul_1375;
            this.onnx__MatMul_1376 = mlInstance.onnx__MatMul_1376;
            this.pretrained_blocks_18 = mlInstance.pretrained_blocks_18;
            this.pretrained_blocks_17 = mlInstance.pretrained_blocks_17;
            this.onnx__MatMul_1377 = mlInstance.onnx__MatMul_1377;
            this.onnx__MatMul_1388 = mlInstance.onnx__MatMul_1388;
            this.pretrained_blocks_20 = mlInstance.pretrained_blocks_20;
            this.pretrained_blocks_19 = mlInstance.pretrained_blocks_19;
            this.onnx__MatMul_1389 = mlInstance.onnx__MatMul_1389;
            this.onnx__MatMul_1390 = mlInstance.onnx__MatMul_1390;
            this.pretrained_blocks_27 = mlInstance.pretrained_blocks_27;
            this.pretrained_blocks_26 = mlInstance.pretrained_blocks_26;
            this.onnx__MatMul_1391 = mlInstance.onnx__MatMul_1391;
            this.onnx__MatMul_1402 = mlInstance.onnx__MatMul_1402;
            this.pretrained_blocks_29 = mlInstance.pretrained_blocks_29;
            this.pretrained_blocks_28 = mlInstance.pretrained_blocks_28;
            this.onnx__MatMul_1403 = mlInstance.onnx__MatMul_1403;
            this.onnx__MatMul_1404 = mlInstance.onnx__MatMul_1404;
        end

        function [x_depth_head_Resha_3, x_depth_head_Reshape, x_depth_head_Resha_1, x_depth_head_Resha_2] = predict(this, x_patch_embed_proj_1__)
            if isdlarray(x_patch_embed_proj_1__)
                x_patch_embed_proj_1_ = stripdims(x_patch_embed_proj_1__);
            else
                x_patch_embed_proj_1_ = x_patch_embed_proj_1__;
            end
            x_patch_embed_proj_1NumDims = 4;
            x_patch_embed_proj_1 = model.coder.ops.permuteInputVar(x_patch_embed_proj_1_, [4 3 1 2], 4);

            [x_depth_head_Resha_3__, x_depth_head_Reshape__, x_depth_head_Resha_1__, x_depth_head_Resha_2__, x_depth_head_Resha_3NumDims__, x_depth_head_ReshapeNumDims__, x_depth_head_Resha_1NumDims__, x_depth_head_Resha_2NumDims__] = Mul_To_ReshapeGraph1000(this, x_patch_embed_proj_1, x_patch_embed_proj_1NumDims, false);
            x_depth_head_Resha_3_ = model.coder.ops.permuteOutputVar(x_depth_head_Resha_3__, [3 4 2 1], 4);
            x_depth_head_Reshape_ = model.coder.ops.permuteOutputVar(x_depth_head_Reshape__, [3 4 2 1], 4);
            x_depth_head_Resha_1_ = model.coder.ops.permuteOutputVar(x_depth_head_Resha_1__, [3 4 2 1], 4);
            x_depth_head_Resha_2_ = model.coder.ops.permuteOutputVar(x_depth_head_Resha_2__, [3 4 2 1], 4);

            x_depth_head_Resha_3 = dlarray(single(x_depth_head_Resha_3_), 'SSCB');
            x_depth_head_Reshape = dlarray(single(x_depth_head_Reshape_), 'SSCB');
            x_depth_head_Resha_1 = dlarray(single(x_depth_head_Resha_1_), 'SSCB');
            x_depth_head_Resha_2 = dlarray(single(x_depth_head_Resha_2_), 'SSCB');
        end

        function [x_depth_head_Resha_3, x_depth_head_Reshape, x_depth_head_Resha_1, x_depth_head_Resha_2, x_depth_head_Resha_3NumDims1042, x_depth_head_ReshapeNumDims1043, x_depth_head_Resha_1NumDims1044, x_depth_head_Resha_2NumDims1045] = Mul_To_ReshapeGraph1000(this, x_patch_embed_proj_1, x_patch_embed_proj_1NumDims, Training)

            % Execute the operators:
            % Mul:
            x_Mul_output_0 = this.Vars.x_ConstantOfShape_ou .* this.Vars.x_Constant_4_output_;
            x_Mul_output_0NumDims = max(this.NumDims.x_ConstantOfShape_ou, this.NumDims.x_Constant_4_output_);

            % Equal:
            x_Equal_output_0 = this.Vars.x_Constant_2_output_ == x_Mul_output_0;
            x_Equal_output_0NumDims = max(this.NumDims.x_Constant_2_output_, coder.const(x_Mul_output_0NumDims));

            % Where:
            [x_Where_output_0, x_Where_output_0NumDims] = model.coder.ops.onnxWhere(x_Equal_output_0, this.Vars.x_ConstantOfShape_ou, this.Vars.x_Constant_2_output_, coder.const(x_Equal_output_0NumDims), this.NumDims.x_ConstantOfShape_ou, this.NumDims.x_Constant_2_output_);

            % Expand:
            [shape1000, x_Expand_output_0NumDims] = model.coder.ops.prepareExpandArgs(this.NumDims.pretrained_cls_token, x_Where_output_0);
            x_Expand_output_0 = this.Vars.pretrained_cls_token + zeros(shape1000);

            % Shape:
            [x_patch_embed_Shape_, x_patch_embed_Shape_NumDims] = model.coder.ops.onnxShape(x_patch_embed_proj_1, coder.const(x_patch_embed_proj_1NumDims), 0, coder.const(x_patch_embed_proj_1NumDims)+1);

            % Slice:
            [indices1001, x_patch_embed_Slice_NumDims] = model.coder.ops.prepareSliceArgs(x_patch_embed_Shape_, this.Vars.x_patch_embed_Consta, this.Vars.x_patch_embed_Cons_1, this.Vars.x_patch_embed_Cons_3, '', coder.const(x_patch_embed_Shape_NumDims));
            x_patch_embed_Slice_ = x_patch_embed_Shape_(indices1001{:});

            % Concat:
            [x_patch_embed_Concat, x_patch_embed_ConcatNumDims] = model.coder.ops.onnxConcat(0, {x_patch_embed_Slice_, this.Vars.x_patch_embed_Cons_2}, [coder.const(x_patch_embed_Slice_NumDims), this.NumDims.x_patch_embed_Cons_2]);

            % Reshape:
            [shape1002, x_patch_embed_ReshapNumDims] = model.coder.ops.prepareReshapeArgs(x_patch_embed_proj_1, x_patch_embed_Concat, coder.const(x_patch_embed_proj_1NumDims), 0);
            x_patch_embed_Reshap = reshape(x_patch_embed_proj_1, shape1002{:});

            % Transpose:
            [perm1003, x_patch_embed_TranspNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1001, coder.const(x_patch_embed_ReshapNumDims));
            if isempty(perm1003)
                x_patch_embed_Transp = x_patch_embed_Reshap;
            else
                x_patch_embed_Transp = permute(model.coder.ops.extractIfDlarray(x_patch_embed_Reshap), perm1003);
            end

            % Concat:
            [x_Concat_output_0, x_Concat_output_0NumDims] = model.coder.ops.onnxConcat(1, {x_Expand_output_0, x_patch_embed_Transp}, [coder.const(x_Expand_output_0NumDims), coder.const(x_patch_embed_TranspNumDims)]);

            % Add:
            x_Add_output_0 = x_Concat_output_0 + this.Vars.pretrained_pos_embed;
            x_Add_output_0NumDims = max(coder.const(x_Concat_output_0NumDims), this.NumDims.pretrained_pos_embed);

            % LayerNormalization:
            [x_blocks_0_norm1_Lay, x_blocks_0_norm1_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_Add_output_0, this.pretrained_blocks__7, this.pretrained_blocks__6, -1, 1.000000e-06, coder.const(x_Add_output_0NumDims));

            % MatMul:
            [x_blocks_0_attn_qk_1, x_blocks_0_attn_qk_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_0_norm1_Lay, this.onnx__MatMul_1237, coder.const(x_blocks_0_norm1_LayNumDims), this.NumDims.onnx__MatMul_1237);

            % Add:
            x_blocks_0_attn_qkv_ = this.Vars.pretrained_blocks__1 + x_blocks_0_attn_qk_1;
            x_blocks_0_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks__1, coder.const(x_blocks_0_attn_qk_1NumDims));

            % Reshape:
            [shape1004, x_blocks_0_attn_Re_1NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_0_attn_qkv_, this.Vars.x_blocks_0_attn_Co_2, coder.const(x_blocks_0_attn_qkv_NumDims), 0);
            x_blocks_0_attn_Re_1 = reshape(x_blocks_0_attn_qkv_, shape1004{:});

            % Transpose:
            [perm1005, x_blocks_0_attn_Tr_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1002, coder.const(x_blocks_0_attn_Re_1NumDims));
            if isempty(perm1005)
                x_blocks_0_attn_Tr_2 = x_blocks_0_attn_Re_1;
            else
                x_blocks_0_attn_Tr_2 = permute(model.coder.ops.extractIfDlarray(x_blocks_0_attn_Re_1), perm1005);
            end

            % Gather:
            [x_blocks_0_attn_Ga_1, x_blocks_0_attn_Ga_1NumDims] = model.coder.ops.onnxGather(x_blocks_0_attn_Tr_2, this.Vars.x_Constant_output_0, 0, coder.const(x_blocks_0_attn_Tr_2NumDims), this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_0_attn_Gath, x_blocks_0_attn_GathNumDims] = model.coder.ops.onnxGather(x_blocks_0_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, coder.const(x_blocks_0_attn_Tr_2NumDims), this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm1006, x_blocks_0_attn_TranNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1003, coder.const(x_blocks_0_attn_GathNumDims));
            if isempty(perm1006)
                x_blocks_0_attn_Tran = x_blocks_0_attn_Gath;
            else
                x_blocks_0_attn_Tran = permute(model.coder.ops.extractIfDlarray(x_blocks_0_attn_Gath), perm1006);
            end

            % Gather:
            [x_blocks_0_attn_Ga_2, x_blocks_0_attn_Ga_2NumDims] = model.coder.ops.onnxGather(x_blocks_0_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, coder.const(x_blocks_0_attn_Tr_2NumDims), this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_0_attn_Mul_ = x_blocks_0_attn_Ga_2 .* this.Vars.x_blocks_0_attn_Cons;
            x_blocks_0_attn_Mul_NumDims = max(coder.const(x_blocks_0_attn_Ga_2NumDims), this.NumDims.x_blocks_0_attn_Cons);

            % MatMul:
            [x_blocks_0_attn_Ma_1, x_blocks_0_attn_Ma_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_0_attn_Mul_, x_blocks_0_attn_Tran, coder.const(x_blocks_0_attn_Mul_NumDims), coder.const(x_blocks_0_attn_TranNumDims));

            % Softmax:
            [x_blocks_0_attn_Soft, x_blocks_0_attn_SoftNumDims] = model.coder.ops.onnxSoftmax13(x_blocks_0_attn_Ma_1, -1, coder.const(x_blocks_0_attn_Ma_1NumDims));

            % MatMul:
            [x_blocks_0_attn_MatM, x_blocks_0_attn_MatMNumDims] = model.coder.ops.onnxMatMul(x_blocks_0_attn_Soft, x_blocks_0_attn_Ga_1, coder.const(x_blocks_0_attn_SoftNumDims), coder.const(x_blocks_0_attn_Ga_1NumDims));

            % Transpose:
            [perm1007, x_blocks_0_attn_Tr_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1004, coder.const(x_blocks_0_attn_MatMNumDims));
            if isempty(perm1007)
                x_blocks_0_attn_Tr_1 = x_blocks_0_attn_MatM;
            else
                x_blocks_0_attn_Tr_1 = permute(model.coder.ops.extractIfDlarray(x_blocks_0_attn_MatM), perm1007);
            end

            % Reshape:
            [shape1008, x_blocks_0_attn_ReshNumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_0_attn_Tr_1, this.Vars.x_blocks_0_attn_Co_1, coder.const(x_blocks_0_attn_Tr_1NumDims), 0);
            x_blocks_0_attn_Resh = reshape(x_blocks_0_attn_Tr_1, shape1008{:});

            % MatMul:
            [x_blocks_0_attn_pr_1, x_blocks_0_attn_pr_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_0_attn_Resh, this.onnx__MatMul_1248, coder.const(x_blocks_0_attn_ReshNumDims), this.NumDims.onnx__MatMul_1248);

            % Add:
            x_blocks_0_attn_proj = this.Vars.pretrained_blocks_0_ + x_blocks_0_attn_pr_1;
            x_blocks_0_attn_projNumDims = max(this.NumDims.pretrained_blocks_0_, coder.const(x_blocks_0_attn_pr_1NumDims));

            % Mul:
            x_blocks_0_ls1_Mul_o = x_blocks_0_attn_proj .* this.Vars.pretrained_blocks__2;
            x_blocks_0_ls1_Mul_oNumDims = max(coder.const(x_blocks_0_attn_projNumDims), this.NumDims.pretrained_blocks__2);

            % Add:
            x_blocks_0_Add_outpu = x_Add_output_0 + x_blocks_0_ls1_Mul_o;
            x_blocks_0_Add_outpuNumDims = max(coder.const(x_Add_output_0NumDims), coder.const(x_blocks_0_ls1_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_0_norm2_Lay, x_blocks_0_norm2_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_0_Add_outpu, this.pretrained_blocks__9, this.pretrained_blocks__8, -1, 1.000000e-06, coder.const(x_blocks_0_Add_outpuNumDims));

            % MatMul:
            [x_blocks_0_mlp_fc1_M, x_blocks_0_mlp_fc1_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_0_norm2_Lay, this.onnx__MatMul_1249, coder.const(x_blocks_0_norm2_LayNumDims), this.NumDims.onnx__MatMul_1249);

            % Add:
            x_blocks_0_mlp_fc1_A = this.Vars.pretrained_blocks__4 + x_blocks_0_mlp_fc1_M;
            x_blocks_0_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks__4, coder.const(x_blocks_0_mlp_fc1_MNumDims));

            % Div:
            x_blocks_0_mlp_act_D = x_blocks_0_mlp_fc1_A ./ this.Vars.x_blocks_0_mlp_act_3;
            x_blocks_0_mlp_act_DNumDims = max(coder.const(x_blocks_0_mlp_fc1_ANumDims), this.NumDims.x_blocks_0_mlp_act_3);

            % Erf:
            x_blocks_0_mlp_act_E = erf(x_blocks_0_mlp_act_D);
            x_blocks_0_mlp_act_ENumDims = coder.const(x_blocks_0_mlp_act_DNumDims);

            % Add:
            x_blocks_0_mlp_act_A = x_blocks_0_mlp_act_E + this.Vars.x_blocks_0_mlp_act_C;
            x_blocks_0_mlp_act_ANumDims = max(coder.const(x_blocks_0_mlp_act_ENumDims), this.NumDims.x_blocks_0_mlp_act_C);

            % Mul:
            x_blocks_0_mlp_act_9 = x_blocks_0_mlp_fc1_A .* x_blocks_0_mlp_act_A;
            x_blocks_0_mlp_act_9NumDims = max(coder.const(x_blocks_0_mlp_fc1_ANumDims), coder.const(x_blocks_0_mlp_act_ANumDims));

            % Mul:
            x_blocks_0_mlp_act_M = x_blocks_0_mlp_act_9 .* this.Vars.x_blocks_0_mlp_act_2;
            x_blocks_0_mlp_act_MNumDims = max(coder.const(x_blocks_0_mlp_act_9NumDims), this.NumDims.x_blocks_0_mlp_act_2);

            % MatMul:
            [x_blocks_0_mlp_fc2_M, x_blocks_0_mlp_fc2_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_0_mlp_act_M, this.onnx__MatMul_1250, coder.const(x_blocks_0_mlp_act_MNumDims), this.NumDims.onnx__MatMul_1250);

            % Add:
            x_blocks_0_mlp_fc2_A = this.Vars.pretrained_blocks__5 + x_blocks_0_mlp_fc2_M;
            x_blocks_0_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks__5, coder.const(x_blocks_0_mlp_fc2_MNumDims));

            % Mul:
            x_blocks_0_ls2_Mul_o = x_blocks_0_mlp_fc2_A .* this.Vars.pretrained_blocks__3;
            x_blocks_0_ls2_Mul_oNumDims = max(coder.const(x_blocks_0_mlp_fc2_ANumDims), this.NumDims.pretrained_blocks__3);

            % Add:
            x_blocks_0_Add_1_out = x_blocks_0_Add_outpu + x_blocks_0_ls2_Mul_o;
            x_blocks_0_Add_1_outNumDims = max(coder.const(x_blocks_0_Add_outpuNumDims), coder.const(x_blocks_0_ls2_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_1_norm1_Lay, x_blocks_1_norm1_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_0_Add_1_out, this.pretrained_blocks_36, this.pretrained_blocks_35, -1, 1.000000e-06, coder.const(x_blocks_0_Add_1_outNumDims));

            % MatMul:
            [x_blocks_1_attn_qk_1, x_blocks_1_attn_qk_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_1_norm1_Lay, this.onnx__MatMul_1251, coder.const(x_blocks_1_norm1_LayNumDims), this.NumDims.onnx__MatMul_1251);

            % Add:
            x_blocks_1_attn_qkv_ = this.Vars.pretrained_blocks_30 + x_blocks_1_attn_qk_1;
            x_blocks_1_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_30, coder.const(x_blocks_1_attn_qk_1NumDims));

            % Reshape:
            [shape1009, x_blocks_1_attn_Re_1NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_1_attn_qkv_, this.Vars.x_blocks_1_attn_Co_2, coder.const(x_blocks_1_attn_qkv_NumDims), 0);
            x_blocks_1_attn_Re_1 = reshape(x_blocks_1_attn_qkv_, shape1009{:});

            % Transpose:
            [perm1010, x_blocks_1_attn_Tr_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1005, coder.const(x_blocks_1_attn_Re_1NumDims));
            if isempty(perm1010)
                x_blocks_1_attn_Tr_2 = x_blocks_1_attn_Re_1;
            else
                x_blocks_1_attn_Tr_2 = permute(model.coder.ops.extractIfDlarray(x_blocks_1_attn_Re_1), perm1010);
            end

            % Gather:
            [x_blocks_1_attn_Ga_1, x_blocks_1_attn_Ga_1NumDims] = model.coder.ops.onnxGather(x_blocks_1_attn_Tr_2, this.Vars.x_Constant_output_0, 0, coder.const(x_blocks_1_attn_Tr_2NumDims), this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_1_attn_Gath, x_blocks_1_attn_GathNumDims] = model.coder.ops.onnxGather(x_blocks_1_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, coder.const(x_blocks_1_attn_Tr_2NumDims), this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm1011, x_blocks_1_attn_TranNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1006, coder.const(x_blocks_1_attn_GathNumDims));
            if isempty(perm1011)
                x_blocks_1_attn_Tran = x_blocks_1_attn_Gath;
            else
                x_blocks_1_attn_Tran = permute(model.coder.ops.extractIfDlarray(x_blocks_1_attn_Gath), perm1011);
            end

            % Gather:
            [x_blocks_1_attn_Ga_2, x_blocks_1_attn_Ga_2NumDims] = model.coder.ops.onnxGather(x_blocks_1_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, coder.const(x_blocks_1_attn_Tr_2NumDims), this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_1_attn_Mul_ = x_blocks_1_attn_Ga_2 .* this.Vars.x_blocks_1_attn_Cons;
            x_blocks_1_attn_Mul_NumDims = max(coder.const(x_blocks_1_attn_Ga_2NumDims), this.NumDims.x_blocks_1_attn_Cons);

            % MatMul:
            [x_blocks_1_attn_Ma_1, x_blocks_1_attn_Ma_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_1_attn_Mul_, x_blocks_1_attn_Tran, coder.const(x_blocks_1_attn_Mul_NumDims), coder.const(x_blocks_1_attn_TranNumDims));

            % Softmax:
            [x_blocks_1_attn_Soft, x_blocks_1_attn_SoftNumDims] = model.coder.ops.onnxSoftmax13(x_blocks_1_attn_Ma_1, -1, coder.const(x_blocks_1_attn_Ma_1NumDims));

            % MatMul:
            [x_blocks_1_attn_MatM, x_blocks_1_attn_MatMNumDims] = model.coder.ops.onnxMatMul(x_blocks_1_attn_Soft, x_blocks_1_attn_Ga_1, coder.const(x_blocks_1_attn_SoftNumDims), coder.const(x_blocks_1_attn_Ga_1NumDims));

            % Transpose:
            [perm1012, x_blocks_1_attn_Tr_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1007, coder.const(x_blocks_1_attn_MatMNumDims));
            if isempty(perm1012)
                x_blocks_1_attn_Tr_1 = x_blocks_1_attn_MatM;
            else
                x_blocks_1_attn_Tr_1 = permute(model.coder.ops.extractIfDlarray(x_blocks_1_attn_MatM), perm1012);
            end

            % Reshape:
            [shape1013, x_blocks_1_attn_ReshNumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_1_attn_Tr_1, this.Vars.x_blocks_1_attn_Co_1, coder.const(x_blocks_1_attn_Tr_1NumDims), 0);
            x_blocks_1_attn_Resh = reshape(x_blocks_1_attn_Tr_1, shape1013{:});

            % MatMul:
            [x_blocks_1_attn_pr_1, x_blocks_1_attn_pr_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_1_attn_Resh, this.onnx__MatMul_1262, coder.const(x_blocks_1_attn_ReshNumDims), this.NumDims.onnx__MatMul_1262);

            % Add:
            x_blocks_1_attn_proj = this.Vars.pretrained_blocks_1_ + x_blocks_1_attn_pr_1;
            x_blocks_1_attn_projNumDims = max(this.NumDims.pretrained_blocks_1_, coder.const(x_blocks_1_attn_pr_1NumDims));

            % Mul:
            x_blocks_1_ls1_Mul_o = x_blocks_1_attn_proj .* this.Vars.pretrained_blocks_31;
            x_blocks_1_ls1_Mul_oNumDims = max(coder.const(x_blocks_1_attn_projNumDims), this.NumDims.pretrained_blocks_31);

            % Add:
            x_blocks_1_Add_outpu = x_blocks_0_Add_1_out + x_blocks_1_ls1_Mul_o;
            x_blocks_1_Add_outpuNumDims = max(coder.const(x_blocks_0_Add_1_outNumDims), coder.const(x_blocks_1_ls1_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_1_norm2_Lay, x_blocks_1_norm2_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_1_Add_outpu, this.pretrained_blocks_38, this.pretrained_blocks_37, -1, 1.000000e-06, coder.const(x_blocks_1_Add_outpuNumDims));

            % MatMul:
            [x_blocks_1_mlp_fc1_M, x_blocks_1_mlp_fc1_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_1_norm2_Lay, this.onnx__MatMul_1263, coder.const(x_blocks_1_norm2_LayNumDims), this.NumDims.onnx__MatMul_1263);

            % Add:
            x_blocks_1_mlp_fc1_A = this.Vars.pretrained_blocks_33 + x_blocks_1_mlp_fc1_M;
            x_blocks_1_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_33, coder.const(x_blocks_1_mlp_fc1_MNumDims));

            % Div:
            x_blocks_1_mlp_act_D = x_blocks_1_mlp_fc1_A ./ this.Vars.x_blocks_1_mlp_act_3;
            x_blocks_1_mlp_act_DNumDims = max(coder.const(x_blocks_1_mlp_fc1_ANumDims), this.NumDims.x_blocks_1_mlp_act_3);

            % Erf:
            x_blocks_1_mlp_act_E = erf(x_blocks_1_mlp_act_D);
            x_blocks_1_mlp_act_ENumDims = coder.const(x_blocks_1_mlp_act_DNumDims);

            % Add:
            x_blocks_1_mlp_act_A = x_blocks_1_mlp_act_E + this.Vars.x_blocks_1_mlp_act_C;
            x_blocks_1_mlp_act_ANumDims = max(coder.const(x_blocks_1_mlp_act_ENumDims), this.NumDims.x_blocks_1_mlp_act_C);

            % Mul:
            x_blocks_1_mlp_act_9 = x_blocks_1_mlp_fc1_A .* x_blocks_1_mlp_act_A;
            x_blocks_1_mlp_act_9NumDims = max(coder.const(x_blocks_1_mlp_fc1_ANumDims), coder.const(x_blocks_1_mlp_act_ANumDims));

            % Mul:
            x_blocks_1_mlp_act_M = x_blocks_1_mlp_act_9 .* this.Vars.x_blocks_1_mlp_act_2;
            x_blocks_1_mlp_act_MNumDims = max(coder.const(x_blocks_1_mlp_act_9NumDims), this.NumDims.x_blocks_1_mlp_act_2);

            % MatMul:
            [x_blocks_1_mlp_fc2_M, x_blocks_1_mlp_fc2_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_1_mlp_act_M, this.onnx__MatMul_1264, coder.const(x_blocks_1_mlp_act_MNumDims), this.NumDims.onnx__MatMul_1264);

            % Add:
            x_blocks_1_mlp_fc2_A = this.Vars.pretrained_blocks_34 + x_blocks_1_mlp_fc2_M;
            x_blocks_1_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_34, coder.const(x_blocks_1_mlp_fc2_MNumDims));

            % Mul:
            x_blocks_1_ls2_Mul_o = x_blocks_1_mlp_fc2_A .* this.Vars.pretrained_blocks_32;
            x_blocks_1_ls2_Mul_oNumDims = max(coder.const(x_blocks_1_mlp_fc2_ANumDims), this.NumDims.pretrained_blocks_32);

            % Add:
            x_blocks_1_Add_1_out = x_blocks_1_Add_outpu + x_blocks_1_ls2_Mul_o;
            x_blocks_1_Add_1_outNumDims = max(coder.const(x_blocks_1_Add_outpuNumDims), coder.const(x_blocks_1_ls2_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_2_norm1_Lay, x_blocks_2_norm1_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_1_Add_1_out, this.pretrained_blocks_45, this.pretrained_blocks_44, -1, 1.000000e-06, coder.const(x_blocks_1_Add_1_outNumDims));

            % MatMul:
            [x_blocks_2_attn_qk_1, x_blocks_2_attn_qk_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_2_norm1_Lay, this.onnx__MatMul_1265, coder.const(x_blocks_2_norm1_LayNumDims), this.NumDims.onnx__MatMul_1265);

            % Add:
            x_blocks_2_attn_qkv_ = this.Vars.pretrained_blocks_39 + x_blocks_2_attn_qk_1;
            x_blocks_2_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_39, coder.const(x_blocks_2_attn_qk_1NumDims));

            % Reshape:
            [shape1014, x_blocks_2_attn_Re_1NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_2_attn_qkv_, this.Vars.x_blocks_2_attn_Co_2, coder.const(x_blocks_2_attn_qkv_NumDims), 0);
            x_blocks_2_attn_Re_1 = reshape(x_blocks_2_attn_qkv_, shape1014{:});

            % Transpose:
            [perm1015, x_blocks_2_attn_Tr_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1008, coder.const(x_blocks_2_attn_Re_1NumDims));
            if isempty(perm1015)
                x_blocks_2_attn_Tr_2 = x_blocks_2_attn_Re_1;
            else
                x_blocks_2_attn_Tr_2 = permute(model.coder.ops.extractIfDlarray(x_blocks_2_attn_Re_1), perm1015);
            end

            % Gather:
            [x_blocks_2_attn_Ga_1, x_blocks_2_attn_Ga_1NumDims] = model.coder.ops.onnxGather(x_blocks_2_attn_Tr_2, this.Vars.x_Constant_output_0, 0, coder.const(x_blocks_2_attn_Tr_2NumDims), this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_2_attn_Gath, x_blocks_2_attn_GathNumDims] = model.coder.ops.onnxGather(x_blocks_2_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, coder.const(x_blocks_2_attn_Tr_2NumDims), this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm1016, x_blocks_2_attn_TranNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1009, coder.const(x_blocks_2_attn_GathNumDims));
            if isempty(perm1016)
                x_blocks_2_attn_Tran = x_blocks_2_attn_Gath;
            else
                x_blocks_2_attn_Tran = permute(model.coder.ops.extractIfDlarray(x_blocks_2_attn_Gath), perm1016);
            end

            % Gather:
            [x_blocks_2_attn_Ga_2, x_blocks_2_attn_Ga_2NumDims] = model.coder.ops.onnxGather(x_blocks_2_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, coder.const(x_blocks_2_attn_Tr_2NumDims), this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_2_attn_Mul_ = x_blocks_2_attn_Ga_2 .* this.Vars.x_blocks_2_attn_Cons;
            x_blocks_2_attn_Mul_NumDims = max(coder.const(x_blocks_2_attn_Ga_2NumDims), this.NumDims.x_blocks_2_attn_Cons);

            % MatMul:
            [x_blocks_2_attn_Ma_1, x_blocks_2_attn_Ma_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_2_attn_Mul_, x_blocks_2_attn_Tran, coder.const(x_blocks_2_attn_Mul_NumDims), coder.const(x_blocks_2_attn_TranNumDims));

            % Softmax:
            [x_blocks_2_attn_Soft, x_blocks_2_attn_SoftNumDims] = model.coder.ops.onnxSoftmax13(x_blocks_2_attn_Ma_1, -1, coder.const(x_blocks_2_attn_Ma_1NumDims));

            % MatMul:
            [x_blocks_2_attn_MatM, x_blocks_2_attn_MatMNumDims] = model.coder.ops.onnxMatMul(x_blocks_2_attn_Soft, x_blocks_2_attn_Ga_1, coder.const(x_blocks_2_attn_SoftNumDims), coder.const(x_blocks_2_attn_Ga_1NumDims));

            % Transpose:
            [perm1017, x_blocks_2_attn_Tr_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1010, coder.const(x_blocks_2_attn_MatMNumDims));
            if isempty(perm1017)
                x_blocks_2_attn_Tr_1 = x_blocks_2_attn_MatM;
            else
                x_blocks_2_attn_Tr_1 = permute(model.coder.ops.extractIfDlarray(x_blocks_2_attn_MatM), perm1017);
            end

            % Reshape:
            [shape1018, x_blocks_2_attn_ReshNumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_2_attn_Tr_1, this.Vars.x_blocks_2_attn_Co_1, coder.const(x_blocks_2_attn_Tr_1NumDims), 0);
            x_blocks_2_attn_Resh = reshape(x_blocks_2_attn_Tr_1, shape1018{:});

            % MatMul:
            [x_blocks_2_attn_pr_1, x_blocks_2_attn_pr_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_2_attn_Resh, this.onnx__MatMul_1276, coder.const(x_blocks_2_attn_ReshNumDims), this.NumDims.onnx__MatMul_1276);

            % Add:
            x_blocks_2_attn_proj = this.Vars.pretrained_blocks_2_ + x_blocks_2_attn_pr_1;
            x_blocks_2_attn_projNumDims = max(this.NumDims.pretrained_blocks_2_, coder.const(x_blocks_2_attn_pr_1NumDims));

            % Mul:
            x_blocks_2_ls1_Mul_o = x_blocks_2_attn_proj .* this.Vars.pretrained_blocks_40;
            x_blocks_2_ls1_Mul_oNumDims = max(coder.const(x_blocks_2_attn_projNumDims), this.NumDims.pretrained_blocks_40);

            % Add:
            x_blocks_2_Add_outpu = x_blocks_1_Add_1_out + x_blocks_2_ls1_Mul_o;
            x_blocks_2_Add_outpuNumDims = max(coder.const(x_blocks_1_Add_1_outNumDims), coder.const(x_blocks_2_ls1_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_2_norm2_Lay, x_blocks_2_norm2_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_2_Add_outpu, this.pretrained_blocks_47, this.pretrained_blocks_46, -1, 1.000000e-06, coder.const(x_blocks_2_Add_outpuNumDims));

            % MatMul:
            [x_blocks_2_mlp_fc1_M, x_blocks_2_mlp_fc1_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_2_norm2_Lay, this.onnx__MatMul_1277, coder.const(x_blocks_2_norm2_LayNumDims), this.NumDims.onnx__MatMul_1277);

            % Add:
            x_blocks_2_mlp_fc1_A = this.Vars.pretrained_blocks_42 + x_blocks_2_mlp_fc1_M;
            x_blocks_2_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_42, coder.const(x_blocks_2_mlp_fc1_MNumDims));

            % Div:
            x_blocks_2_mlp_act_D = x_blocks_2_mlp_fc1_A ./ this.Vars.x_blocks_2_mlp_act_3;
            x_blocks_2_mlp_act_DNumDims = max(coder.const(x_blocks_2_mlp_fc1_ANumDims), this.NumDims.x_blocks_2_mlp_act_3);

            % Erf:
            x_blocks_2_mlp_act_E = erf(x_blocks_2_mlp_act_D);
            x_blocks_2_mlp_act_ENumDims = coder.const(x_blocks_2_mlp_act_DNumDims);

            % Add:
            x_blocks_2_mlp_act_A = x_blocks_2_mlp_act_E + this.Vars.x_blocks_2_mlp_act_C;
            x_blocks_2_mlp_act_ANumDims = max(coder.const(x_blocks_2_mlp_act_ENumDims), this.NumDims.x_blocks_2_mlp_act_C);

            % Mul:
            x_blocks_2_mlp_act_9 = x_blocks_2_mlp_fc1_A .* x_blocks_2_mlp_act_A;
            x_blocks_2_mlp_act_9NumDims = max(coder.const(x_blocks_2_mlp_fc1_ANumDims), coder.const(x_blocks_2_mlp_act_ANumDims));

            % Mul:
            x_blocks_2_mlp_act_M = x_blocks_2_mlp_act_9 .* this.Vars.x_blocks_2_mlp_act_2;
            x_blocks_2_mlp_act_MNumDims = max(coder.const(x_blocks_2_mlp_act_9NumDims), this.NumDims.x_blocks_2_mlp_act_2);

            % MatMul:
            [x_blocks_2_mlp_fc2_M, x_blocks_2_mlp_fc2_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_2_mlp_act_M, this.onnx__MatMul_1278, coder.const(x_blocks_2_mlp_act_MNumDims), this.NumDims.onnx__MatMul_1278);

            % Add:
            x_blocks_2_mlp_fc2_A = this.Vars.pretrained_blocks_43 + x_blocks_2_mlp_fc2_M;
            x_blocks_2_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_43, coder.const(x_blocks_2_mlp_fc2_MNumDims));

            % Mul:
            x_blocks_2_ls2_Mul_o = x_blocks_2_mlp_fc2_A .* this.Vars.pretrained_blocks_41;
            x_blocks_2_ls2_Mul_oNumDims = max(coder.const(x_blocks_2_mlp_fc2_ANumDims), this.NumDims.pretrained_blocks_41);

            % Add:
            x_blocks_2_Add_1_out = x_blocks_2_Add_outpu + x_blocks_2_ls2_Mul_o;
            x_blocks_2_Add_1_outNumDims = max(coder.const(x_blocks_2_Add_outpuNumDims), coder.const(x_blocks_2_ls2_Mul_oNumDims));

            % LayerNormalization:
            [x_norm_LayerNormaliz, x_norm_LayerNormalizNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_2_Add_1_out, this.pretrained_norm_weig, this.pretrained_norm_bias, -1, 1.000000e-06, coder.const(x_blocks_2_Add_1_outNumDims));

            % Slice:
            [indices1019, x_Slice_output_0NumDims] = model.coder.ops.prepareSliceArgs(x_norm_LayerNormaliz, this.Vars.x_Constant_6_output_, this.Vars.x_Constant_7_output_, this.Vars.x_Constant_5_output_, this.Vars.x_Constant_8_output_, coder.const(x_norm_LayerNormalizNumDims));
            x_Slice_output_0 = x_norm_LayerNormaliz(indices1019{:});

            % Transpose:
            [perm1020, x_depth_head_Trans_3NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1011, coder.const(x_Slice_output_0NumDims));
            if isempty(perm1020)
                x_depth_head_Trans_3 = x_Slice_output_0;
            else
                x_depth_head_Trans_3 = permute(model.coder.ops.extractIfDlarray(x_Slice_output_0), perm1020);
            end

            % Reshape:
            [shape1021, x_depth_head_Resha_3NumDims] = model.coder.ops.prepareReshapeArgs(x_depth_head_Trans_3, this.Vars.x_depth_head_Const_7, coder.const(x_depth_head_Trans_3NumDims), 0);
            x_depth_head_Resha_3 = reshape(x_depth_head_Trans_3, shape1021{:});

            % LayerNormalization:
            [x_blocks_3_norm1_Lay, x_blocks_3_norm1_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_2_Add_1_out, this.pretrained_blocks_54, this.pretrained_blocks_53, -1, 1.000000e-06, coder.const(x_blocks_2_Add_1_outNumDims));

            % MatMul:
            [x_blocks_3_attn_qk_1, x_blocks_3_attn_qk_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_3_norm1_Lay, this.onnx__MatMul_1279, coder.const(x_blocks_3_norm1_LayNumDims), this.NumDims.onnx__MatMul_1279);

            % Add:
            x_blocks_3_attn_qkv_ = this.Vars.pretrained_blocks_48 + x_blocks_3_attn_qk_1;
            x_blocks_3_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_48, coder.const(x_blocks_3_attn_qk_1NumDims));

            % Reshape:
            [shape1022, x_blocks_3_attn_Re_1NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_3_attn_qkv_, this.Vars.x_blocks_3_attn_Co_2, coder.const(x_blocks_3_attn_qkv_NumDims), 0);
            x_blocks_3_attn_Re_1 = reshape(x_blocks_3_attn_qkv_, shape1022{:});

            % Transpose:
            [perm1023, x_blocks_3_attn_Tr_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1012, coder.const(x_blocks_3_attn_Re_1NumDims));
            if isempty(perm1023)
                x_blocks_3_attn_Tr_2 = x_blocks_3_attn_Re_1;
            else
                x_blocks_3_attn_Tr_2 = permute(model.coder.ops.extractIfDlarray(x_blocks_3_attn_Re_1), perm1023);
            end

            % Gather:
            [x_blocks_3_attn_Ga_1, x_blocks_3_attn_Ga_1NumDims] = model.coder.ops.onnxGather(x_blocks_3_attn_Tr_2, this.Vars.x_Constant_output_0, 0, coder.const(x_blocks_3_attn_Tr_2NumDims), this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_3_attn_Gath, x_blocks_3_attn_GathNumDims] = model.coder.ops.onnxGather(x_blocks_3_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, coder.const(x_blocks_3_attn_Tr_2NumDims), this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm1024, x_blocks_3_attn_TranNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1013, coder.const(x_blocks_3_attn_GathNumDims));
            if isempty(perm1024)
                x_blocks_3_attn_Tran = x_blocks_3_attn_Gath;
            else
                x_blocks_3_attn_Tran = permute(model.coder.ops.extractIfDlarray(x_blocks_3_attn_Gath), perm1024);
            end

            % Gather:
            [x_blocks_3_attn_Ga_2, x_blocks_3_attn_Ga_2NumDims] = model.coder.ops.onnxGather(x_blocks_3_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, coder.const(x_blocks_3_attn_Tr_2NumDims), this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_3_attn_Mul_ = x_blocks_3_attn_Ga_2 .* this.Vars.x_blocks_3_attn_Cons;
            x_blocks_3_attn_Mul_NumDims = max(coder.const(x_blocks_3_attn_Ga_2NumDims), this.NumDims.x_blocks_3_attn_Cons);

            % MatMul:
            [x_blocks_3_attn_Ma_1, x_blocks_3_attn_Ma_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_3_attn_Mul_, x_blocks_3_attn_Tran, coder.const(x_blocks_3_attn_Mul_NumDims), coder.const(x_blocks_3_attn_TranNumDims));

            % Softmax:
            [x_blocks_3_attn_Soft, x_blocks_3_attn_SoftNumDims] = model.coder.ops.onnxSoftmax13(x_blocks_3_attn_Ma_1, -1, coder.const(x_blocks_3_attn_Ma_1NumDims));

            % MatMul:
            [x_blocks_3_attn_MatM, x_blocks_3_attn_MatMNumDims] = model.coder.ops.onnxMatMul(x_blocks_3_attn_Soft, x_blocks_3_attn_Ga_1, coder.const(x_blocks_3_attn_SoftNumDims), coder.const(x_blocks_3_attn_Ga_1NumDims));

            % Transpose:
            [perm1025, x_blocks_3_attn_Tr_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1014, coder.const(x_blocks_3_attn_MatMNumDims));
            if isempty(perm1025)
                x_blocks_3_attn_Tr_1 = x_blocks_3_attn_MatM;
            else
                x_blocks_3_attn_Tr_1 = permute(model.coder.ops.extractIfDlarray(x_blocks_3_attn_MatM), perm1025);
            end

            % Reshape:
            [shape1026, x_blocks_3_attn_ReshNumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_3_attn_Tr_1, this.Vars.x_blocks_3_attn_Co_1, coder.const(x_blocks_3_attn_Tr_1NumDims), 0);
            x_blocks_3_attn_Resh = reshape(x_blocks_3_attn_Tr_1, shape1026{:});

            % MatMul:
            [x_blocks_3_attn_pr_1, x_blocks_3_attn_pr_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_3_attn_Resh, this.onnx__MatMul_1290, coder.const(x_blocks_3_attn_ReshNumDims), this.NumDims.onnx__MatMul_1290);

            % Add:
            x_blocks_3_attn_proj = this.Vars.pretrained_blocks_3_ + x_blocks_3_attn_pr_1;
            x_blocks_3_attn_projNumDims = max(this.NumDims.pretrained_blocks_3_, coder.const(x_blocks_3_attn_pr_1NumDims));

            % Mul:
            x_blocks_3_ls1_Mul_o = x_blocks_3_attn_proj .* this.Vars.pretrained_blocks_49;
            x_blocks_3_ls1_Mul_oNumDims = max(coder.const(x_blocks_3_attn_projNumDims), this.NumDims.pretrained_blocks_49);

            % Add:
            x_blocks_3_Add_outpu = x_blocks_2_Add_1_out + x_blocks_3_ls1_Mul_o;
            x_blocks_3_Add_outpuNumDims = max(coder.const(x_blocks_2_Add_1_outNumDims), coder.const(x_blocks_3_ls1_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_3_norm2_Lay, x_blocks_3_norm2_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_3_Add_outpu, this.pretrained_blocks_56, this.pretrained_blocks_55, -1, 1.000000e-06, coder.const(x_blocks_3_Add_outpuNumDims));

            % MatMul:
            [x_blocks_3_mlp_fc1_M, x_blocks_3_mlp_fc1_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_3_norm2_Lay, this.onnx__MatMul_1291, coder.const(x_blocks_3_norm2_LayNumDims), this.NumDims.onnx__MatMul_1291);

            % Add:
            x_blocks_3_mlp_fc1_A = this.Vars.pretrained_blocks_51 + x_blocks_3_mlp_fc1_M;
            x_blocks_3_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_51, coder.const(x_blocks_3_mlp_fc1_MNumDims));

            % Div:
            x_blocks_3_mlp_act_D = x_blocks_3_mlp_fc1_A ./ this.Vars.x_blocks_3_mlp_act_3;
            x_blocks_3_mlp_act_DNumDims = max(coder.const(x_blocks_3_mlp_fc1_ANumDims), this.NumDims.x_blocks_3_mlp_act_3);

            % Erf:
            x_blocks_3_mlp_act_E = erf(x_blocks_3_mlp_act_D);
            x_blocks_3_mlp_act_ENumDims = coder.const(x_blocks_3_mlp_act_DNumDims);

            % Add:
            x_blocks_3_mlp_act_A = x_blocks_3_mlp_act_E + this.Vars.x_blocks_3_mlp_act_C;
            x_blocks_3_mlp_act_ANumDims = max(coder.const(x_blocks_3_mlp_act_ENumDims), this.NumDims.x_blocks_3_mlp_act_C);

            % Mul:
            x_blocks_3_mlp_act_9 = x_blocks_3_mlp_fc1_A .* x_blocks_3_mlp_act_A;
            x_blocks_3_mlp_act_9NumDims = max(coder.const(x_blocks_3_mlp_fc1_ANumDims), coder.const(x_blocks_3_mlp_act_ANumDims));

            % Mul:
            x_blocks_3_mlp_act_M = x_blocks_3_mlp_act_9 .* this.Vars.x_blocks_3_mlp_act_2;
            x_blocks_3_mlp_act_MNumDims = max(coder.const(x_blocks_3_mlp_act_9NumDims), this.NumDims.x_blocks_3_mlp_act_2);

            % MatMul:
            [x_blocks_3_mlp_fc2_M, x_blocks_3_mlp_fc2_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_3_mlp_act_M, this.onnx__MatMul_1292, coder.const(x_blocks_3_mlp_act_MNumDims), this.NumDims.onnx__MatMul_1292);

            % Add:
            x_blocks_3_mlp_fc2_A = this.Vars.pretrained_blocks_52 + x_blocks_3_mlp_fc2_M;
            x_blocks_3_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_52, coder.const(x_blocks_3_mlp_fc2_MNumDims));

            % Mul:
            x_blocks_3_ls2_Mul_o = x_blocks_3_mlp_fc2_A .* this.Vars.pretrained_blocks_50;
            x_blocks_3_ls2_Mul_oNumDims = max(coder.const(x_blocks_3_mlp_fc2_ANumDims), this.NumDims.pretrained_blocks_50);

            % Add:
            x_blocks_3_Add_1_out = x_blocks_3_Add_outpu + x_blocks_3_ls2_Mul_o;
            x_blocks_3_Add_1_outNumDims = max(coder.const(x_blocks_3_Add_outpuNumDims), coder.const(x_blocks_3_ls2_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_4_norm1_Lay, x_blocks_4_norm1_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_3_Add_1_out, this.pretrained_blocks_63, this.pretrained_blocks_62, -1, 1.000000e-06, coder.const(x_blocks_3_Add_1_outNumDims));

            % MatMul:
            [x_blocks_4_attn_qk_1, x_blocks_4_attn_qk_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_4_norm1_Lay, this.onnx__MatMul_1293, coder.const(x_blocks_4_norm1_LayNumDims), this.NumDims.onnx__MatMul_1293);

            % Add:
            x_blocks_4_attn_qkv_ = this.Vars.pretrained_blocks_57 + x_blocks_4_attn_qk_1;
            x_blocks_4_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_57, coder.const(x_blocks_4_attn_qk_1NumDims));

            % Reshape:
            [shape1027, x_blocks_4_attn_Re_1NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_4_attn_qkv_, this.Vars.x_blocks_4_attn_Co_2, coder.const(x_blocks_4_attn_qkv_NumDims), 0);
            x_blocks_4_attn_Re_1 = reshape(x_blocks_4_attn_qkv_, shape1027{:});

            % Transpose:
            [perm1028, x_blocks_4_attn_Tr_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1015, coder.const(x_blocks_4_attn_Re_1NumDims));
            if isempty(perm1028)
                x_blocks_4_attn_Tr_2 = x_blocks_4_attn_Re_1;
            else
                x_blocks_4_attn_Tr_2 = permute(model.coder.ops.extractIfDlarray(x_blocks_4_attn_Re_1), perm1028);
            end

            % Gather:
            [x_blocks_4_attn_Ga_1, x_blocks_4_attn_Ga_1NumDims] = model.coder.ops.onnxGather(x_blocks_4_attn_Tr_2, this.Vars.x_Constant_output_0, 0, coder.const(x_blocks_4_attn_Tr_2NumDims), this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_4_attn_Gath, x_blocks_4_attn_GathNumDims] = model.coder.ops.onnxGather(x_blocks_4_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, coder.const(x_blocks_4_attn_Tr_2NumDims), this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm1029, x_blocks_4_attn_TranNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1016, coder.const(x_blocks_4_attn_GathNumDims));
            if isempty(perm1029)
                x_blocks_4_attn_Tran = x_blocks_4_attn_Gath;
            else
                x_blocks_4_attn_Tran = permute(model.coder.ops.extractIfDlarray(x_blocks_4_attn_Gath), perm1029);
            end

            % Gather:
            [x_blocks_4_attn_Ga_2, x_blocks_4_attn_Ga_2NumDims] = model.coder.ops.onnxGather(x_blocks_4_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, coder.const(x_blocks_4_attn_Tr_2NumDims), this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_4_attn_Mul_ = x_blocks_4_attn_Ga_2 .* this.Vars.x_blocks_4_attn_Cons;
            x_blocks_4_attn_Mul_NumDims = max(coder.const(x_blocks_4_attn_Ga_2NumDims), this.NumDims.x_blocks_4_attn_Cons);

            % MatMul:
            [x_blocks_4_attn_Ma_1, x_blocks_4_attn_Ma_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_4_attn_Mul_, x_blocks_4_attn_Tran, coder.const(x_blocks_4_attn_Mul_NumDims), coder.const(x_blocks_4_attn_TranNumDims));

            % Softmax:
            [x_blocks_4_attn_Soft, x_blocks_4_attn_SoftNumDims] = model.coder.ops.onnxSoftmax13(x_blocks_4_attn_Ma_1, -1, coder.const(x_blocks_4_attn_Ma_1NumDims));

            % MatMul:
            [x_blocks_4_attn_MatM, x_blocks_4_attn_MatMNumDims] = model.coder.ops.onnxMatMul(x_blocks_4_attn_Soft, x_blocks_4_attn_Ga_1, coder.const(x_blocks_4_attn_SoftNumDims), coder.const(x_blocks_4_attn_Ga_1NumDims));

            % Transpose:
            [perm1030, x_blocks_4_attn_Tr_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1017, coder.const(x_blocks_4_attn_MatMNumDims));
            if isempty(perm1030)
                x_blocks_4_attn_Tr_1 = x_blocks_4_attn_MatM;
            else
                x_blocks_4_attn_Tr_1 = permute(model.coder.ops.extractIfDlarray(x_blocks_4_attn_MatM), perm1030);
            end

            % Reshape:
            [shape1031, x_blocks_4_attn_ReshNumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_4_attn_Tr_1, this.Vars.x_blocks_4_attn_Co_1, coder.const(x_blocks_4_attn_Tr_1NumDims), 0);
            x_blocks_4_attn_Resh = reshape(x_blocks_4_attn_Tr_1, shape1031{:});

            % MatMul:
            [x_blocks_4_attn_pr_1, x_blocks_4_attn_pr_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_4_attn_Resh, this.onnx__MatMul_1304, coder.const(x_blocks_4_attn_ReshNumDims), this.NumDims.onnx__MatMul_1304);

            % Add:
            x_blocks_4_attn_proj = this.Vars.pretrained_blocks_4_ + x_blocks_4_attn_pr_1;
            x_blocks_4_attn_projNumDims = max(this.NumDims.pretrained_blocks_4_, coder.const(x_blocks_4_attn_pr_1NumDims));

            % Mul:
            x_blocks_4_ls1_Mul_o = x_blocks_4_attn_proj .* this.Vars.pretrained_blocks_58;
            x_blocks_4_ls1_Mul_oNumDims = max(coder.const(x_blocks_4_attn_projNumDims), this.NumDims.pretrained_blocks_58);

            % Add:
            x_blocks_4_Add_outpu = x_blocks_3_Add_1_out + x_blocks_4_ls1_Mul_o;
            x_blocks_4_Add_outpuNumDims = max(coder.const(x_blocks_3_Add_1_outNumDims), coder.const(x_blocks_4_ls1_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_4_norm2_Lay, x_blocks_4_norm2_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_4_Add_outpu, this.pretrained_blocks_65, this.pretrained_blocks_64, -1, 1.000000e-06, coder.const(x_blocks_4_Add_outpuNumDims));

            % MatMul:
            [x_blocks_4_mlp_fc1_M, x_blocks_4_mlp_fc1_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_4_norm2_Lay, this.onnx__MatMul_1305, coder.const(x_blocks_4_norm2_LayNumDims), this.NumDims.onnx__MatMul_1305);

            % Add:
            x_blocks_4_mlp_fc1_A = this.Vars.pretrained_blocks_60 + x_blocks_4_mlp_fc1_M;
            x_blocks_4_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_60, coder.const(x_blocks_4_mlp_fc1_MNumDims));

            % Div:
            x_blocks_4_mlp_act_D = x_blocks_4_mlp_fc1_A ./ this.Vars.x_blocks_4_mlp_act_3;
            x_blocks_4_mlp_act_DNumDims = max(coder.const(x_blocks_4_mlp_fc1_ANumDims), this.NumDims.x_blocks_4_mlp_act_3);

            % Erf:
            x_blocks_4_mlp_act_E = erf(x_blocks_4_mlp_act_D);
            x_blocks_4_mlp_act_ENumDims = coder.const(x_blocks_4_mlp_act_DNumDims);

            % Add:
            x_blocks_4_mlp_act_A = x_blocks_4_mlp_act_E + this.Vars.x_blocks_4_mlp_act_C;
            x_blocks_4_mlp_act_ANumDims = max(coder.const(x_blocks_4_mlp_act_ENumDims), this.NumDims.x_blocks_4_mlp_act_C);

            % Mul:
            x_blocks_4_mlp_act_9 = x_blocks_4_mlp_fc1_A .* x_blocks_4_mlp_act_A;
            x_blocks_4_mlp_act_9NumDims = max(coder.const(x_blocks_4_mlp_fc1_ANumDims), coder.const(x_blocks_4_mlp_act_ANumDims));

            % Mul:
            x_blocks_4_mlp_act_M = x_blocks_4_mlp_act_9 .* this.Vars.x_blocks_4_mlp_act_2;
            x_blocks_4_mlp_act_MNumDims = max(coder.const(x_blocks_4_mlp_act_9NumDims), this.NumDims.x_blocks_4_mlp_act_2);

            % MatMul:
            [x_blocks_4_mlp_fc2_M, x_blocks_4_mlp_fc2_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_4_mlp_act_M, this.onnx__MatMul_1306, coder.const(x_blocks_4_mlp_act_MNumDims), this.NumDims.onnx__MatMul_1306);

            % Add:
            x_blocks_4_mlp_fc2_A = this.Vars.pretrained_blocks_61 + x_blocks_4_mlp_fc2_M;
            x_blocks_4_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_61, coder.const(x_blocks_4_mlp_fc2_MNumDims));

            % Mul:
            x_blocks_4_ls2_Mul_o = x_blocks_4_mlp_fc2_A .* this.Vars.pretrained_blocks_59;
            x_blocks_4_ls2_Mul_oNumDims = max(coder.const(x_blocks_4_mlp_fc2_ANumDims), this.NumDims.pretrained_blocks_59);

            % Add:
            x_blocks_4_Add_1_out = x_blocks_4_Add_outpu + x_blocks_4_ls2_Mul_o;
            x_blocks_4_Add_1_outNumDims = max(coder.const(x_blocks_4_Add_outpuNumDims), coder.const(x_blocks_4_ls2_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_5_norm1_Lay, x_blocks_5_norm1_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_4_Add_1_out, this.pretrained_blocks_72, this.pretrained_blocks_71, -1, 1.000000e-06, coder.const(x_blocks_4_Add_1_outNumDims));

            % MatMul:
            [x_blocks_5_attn_qk_1, x_blocks_5_attn_qk_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_5_norm1_Lay, this.onnx__MatMul_1307, coder.const(x_blocks_5_norm1_LayNumDims), this.NumDims.onnx__MatMul_1307);

            % Add:
            x_blocks_5_attn_qkv_ = this.Vars.pretrained_blocks_66 + x_blocks_5_attn_qk_1;
            x_blocks_5_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_66, coder.const(x_blocks_5_attn_qk_1NumDims));

            % Reshape:
            [shape1032, x_blocks_5_attn_Re_1NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_5_attn_qkv_, this.Vars.x_blocks_5_attn_Co_2, coder.const(x_blocks_5_attn_qkv_NumDims), 0);
            x_blocks_5_attn_Re_1 = reshape(x_blocks_5_attn_qkv_, shape1032{:});

            % Transpose:
            [perm1033, x_blocks_5_attn_Tr_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1018, coder.const(x_blocks_5_attn_Re_1NumDims));
            if isempty(perm1033)
                x_blocks_5_attn_Tr_2 = x_blocks_5_attn_Re_1;
            else
                x_blocks_5_attn_Tr_2 = permute(model.coder.ops.extractIfDlarray(x_blocks_5_attn_Re_1), perm1033);
            end

            % Gather:
            [x_blocks_5_attn_Ga_1, x_blocks_5_attn_Ga_1NumDims] = model.coder.ops.onnxGather(x_blocks_5_attn_Tr_2, this.Vars.x_Constant_output_0, 0, coder.const(x_blocks_5_attn_Tr_2NumDims), this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_5_attn_Gath, x_blocks_5_attn_GathNumDims] = model.coder.ops.onnxGather(x_blocks_5_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, coder.const(x_blocks_5_attn_Tr_2NumDims), this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm1034, x_blocks_5_attn_TranNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1019, coder.const(x_blocks_5_attn_GathNumDims));
            if isempty(perm1034)
                x_blocks_5_attn_Tran = x_blocks_5_attn_Gath;
            else
                x_blocks_5_attn_Tran = permute(model.coder.ops.extractIfDlarray(x_blocks_5_attn_Gath), perm1034);
            end

            % Gather:
            [x_blocks_5_attn_Ga_2, x_blocks_5_attn_Ga_2NumDims] = model.coder.ops.onnxGather(x_blocks_5_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, coder.const(x_blocks_5_attn_Tr_2NumDims), this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_5_attn_Mul_ = x_blocks_5_attn_Ga_2 .* this.Vars.x_blocks_5_attn_Cons;
            x_blocks_5_attn_Mul_NumDims = max(coder.const(x_blocks_5_attn_Ga_2NumDims), this.NumDims.x_blocks_5_attn_Cons);

            % MatMul:
            [x_blocks_5_attn_Ma_1, x_blocks_5_attn_Ma_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_5_attn_Mul_, x_blocks_5_attn_Tran, coder.const(x_blocks_5_attn_Mul_NumDims), coder.const(x_blocks_5_attn_TranNumDims));

            % Softmax:
            [x_blocks_5_attn_Soft, x_blocks_5_attn_SoftNumDims] = model.coder.ops.onnxSoftmax13(x_blocks_5_attn_Ma_1, -1, coder.const(x_blocks_5_attn_Ma_1NumDims));

            % MatMul:
            [x_blocks_5_attn_MatM, x_blocks_5_attn_MatMNumDims] = model.coder.ops.onnxMatMul(x_blocks_5_attn_Soft, x_blocks_5_attn_Ga_1, coder.const(x_blocks_5_attn_SoftNumDims), coder.const(x_blocks_5_attn_Ga_1NumDims));

            % Transpose:
            [perm1035, x_blocks_5_attn_Tr_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1020, coder.const(x_blocks_5_attn_MatMNumDims));
            if isempty(perm1035)
                x_blocks_5_attn_Tr_1 = x_blocks_5_attn_MatM;
            else
                x_blocks_5_attn_Tr_1 = permute(model.coder.ops.extractIfDlarray(x_blocks_5_attn_MatM), perm1035);
            end

            % Reshape:
            [shape1036, x_blocks_5_attn_ReshNumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_5_attn_Tr_1, this.Vars.x_blocks_5_attn_Co_1, coder.const(x_blocks_5_attn_Tr_1NumDims), 0);
            x_blocks_5_attn_Resh = reshape(x_blocks_5_attn_Tr_1, shape1036{:});

            % MatMul:
            [x_blocks_5_attn_pr_1, x_blocks_5_attn_pr_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_5_attn_Resh, this.onnx__MatMul_1318, coder.const(x_blocks_5_attn_ReshNumDims), this.NumDims.onnx__MatMul_1318);

            % Add:
            x_blocks_5_attn_proj = this.Vars.pretrained_blocks_5_ + x_blocks_5_attn_pr_1;
            x_blocks_5_attn_projNumDims = max(this.NumDims.pretrained_blocks_5_, coder.const(x_blocks_5_attn_pr_1NumDims));

            % Mul:
            x_blocks_5_ls1_Mul_o = x_blocks_5_attn_proj .* this.Vars.pretrained_blocks_67;
            x_blocks_5_ls1_Mul_oNumDims = max(coder.const(x_blocks_5_attn_projNumDims), this.NumDims.pretrained_blocks_67);

            % Add:
            x_blocks_5_Add_outpu = x_blocks_4_Add_1_out + x_blocks_5_ls1_Mul_o;
            x_blocks_5_Add_outpuNumDims = max(coder.const(x_blocks_4_Add_1_outNumDims), coder.const(x_blocks_5_ls1_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_5_norm2_Lay, x_blocks_5_norm2_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_5_Add_outpu, this.pretrained_blocks_74, this.pretrained_blocks_73, -1, 1.000000e-06, coder.const(x_blocks_5_Add_outpuNumDims));

            % MatMul:
            [x_blocks_5_mlp_fc1_M, x_blocks_5_mlp_fc1_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_5_norm2_Lay, this.onnx__MatMul_1319, coder.const(x_blocks_5_norm2_LayNumDims), this.NumDims.onnx__MatMul_1319);

            % Add:
            x_blocks_5_mlp_fc1_A = this.Vars.pretrained_blocks_69 + x_blocks_5_mlp_fc1_M;
            x_blocks_5_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_69, coder.const(x_blocks_5_mlp_fc1_MNumDims));

            % Div:
            x_blocks_5_mlp_act_D = x_blocks_5_mlp_fc1_A ./ this.Vars.x_blocks_5_mlp_act_3;
            x_blocks_5_mlp_act_DNumDims = max(coder.const(x_blocks_5_mlp_fc1_ANumDims), this.NumDims.x_blocks_5_mlp_act_3);

            % Erf:
            x_blocks_5_mlp_act_E = erf(x_blocks_5_mlp_act_D);
            x_blocks_5_mlp_act_ENumDims = coder.const(x_blocks_5_mlp_act_DNumDims);

            % Add:
            x_blocks_5_mlp_act_A = x_blocks_5_mlp_act_E + this.Vars.x_blocks_5_mlp_act_C;
            x_blocks_5_mlp_act_ANumDims = max(coder.const(x_blocks_5_mlp_act_ENumDims), this.NumDims.x_blocks_5_mlp_act_C);

            % Mul:
            x_blocks_5_mlp_act_9 = x_blocks_5_mlp_fc1_A .* x_blocks_5_mlp_act_A;
            x_blocks_5_mlp_act_9NumDims = max(coder.const(x_blocks_5_mlp_fc1_ANumDims), coder.const(x_blocks_5_mlp_act_ANumDims));

            % Mul:
            x_blocks_5_mlp_act_M = x_blocks_5_mlp_act_9 .* this.Vars.x_blocks_5_mlp_act_2;
            x_blocks_5_mlp_act_MNumDims = max(coder.const(x_blocks_5_mlp_act_9NumDims), this.NumDims.x_blocks_5_mlp_act_2);

            % MatMul:
            [x_blocks_5_mlp_fc2_M, x_blocks_5_mlp_fc2_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_5_mlp_act_M, this.onnx__MatMul_1320, coder.const(x_blocks_5_mlp_act_MNumDims), this.NumDims.onnx__MatMul_1320);

            % Add:
            x_blocks_5_mlp_fc2_A = this.Vars.pretrained_blocks_70 + x_blocks_5_mlp_fc2_M;
            x_blocks_5_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_70, coder.const(x_blocks_5_mlp_fc2_MNumDims));

            % Mul:
            x_blocks_5_ls2_Mul_o = x_blocks_5_mlp_fc2_A .* this.Vars.pretrained_blocks_68;
            x_blocks_5_ls2_Mul_oNumDims = max(coder.const(x_blocks_5_mlp_fc2_ANumDims), this.NumDims.pretrained_blocks_68);

            % Add:
            x_blocks_5_Add_1_out = x_blocks_5_Add_outpu + x_blocks_5_ls2_Mul_o;
            x_blocks_5_Add_1_outNumDims = max(coder.const(x_blocks_5_Add_outpuNumDims), coder.const(x_blocks_5_ls2_Mul_oNumDims));

            % LayerNormalization:
            [x_norm_1_LayerNormal, x_norm_1_LayerNormalNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_5_Add_1_out, this.pretrained_norm_weig, this.pretrained_norm_bias, -1, 1.000000e-06, coder.const(x_blocks_5_Add_1_outNumDims));

            % Slice:
            [indices1037, x_Slice_1_output_0NumDims] = model.coder.ops.prepareSliceArgs(x_norm_1_LayerNormal, this.Vars.x_Constant_10_output, this.Vars.x_Constant_11_output, this.Vars.x_Constant_9_output_, this.Vars.x_Constant_12_output, coder.const(x_norm_1_LayerNormalNumDims));
            x_Slice_1_output_0 = x_norm_1_LayerNormal(indices1037{:});

            % Transpose:
            [perm1038, x_depth_head_TranspoNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1021, coder.const(x_Slice_1_output_0NumDims));
            if isempty(perm1038)
                x_depth_head_Transpo = x_Slice_1_output_0;
            else
                x_depth_head_Transpo = permute(model.coder.ops.extractIfDlarray(x_Slice_1_output_0), perm1038);
            end

            % Reshape:
            [shape1039, x_depth_head_ReshapeNumDims] = model.coder.ops.prepareReshapeArgs(x_depth_head_Transpo, this.Vars.x_depth_head_Constan, coder.const(x_depth_head_TranspoNumDims), 0);
            x_depth_head_Reshape = reshape(x_depth_head_Transpo, shape1039{:});

            % LayerNormalization:
            [x_blocks_6_norm1_Lay, x_blocks_6_norm1_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_5_Add_1_out, this.pretrained_blocks_81, this.pretrained_blocks_80, -1, 1.000000e-06, coder.const(x_blocks_5_Add_1_outNumDims));

            % MatMul:
            [x_blocks_6_attn_qk_1, x_blocks_6_attn_qk_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_6_norm1_Lay, this.onnx__MatMul_1321, coder.const(x_blocks_6_norm1_LayNumDims), this.NumDims.onnx__MatMul_1321);

            % Add:
            x_blocks_6_attn_qkv_ = this.Vars.pretrained_blocks_75 + x_blocks_6_attn_qk_1;
            x_blocks_6_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_75, coder.const(x_blocks_6_attn_qk_1NumDims));

            % Reshape:
            [shape1040, x_blocks_6_attn_Re_1NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_6_attn_qkv_, this.Vars.x_blocks_6_attn_Co_2, coder.const(x_blocks_6_attn_qkv_NumDims), 0);
            x_blocks_6_attn_Re_1 = reshape(x_blocks_6_attn_qkv_, shape1040{:});

            % Transpose:
            [perm1041, x_blocks_6_attn_Tr_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1022, coder.const(x_blocks_6_attn_Re_1NumDims));
            if isempty(perm1041)
                x_blocks_6_attn_Tr_2 = x_blocks_6_attn_Re_1;
            else
                x_blocks_6_attn_Tr_2 = permute(model.coder.ops.extractIfDlarray(x_blocks_6_attn_Re_1), perm1041);
            end

            % Gather:
            [x_blocks_6_attn_Ga_1, x_blocks_6_attn_Ga_1NumDims] = model.coder.ops.onnxGather(x_blocks_6_attn_Tr_2, this.Vars.x_Constant_output_0, 0, coder.const(x_blocks_6_attn_Tr_2NumDims), this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_6_attn_Gath, x_blocks_6_attn_GathNumDims] = model.coder.ops.onnxGather(x_blocks_6_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, coder.const(x_blocks_6_attn_Tr_2NumDims), this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm1042, x_blocks_6_attn_TranNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1023, coder.const(x_blocks_6_attn_GathNumDims));
            if isempty(perm1042)
                x_blocks_6_attn_Tran = x_blocks_6_attn_Gath;
            else
                x_blocks_6_attn_Tran = permute(model.coder.ops.extractIfDlarray(x_blocks_6_attn_Gath), perm1042);
            end

            % Gather:
            [x_blocks_6_attn_Ga_2, x_blocks_6_attn_Ga_2NumDims] = model.coder.ops.onnxGather(x_blocks_6_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, coder.const(x_blocks_6_attn_Tr_2NumDims), this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_6_attn_Mul_ = x_blocks_6_attn_Ga_2 .* this.Vars.x_blocks_6_attn_Cons;
            x_blocks_6_attn_Mul_NumDims = max(coder.const(x_blocks_6_attn_Ga_2NumDims), this.NumDims.x_blocks_6_attn_Cons);

            % MatMul:
            [x_blocks_6_attn_Ma_1, x_blocks_6_attn_Ma_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_6_attn_Mul_, x_blocks_6_attn_Tran, coder.const(x_blocks_6_attn_Mul_NumDims), coder.const(x_blocks_6_attn_TranNumDims));

            % Softmax:
            [x_blocks_6_attn_Soft, x_blocks_6_attn_SoftNumDims] = model.coder.ops.onnxSoftmax13(x_blocks_6_attn_Ma_1, -1, coder.const(x_blocks_6_attn_Ma_1NumDims));

            % MatMul:
            [x_blocks_6_attn_MatM, x_blocks_6_attn_MatMNumDims] = model.coder.ops.onnxMatMul(x_blocks_6_attn_Soft, x_blocks_6_attn_Ga_1, coder.const(x_blocks_6_attn_SoftNumDims), coder.const(x_blocks_6_attn_Ga_1NumDims));

            % Transpose:
            [perm1043, x_blocks_6_attn_Tr_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1024, coder.const(x_blocks_6_attn_MatMNumDims));
            if isempty(perm1043)
                x_blocks_6_attn_Tr_1 = x_blocks_6_attn_MatM;
            else
                x_blocks_6_attn_Tr_1 = permute(model.coder.ops.extractIfDlarray(x_blocks_6_attn_MatM), perm1043);
            end

            % Reshape:
            [shape1044, x_blocks_6_attn_ReshNumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_6_attn_Tr_1, this.Vars.x_blocks_6_attn_Co_1, coder.const(x_blocks_6_attn_Tr_1NumDims), 0);
            x_blocks_6_attn_Resh = reshape(x_blocks_6_attn_Tr_1, shape1044{:});

            % MatMul:
            [x_blocks_6_attn_pr_1, x_blocks_6_attn_pr_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_6_attn_Resh, this.onnx__MatMul_1332, coder.const(x_blocks_6_attn_ReshNumDims), this.NumDims.onnx__MatMul_1332);

            % Add:
            x_blocks_6_attn_proj = this.Vars.pretrained_blocks_6_ + x_blocks_6_attn_pr_1;
            x_blocks_6_attn_projNumDims = max(this.NumDims.pretrained_blocks_6_, coder.const(x_blocks_6_attn_pr_1NumDims));

            % Mul:
            x_blocks_6_ls1_Mul_o = x_blocks_6_attn_proj .* this.Vars.pretrained_blocks_76;
            x_blocks_6_ls1_Mul_oNumDims = max(coder.const(x_blocks_6_attn_projNumDims), this.NumDims.pretrained_blocks_76);

            % Add:
            x_blocks_6_Add_outpu = x_blocks_5_Add_1_out + x_blocks_6_ls1_Mul_o;
            x_blocks_6_Add_outpuNumDims = max(coder.const(x_blocks_5_Add_1_outNumDims), coder.const(x_blocks_6_ls1_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_6_norm2_Lay, x_blocks_6_norm2_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_6_Add_outpu, this.pretrained_blocks_83, this.pretrained_blocks_82, -1, 1.000000e-06, coder.const(x_blocks_6_Add_outpuNumDims));

            % MatMul:
            [x_blocks_6_mlp_fc1_M, x_blocks_6_mlp_fc1_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_6_norm2_Lay, this.onnx__MatMul_1333, coder.const(x_blocks_6_norm2_LayNumDims), this.NumDims.onnx__MatMul_1333);

            % Add:
            x_blocks_6_mlp_fc1_A = this.Vars.pretrained_blocks_78 + x_blocks_6_mlp_fc1_M;
            x_blocks_6_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_78, coder.const(x_blocks_6_mlp_fc1_MNumDims));

            % Div:
            x_blocks_6_mlp_act_D = x_blocks_6_mlp_fc1_A ./ this.Vars.x_blocks_6_mlp_act_3;
            x_blocks_6_mlp_act_DNumDims = max(coder.const(x_blocks_6_mlp_fc1_ANumDims), this.NumDims.x_blocks_6_mlp_act_3);

            % Erf:
            x_blocks_6_mlp_act_E = erf(x_blocks_6_mlp_act_D);
            x_blocks_6_mlp_act_ENumDims = coder.const(x_blocks_6_mlp_act_DNumDims);

            % Add:
            x_blocks_6_mlp_act_A = x_blocks_6_mlp_act_E + this.Vars.x_blocks_6_mlp_act_C;
            x_blocks_6_mlp_act_ANumDims = max(coder.const(x_blocks_6_mlp_act_ENumDims), this.NumDims.x_blocks_6_mlp_act_C);

            % Mul:
            x_blocks_6_mlp_act_9 = x_blocks_6_mlp_fc1_A .* x_blocks_6_mlp_act_A;
            x_blocks_6_mlp_act_9NumDims = max(coder.const(x_blocks_6_mlp_fc1_ANumDims), coder.const(x_blocks_6_mlp_act_ANumDims));

            % Mul:
            x_blocks_6_mlp_act_M = x_blocks_6_mlp_act_9 .* this.Vars.x_blocks_6_mlp_act_2;
            x_blocks_6_mlp_act_MNumDims = max(coder.const(x_blocks_6_mlp_act_9NumDims), this.NumDims.x_blocks_6_mlp_act_2);

            % MatMul:
            [x_blocks_6_mlp_fc2_M, x_blocks_6_mlp_fc2_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_6_mlp_act_M, this.onnx__MatMul_1334, coder.const(x_blocks_6_mlp_act_MNumDims), this.NumDims.onnx__MatMul_1334);

            % Add:
            x_blocks_6_mlp_fc2_A = this.Vars.pretrained_blocks_79 + x_blocks_6_mlp_fc2_M;
            x_blocks_6_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_79, coder.const(x_blocks_6_mlp_fc2_MNumDims));

            % Mul:
            x_blocks_6_ls2_Mul_o = x_blocks_6_mlp_fc2_A .* this.Vars.pretrained_blocks_77;
            x_blocks_6_ls2_Mul_oNumDims = max(coder.const(x_blocks_6_mlp_fc2_ANumDims), this.NumDims.pretrained_blocks_77);

            % Add:
            x_blocks_6_Add_1_out = x_blocks_6_Add_outpu + x_blocks_6_ls2_Mul_o;
            x_blocks_6_Add_1_outNumDims = max(coder.const(x_blocks_6_Add_outpuNumDims), coder.const(x_blocks_6_ls2_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_7_norm1_Lay, x_blocks_7_norm1_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_6_Add_1_out, this.pretrained_blocks_90, this.pretrained_blocks_89, -1, 1.000000e-06, coder.const(x_blocks_6_Add_1_outNumDims));

            % MatMul:
            [x_blocks_7_attn_qk_1, x_blocks_7_attn_qk_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_7_norm1_Lay, this.onnx__MatMul_1335, coder.const(x_blocks_7_norm1_LayNumDims), this.NumDims.onnx__MatMul_1335);

            % Add:
            x_blocks_7_attn_qkv_ = this.Vars.pretrained_blocks_84 + x_blocks_7_attn_qk_1;
            x_blocks_7_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_84, coder.const(x_blocks_7_attn_qk_1NumDims));

            % Reshape:
            [shape1045, x_blocks_7_attn_Re_1NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_7_attn_qkv_, this.Vars.x_blocks_7_attn_Co_2, coder.const(x_blocks_7_attn_qkv_NumDims), 0);
            x_blocks_7_attn_Re_1 = reshape(x_blocks_7_attn_qkv_, shape1045{:});

            % Transpose:
            [perm1046, x_blocks_7_attn_Tr_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1025, coder.const(x_blocks_7_attn_Re_1NumDims));
            if isempty(perm1046)
                x_blocks_7_attn_Tr_2 = x_blocks_7_attn_Re_1;
            else
                x_blocks_7_attn_Tr_2 = permute(model.coder.ops.extractIfDlarray(x_blocks_7_attn_Re_1), perm1046);
            end

            % Gather:
            [x_blocks_7_attn_Ga_1, x_blocks_7_attn_Ga_1NumDims] = model.coder.ops.onnxGather(x_blocks_7_attn_Tr_2, this.Vars.x_Constant_output_0, 0, coder.const(x_blocks_7_attn_Tr_2NumDims), this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_7_attn_Gath, x_blocks_7_attn_GathNumDims] = model.coder.ops.onnxGather(x_blocks_7_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, coder.const(x_blocks_7_attn_Tr_2NumDims), this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm1047, x_blocks_7_attn_TranNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1026, coder.const(x_blocks_7_attn_GathNumDims));
            if isempty(perm1047)
                x_blocks_7_attn_Tran = x_blocks_7_attn_Gath;
            else
                x_blocks_7_attn_Tran = permute(model.coder.ops.extractIfDlarray(x_blocks_7_attn_Gath), perm1047);
            end

            % Gather:
            [x_blocks_7_attn_Ga_2, x_blocks_7_attn_Ga_2NumDims] = model.coder.ops.onnxGather(x_blocks_7_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, coder.const(x_blocks_7_attn_Tr_2NumDims), this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_7_attn_Mul_ = x_blocks_7_attn_Ga_2 .* this.Vars.x_blocks_7_attn_Cons;
            x_blocks_7_attn_Mul_NumDims = max(coder.const(x_blocks_7_attn_Ga_2NumDims), this.NumDims.x_blocks_7_attn_Cons);

            % MatMul:
            [x_blocks_7_attn_Ma_1, x_blocks_7_attn_Ma_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_7_attn_Mul_, x_blocks_7_attn_Tran, coder.const(x_blocks_7_attn_Mul_NumDims), coder.const(x_blocks_7_attn_TranNumDims));

            % Softmax:
            [x_blocks_7_attn_Soft, x_blocks_7_attn_SoftNumDims] = model.coder.ops.onnxSoftmax13(x_blocks_7_attn_Ma_1, -1, coder.const(x_blocks_7_attn_Ma_1NumDims));

            % MatMul:
            [x_blocks_7_attn_MatM, x_blocks_7_attn_MatMNumDims] = model.coder.ops.onnxMatMul(x_blocks_7_attn_Soft, x_blocks_7_attn_Ga_1, coder.const(x_blocks_7_attn_SoftNumDims), coder.const(x_blocks_7_attn_Ga_1NumDims));

            % Transpose:
            [perm1048, x_blocks_7_attn_Tr_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1027, coder.const(x_blocks_7_attn_MatMNumDims));
            if isempty(perm1048)
                x_blocks_7_attn_Tr_1 = x_blocks_7_attn_MatM;
            else
                x_blocks_7_attn_Tr_1 = permute(model.coder.ops.extractIfDlarray(x_blocks_7_attn_MatM), perm1048);
            end

            % Reshape:
            [shape1049, x_blocks_7_attn_ReshNumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_7_attn_Tr_1, this.Vars.x_blocks_7_attn_Co_1, coder.const(x_blocks_7_attn_Tr_1NumDims), 0);
            x_blocks_7_attn_Resh = reshape(x_blocks_7_attn_Tr_1, shape1049{:});

            % MatMul:
            [x_blocks_7_attn_pr_1, x_blocks_7_attn_pr_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_7_attn_Resh, this.onnx__MatMul_1346, coder.const(x_blocks_7_attn_ReshNumDims), this.NumDims.onnx__MatMul_1346);

            % Add:
            x_blocks_7_attn_proj = this.Vars.pretrained_blocks_7_ + x_blocks_7_attn_pr_1;
            x_blocks_7_attn_projNumDims = max(this.NumDims.pretrained_blocks_7_, coder.const(x_blocks_7_attn_pr_1NumDims));

            % Mul:
            x_blocks_7_ls1_Mul_o = x_blocks_7_attn_proj .* this.Vars.pretrained_blocks_85;
            x_blocks_7_ls1_Mul_oNumDims = max(coder.const(x_blocks_7_attn_projNumDims), this.NumDims.pretrained_blocks_85);

            % Add:
            x_blocks_7_Add_outpu = x_blocks_6_Add_1_out + x_blocks_7_ls1_Mul_o;
            x_blocks_7_Add_outpuNumDims = max(coder.const(x_blocks_6_Add_1_outNumDims), coder.const(x_blocks_7_ls1_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_7_norm2_Lay, x_blocks_7_norm2_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_7_Add_outpu, this.pretrained_blocks_92, this.pretrained_blocks_91, -1, 1.000000e-06, coder.const(x_blocks_7_Add_outpuNumDims));

            % MatMul:
            [x_blocks_7_mlp_fc1_M, x_blocks_7_mlp_fc1_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_7_norm2_Lay, this.onnx__MatMul_1347, coder.const(x_blocks_7_norm2_LayNumDims), this.NumDims.onnx__MatMul_1347);

            % Add:
            x_blocks_7_mlp_fc1_A = this.Vars.pretrained_blocks_87 + x_blocks_7_mlp_fc1_M;
            x_blocks_7_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_87, coder.const(x_blocks_7_mlp_fc1_MNumDims));

            % Div:
            x_blocks_7_mlp_act_D = x_blocks_7_mlp_fc1_A ./ this.Vars.x_blocks_7_mlp_act_3;
            x_blocks_7_mlp_act_DNumDims = max(coder.const(x_blocks_7_mlp_fc1_ANumDims), this.NumDims.x_blocks_7_mlp_act_3);

            % Erf:
            x_blocks_7_mlp_act_E = erf(x_blocks_7_mlp_act_D);
            x_blocks_7_mlp_act_ENumDims = coder.const(x_blocks_7_mlp_act_DNumDims);

            % Add:
            x_blocks_7_mlp_act_A = x_blocks_7_mlp_act_E + this.Vars.x_blocks_7_mlp_act_C;
            x_blocks_7_mlp_act_ANumDims = max(coder.const(x_blocks_7_mlp_act_ENumDims), this.NumDims.x_blocks_7_mlp_act_C);

            % Mul:
            x_blocks_7_mlp_act_9 = x_blocks_7_mlp_fc1_A .* x_blocks_7_mlp_act_A;
            x_blocks_7_mlp_act_9NumDims = max(coder.const(x_blocks_7_mlp_fc1_ANumDims), coder.const(x_blocks_7_mlp_act_ANumDims));

            % Mul:
            x_blocks_7_mlp_act_M = x_blocks_7_mlp_act_9 .* this.Vars.x_blocks_7_mlp_act_2;
            x_blocks_7_mlp_act_MNumDims = max(coder.const(x_blocks_7_mlp_act_9NumDims), this.NumDims.x_blocks_7_mlp_act_2);

            % MatMul:
            [x_blocks_7_mlp_fc2_M, x_blocks_7_mlp_fc2_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_7_mlp_act_M, this.onnx__MatMul_1348, coder.const(x_blocks_7_mlp_act_MNumDims), this.NumDims.onnx__MatMul_1348);

            % Add:
            x_blocks_7_mlp_fc2_A = this.Vars.pretrained_blocks_88 + x_blocks_7_mlp_fc2_M;
            x_blocks_7_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_88, coder.const(x_blocks_7_mlp_fc2_MNumDims));

            % Mul:
            x_blocks_7_ls2_Mul_o = x_blocks_7_mlp_fc2_A .* this.Vars.pretrained_blocks_86;
            x_blocks_7_ls2_Mul_oNumDims = max(coder.const(x_blocks_7_mlp_fc2_ANumDims), this.NumDims.pretrained_blocks_86);

            % Add:
            x_blocks_7_Add_1_out = x_blocks_7_Add_outpu + x_blocks_7_ls2_Mul_o;
            x_blocks_7_Add_1_outNumDims = max(coder.const(x_blocks_7_Add_outpuNumDims), coder.const(x_blocks_7_ls2_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_8_norm1_Lay, x_blocks_8_norm1_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_7_Add_1_out, this.pretrained_blocks_99, this.pretrained_blocks_98, -1, 1.000000e-06, coder.const(x_blocks_7_Add_1_outNumDims));

            % MatMul:
            [x_blocks_8_attn_qk_1, x_blocks_8_attn_qk_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_8_norm1_Lay, this.onnx__MatMul_1349, coder.const(x_blocks_8_norm1_LayNumDims), this.NumDims.onnx__MatMul_1349);

            % Add:
            x_blocks_8_attn_qkv_ = this.Vars.pretrained_blocks_93 + x_blocks_8_attn_qk_1;
            x_blocks_8_attn_qkv_NumDims = max(this.NumDims.pretrained_blocks_93, coder.const(x_blocks_8_attn_qk_1NumDims));

            % Reshape:
            [shape1050, x_blocks_8_attn_Re_1NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_8_attn_qkv_, this.Vars.x_blocks_8_attn_Co_2, coder.const(x_blocks_8_attn_qkv_NumDims), 0);
            x_blocks_8_attn_Re_1 = reshape(x_blocks_8_attn_qkv_, shape1050{:});

            % Transpose:
            [perm1051, x_blocks_8_attn_Tr_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1028, coder.const(x_blocks_8_attn_Re_1NumDims));
            if isempty(perm1051)
                x_blocks_8_attn_Tr_2 = x_blocks_8_attn_Re_1;
            else
                x_blocks_8_attn_Tr_2 = permute(model.coder.ops.extractIfDlarray(x_blocks_8_attn_Re_1), perm1051);
            end

            % Gather:
            [x_blocks_8_attn_Ga_1, x_blocks_8_attn_Ga_1NumDims] = model.coder.ops.onnxGather(x_blocks_8_attn_Tr_2, this.Vars.x_Constant_output_0, 0, coder.const(x_blocks_8_attn_Tr_2NumDims), this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_8_attn_Gath, x_blocks_8_attn_GathNumDims] = model.coder.ops.onnxGather(x_blocks_8_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, coder.const(x_blocks_8_attn_Tr_2NumDims), this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm1052, x_blocks_8_attn_TranNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1029, coder.const(x_blocks_8_attn_GathNumDims));
            if isempty(perm1052)
                x_blocks_8_attn_Tran = x_blocks_8_attn_Gath;
            else
                x_blocks_8_attn_Tran = permute(model.coder.ops.extractIfDlarray(x_blocks_8_attn_Gath), perm1052);
            end

            % Gather:
            [x_blocks_8_attn_Ga_2, x_blocks_8_attn_Ga_2NumDims] = model.coder.ops.onnxGather(x_blocks_8_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, coder.const(x_blocks_8_attn_Tr_2NumDims), this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_8_attn_Mul_ = x_blocks_8_attn_Ga_2 .* this.Vars.x_blocks_8_attn_Cons;
            x_blocks_8_attn_Mul_NumDims = max(coder.const(x_blocks_8_attn_Ga_2NumDims), this.NumDims.x_blocks_8_attn_Cons);

            % MatMul:
            [x_blocks_8_attn_Ma_1, x_blocks_8_attn_Ma_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_8_attn_Mul_, x_blocks_8_attn_Tran, coder.const(x_blocks_8_attn_Mul_NumDims), coder.const(x_blocks_8_attn_TranNumDims));

            % Softmax:
            [x_blocks_8_attn_Soft, x_blocks_8_attn_SoftNumDims] = model.coder.ops.onnxSoftmax13(x_blocks_8_attn_Ma_1, -1, coder.const(x_blocks_8_attn_Ma_1NumDims));

            % MatMul:
            [x_blocks_8_attn_MatM, x_blocks_8_attn_MatMNumDims] = model.coder.ops.onnxMatMul(x_blocks_8_attn_Soft, x_blocks_8_attn_Ga_1, coder.const(x_blocks_8_attn_SoftNumDims), coder.const(x_blocks_8_attn_Ga_1NumDims));

            % Transpose:
            [perm1053, x_blocks_8_attn_Tr_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1030, coder.const(x_blocks_8_attn_MatMNumDims));
            if isempty(perm1053)
                x_blocks_8_attn_Tr_1 = x_blocks_8_attn_MatM;
            else
                x_blocks_8_attn_Tr_1 = permute(model.coder.ops.extractIfDlarray(x_blocks_8_attn_MatM), perm1053);
            end

            % Reshape:
            [shape1054, x_blocks_8_attn_ReshNumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_8_attn_Tr_1, this.Vars.x_blocks_8_attn_Co_1, coder.const(x_blocks_8_attn_Tr_1NumDims), 0);
            x_blocks_8_attn_Resh = reshape(x_blocks_8_attn_Tr_1, shape1054{:});

            % MatMul:
            [x_blocks_8_attn_pr_1, x_blocks_8_attn_pr_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_8_attn_Resh, this.onnx__MatMul_1360, coder.const(x_blocks_8_attn_ReshNumDims), this.NumDims.onnx__MatMul_1360);

            % Add:
            x_blocks_8_attn_proj = this.Vars.pretrained_blocks_8_ + x_blocks_8_attn_pr_1;
            x_blocks_8_attn_projNumDims = max(this.NumDims.pretrained_blocks_8_, coder.const(x_blocks_8_attn_pr_1NumDims));

            % Mul:
            x_blocks_8_ls1_Mul_o = x_blocks_8_attn_proj .* this.Vars.pretrained_blocks_94;
            x_blocks_8_ls1_Mul_oNumDims = max(coder.const(x_blocks_8_attn_projNumDims), this.NumDims.pretrained_blocks_94);

            % Add:
            x_blocks_8_Add_outpu = x_blocks_7_Add_1_out + x_blocks_8_ls1_Mul_o;
            x_blocks_8_Add_outpuNumDims = max(coder.const(x_blocks_7_Add_1_outNumDims), coder.const(x_blocks_8_ls1_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_8_norm2_Lay, x_blocks_8_norm2_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_8_Add_outpu, this.pretrained_block_101, this.pretrained_block_100, -1, 1.000000e-06, coder.const(x_blocks_8_Add_outpuNumDims));

            % MatMul:
            [x_blocks_8_mlp_fc1_M, x_blocks_8_mlp_fc1_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_8_norm2_Lay, this.onnx__MatMul_1361, coder.const(x_blocks_8_norm2_LayNumDims), this.NumDims.onnx__MatMul_1361);

            % Add:
            x_blocks_8_mlp_fc1_A = this.Vars.pretrained_blocks_96 + x_blocks_8_mlp_fc1_M;
            x_blocks_8_mlp_fc1_ANumDims = max(this.NumDims.pretrained_blocks_96, coder.const(x_blocks_8_mlp_fc1_MNumDims));

            % Div:
            x_blocks_8_mlp_act_D = x_blocks_8_mlp_fc1_A ./ this.Vars.x_blocks_8_mlp_act_3;
            x_blocks_8_mlp_act_DNumDims = max(coder.const(x_blocks_8_mlp_fc1_ANumDims), this.NumDims.x_blocks_8_mlp_act_3);

            % Erf:
            x_blocks_8_mlp_act_E = erf(x_blocks_8_mlp_act_D);
            x_blocks_8_mlp_act_ENumDims = coder.const(x_blocks_8_mlp_act_DNumDims);

            % Add:
            x_blocks_8_mlp_act_A = x_blocks_8_mlp_act_E + this.Vars.x_blocks_8_mlp_act_C;
            x_blocks_8_mlp_act_ANumDims = max(coder.const(x_blocks_8_mlp_act_ENumDims), this.NumDims.x_blocks_8_mlp_act_C);

            % Mul:
            x_blocks_8_mlp_act_9 = x_blocks_8_mlp_fc1_A .* x_blocks_8_mlp_act_A;
            x_blocks_8_mlp_act_9NumDims = max(coder.const(x_blocks_8_mlp_fc1_ANumDims), coder.const(x_blocks_8_mlp_act_ANumDims));

            % Mul:
            x_blocks_8_mlp_act_M = x_blocks_8_mlp_act_9 .* this.Vars.x_blocks_8_mlp_act_2;
            x_blocks_8_mlp_act_MNumDims = max(coder.const(x_blocks_8_mlp_act_9NumDims), this.NumDims.x_blocks_8_mlp_act_2);

            % MatMul:
            [x_blocks_8_mlp_fc2_M, x_blocks_8_mlp_fc2_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_8_mlp_act_M, this.onnx__MatMul_1362, coder.const(x_blocks_8_mlp_act_MNumDims), this.NumDims.onnx__MatMul_1362);

            % Add:
            x_blocks_8_mlp_fc2_A = this.Vars.pretrained_blocks_97 + x_blocks_8_mlp_fc2_M;
            x_blocks_8_mlp_fc2_ANumDims = max(this.NumDims.pretrained_blocks_97, coder.const(x_blocks_8_mlp_fc2_MNumDims));

            % Mul:
            x_blocks_8_ls2_Mul_o = x_blocks_8_mlp_fc2_A .* this.Vars.pretrained_blocks_95;
            x_blocks_8_ls2_Mul_oNumDims = max(coder.const(x_blocks_8_mlp_fc2_ANumDims), this.NumDims.pretrained_blocks_95);

            % Add:
            x_blocks_8_Add_1_out = x_blocks_8_Add_outpu + x_blocks_8_ls2_Mul_o;
            x_blocks_8_Add_1_outNumDims = max(coder.const(x_blocks_8_Add_outpuNumDims), coder.const(x_blocks_8_ls2_Mul_oNumDims));

            % LayerNormalization:
            [x_norm_2_LayerNormal, x_norm_2_LayerNormalNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_8_Add_1_out, this.pretrained_norm_weig, this.pretrained_norm_bias, -1, 1.000000e-06, coder.const(x_blocks_8_Add_1_outNumDims));

            % Slice:
            [indices1055, x_Slice_2_output_0NumDims] = model.coder.ops.prepareSliceArgs(x_norm_2_LayerNormal, this.Vars.x_Constant_14_output, this.Vars.x_Constant_15_output, this.Vars.x_Constant_13_output, this.Vars.x_Constant_16_output, coder.const(x_norm_2_LayerNormalNumDims));
            x_Slice_2_output_0 = x_norm_2_LayerNormal(indices1055{:});

            % Transpose:
            [perm1056, x_depth_head_Trans_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1031, coder.const(x_Slice_2_output_0NumDims));
            if isempty(perm1056)
                x_depth_head_Trans_1 = x_Slice_2_output_0;
            else
                x_depth_head_Trans_1 = permute(model.coder.ops.extractIfDlarray(x_Slice_2_output_0), perm1056);
            end

            % Reshape:
            [shape1057, x_depth_head_Resha_1NumDims] = model.coder.ops.prepareReshapeArgs(x_depth_head_Trans_1, this.Vars.x_depth_head_Const_1, coder.const(x_depth_head_Trans_1NumDims), 0);
            x_depth_head_Resha_1 = reshape(x_depth_head_Trans_1, shape1057{:});

            % LayerNormalization:
            [x_blocks_9_norm1_Lay, x_blocks_9_norm1_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_8_Add_1_out, this.pretrained_block_108, this.pretrained_block_107, -1, 1.000000e-06, coder.const(x_blocks_8_Add_1_outNumDims));

            % MatMul:
            [x_blocks_9_attn_qk_1, x_blocks_9_attn_qk_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_9_norm1_Lay, this.onnx__MatMul_1363, coder.const(x_blocks_9_norm1_LayNumDims), this.NumDims.onnx__MatMul_1363);

            % Add:
            x_blocks_9_attn_qkv_ = this.Vars.pretrained_block_102 + x_blocks_9_attn_qk_1;
            x_blocks_9_attn_qkv_NumDims = max(this.NumDims.pretrained_block_102, coder.const(x_blocks_9_attn_qk_1NumDims));

            % Reshape:
            [shape1058, x_blocks_9_attn_Re_1NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_9_attn_qkv_, this.Vars.x_blocks_9_attn_Co_2, coder.const(x_blocks_9_attn_qkv_NumDims), 0);
            x_blocks_9_attn_Re_1 = reshape(x_blocks_9_attn_qkv_, shape1058{:});

            % Transpose:
            [perm1059, x_blocks_9_attn_Tr_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1032, coder.const(x_blocks_9_attn_Re_1NumDims));
            if isempty(perm1059)
                x_blocks_9_attn_Tr_2 = x_blocks_9_attn_Re_1;
            else
                x_blocks_9_attn_Tr_2 = permute(model.coder.ops.extractIfDlarray(x_blocks_9_attn_Re_1), perm1059);
            end

            % Gather:
            [x_blocks_9_attn_Ga_1, x_blocks_9_attn_Ga_1NumDims] = model.coder.ops.onnxGather(x_blocks_9_attn_Tr_2, this.Vars.x_Constant_output_0, 0, coder.const(x_blocks_9_attn_Tr_2NumDims), this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_9_attn_Gath, x_blocks_9_attn_GathNumDims] = model.coder.ops.onnxGather(x_blocks_9_attn_Tr_2, this.Vars.x_patch_embed_proj_C, 0, coder.const(x_blocks_9_attn_Tr_2NumDims), this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm1060, x_blocks_9_attn_TranNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1033, coder.const(x_blocks_9_attn_GathNumDims));
            if isempty(perm1060)
                x_blocks_9_attn_Tran = x_blocks_9_attn_Gath;
            else
                x_blocks_9_attn_Tran = permute(model.coder.ops.extractIfDlarray(x_blocks_9_attn_Gath), perm1060);
            end

            % Gather:
            [x_blocks_9_attn_Ga_2, x_blocks_9_attn_Ga_2NumDims] = model.coder.ops.onnxGather(x_blocks_9_attn_Tr_2, this.Vars.x_Constant_1_output_, 0, coder.const(x_blocks_9_attn_Tr_2NumDims), this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_9_attn_Mul_ = x_blocks_9_attn_Ga_2 .* this.Vars.x_blocks_9_attn_Cons;
            x_blocks_9_attn_Mul_NumDims = max(coder.const(x_blocks_9_attn_Ga_2NumDims), this.NumDims.x_blocks_9_attn_Cons);

            % MatMul:
            [x_blocks_9_attn_Ma_1, x_blocks_9_attn_Ma_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_9_attn_Mul_, x_blocks_9_attn_Tran, coder.const(x_blocks_9_attn_Mul_NumDims), coder.const(x_blocks_9_attn_TranNumDims));

            % Softmax:
            [x_blocks_9_attn_Soft, x_blocks_9_attn_SoftNumDims] = model.coder.ops.onnxSoftmax13(x_blocks_9_attn_Ma_1, -1, coder.const(x_blocks_9_attn_Ma_1NumDims));

            % MatMul:
            [x_blocks_9_attn_MatM, x_blocks_9_attn_MatMNumDims] = model.coder.ops.onnxMatMul(x_blocks_9_attn_Soft, x_blocks_9_attn_Ga_1, coder.const(x_blocks_9_attn_SoftNumDims), coder.const(x_blocks_9_attn_Ga_1NumDims));

            % Transpose:
            [perm1061, x_blocks_9_attn_Tr_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1034, coder.const(x_blocks_9_attn_MatMNumDims));
            if isempty(perm1061)
                x_blocks_9_attn_Tr_1 = x_blocks_9_attn_MatM;
            else
                x_blocks_9_attn_Tr_1 = permute(model.coder.ops.extractIfDlarray(x_blocks_9_attn_MatM), perm1061);
            end

            % Reshape:
            [shape1062, x_blocks_9_attn_ReshNumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_9_attn_Tr_1, this.Vars.x_blocks_9_attn_Co_1, coder.const(x_blocks_9_attn_Tr_1NumDims), 0);
            x_blocks_9_attn_Resh = reshape(x_blocks_9_attn_Tr_1, shape1062{:});

            % MatMul:
            [x_blocks_9_attn_pr_1, x_blocks_9_attn_pr_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_9_attn_Resh, this.onnx__MatMul_1374, coder.const(x_blocks_9_attn_ReshNumDims), this.NumDims.onnx__MatMul_1374);

            % Add:
            x_blocks_9_attn_proj = this.Vars.pretrained_blocks_9_ + x_blocks_9_attn_pr_1;
            x_blocks_9_attn_projNumDims = max(this.NumDims.pretrained_blocks_9_, coder.const(x_blocks_9_attn_pr_1NumDims));

            % Mul:
            x_blocks_9_ls1_Mul_o = x_blocks_9_attn_proj .* this.Vars.pretrained_block_103;
            x_blocks_9_ls1_Mul_oNumDims = max(coder.const(x_blocks_9_attn_projNumDims), this.NumDims.pretrained_block_103);

            % Add:
            x_blocks_9_Add_outpu = x_blocks_8_Add_1_out + x_blocks_9_ls1_Mul_o;
            x_blocks_9_Add_outpuNumDims = max(coder.const(x_blocks_8_Add_1_outNumDims), coder.const(x_blocks_9_ls1_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_9_norm2_Lay, x_blocks_9_norm2_LayNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_9_Add_outpu, this.pretrained_block_110, this.pretrained_block_109, -1, 1.000000e-06, coder.const(x_blocks_9_Add_outpuNumDims));

            % MatMul:
            [x_blocks_9_mlp_fc1_M, x_blocks_9_mlp_fc1_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_9_norm2_Lay, this.onnx__MatMul_1375, coder.const(x_blocks_9_norm2_LayNumDims), this.NumDims.onnx__MatMul_1375);

            % Add:
            x_blocks_9_mlp_fc1_A = this.Vars.pretrained_block_105 + x_blocks_9_mlp_fc1_M;
            x_blocks_9_mlp_fc1_ANumDims = max(this.NumDims.pretrained_block_105, coder.const(x_blocks_9_mlp_fc1_MNumDims));

            % Div:
            x_blocks_9_mlp_act_D = x_blocks_9_mlp_fc1_A ./ this.Vars.x_blocks_9_mlp_act_3;
            x_blocks_9_mlp_act_DNumDims = max(coder.const(x_blocks_9_mlp_fc1_ANumDims), this.NumDims.x_blocks_9_mlp_act_3);

            % Erf:
            x_blocks_9_mlp_act_E = erf(x_blocks_9_mlp_act_D);
            x_blocks_9_mlp_act_ENumDims = coder.const(x_blocks_9_mlp_act_DNumDims);

            % Add:
            x_blocks_9_mlp_act_A = x_blocks_9_mlp_act_E + this.Vars.x_blocks_9_mlp_act_C;
            x_blocks_9_mlp_act_ANumDims = max(coder.const(x_blocks_9_mlp_act_ENumDims), this.NumDims.x_blocks_9_mlp_act_C);

            % Mul:
            x_blocks_9_mlp_act_9 = x_blocks_9_mlp_fc1_A .* x_blocks_9_mlp_act_A;
            x_blocks_9_mlp_act_9NumDims = max(coder.const(x_blocks_9_mlp_fc1_ANumDims), coder.const(x_blocks_9_mlp_act_ANumDims));

            % Mul:
            x_blocks_9_mlp_act_M = x_blocks_9_mlp_act_9 .* this.Vars.x_blocks_9_mlp_act_2;
            x_blocks_9_mlp_act_MNumDims = max(coder.const(x_blocks_9_mlp_act_9NumDims), this.NumDims.x_blocks_9_mlp_act_2);

            % MatMul:
            [x_blocks_9_mlp_fc2_M, x_blocks_9_mlp_fc2_MNumDims] = model.coder.ops.onnxMatMul(x_blocks_9_mlp_act_M, this.onnx__MatMul_1376, coder.const(x_blocks_9_mlp_act_MNumDims), this.NumDims.onnx__MatMul_1376);

            % Add:
            x_blocks_9_mlp_fc2_A = this.Vars.pretrained_block_106 + x_blocks_9_mlp_fc2_M;
            x_blocks_9_mlp_fc2_ANumDims = max(this.NumDims.pretrained_block_106, coder.const(x_blocks_9_mlp_fc2_MNumDims));

            % Mul:
            x_blocks_9_ls2_Mul_o = x_blocks_9_mlp_fc2_A .* this.Vars.pretrained_block_104;
            x_blocks_9_ls2_Mul_oNumDims = max(coder.const(x_blocks_9_mlp_fc2_ANumDims), this.NumDims.pretrained_block_104);

            % Add:
            x_blocks_9_Add_1_out = x_blocks_9_Add_outpu + x_blocks_9_ls2_Mul_o;
            x_blocks_9_Add_1_outNumDims = max(coder.const(x_blocks_9_Add_outpuNumDims), coder.const(x_blocks_9_ls2_Mul_oNumDims));

            % LayerNormalization:
            [x_blocks_10_norm1_La, x_blocks_10_norm1_LaNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_9_Add_1_out, this.pretrained_blocks_18, this.pretrained_blocks_17, -1, 1.000000e-06, coder.const(x_blocks_9_Add_1_outNumDims));

            % MatMul:
            [x_blocks_10_attn_q_1, x_blocks_10_attn_q_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_10_norm1_La, this.onnx__MatMul_1377, coder.const(x_blocks_10_norm1_LaNumDims), this.NumDims.onnx__MatMul_1377);

            % Add:
            x_blocks_10_attn_qkv = this.Vars.pretrained_blocks_12 + x_blocks_10_attn_q_1;
            x_blocks_10_attn_qkvNumDims = max(this.NumDims.pretrained_blocks_12, coder.const(x_blocks_10_attn_q_1NumDims));

            % Reshape:
            [shape1063, x_blocks_10_attn_R_1NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_10_attn_qkv, this.Vars.x_blocks_10_attn_C_2, coder.const(x_blocks_10_attn_qkvNumDims), 0);
            x_blocks_10_attn_R_1 = reshape(x_blocks_10_attn_qkv, shape1063{:});

            % Transpose:
            [perm1064, x_blocks_10_attn_T_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1035, coder.const(x_blocks_10_attn_R_1NumDims));
            if isempty(perm1064)
                x_blocks_10_attn_T_2 = x_blocks_10_attn_R_1;
            else
                x_blocks_10_attn_T_2 = permute(model.coder.ops.extractIfDlarray(x_blocks_10_attn_R_1), perm1064);
            end

            % Gather:
            [x_blocks_10_attn_G_1, x_blocks_10_attn_G_1NumDims] = model.coder.ops.onnxGather(x_blocks_10_attn_T_2, this.Vars.x_Constant_output_0, 0, coder.const(x_blocks_10_attn_T_2NumDims), this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_10_attn_Gat, x_blocks_10_attn_GatNumDims] = model.coder.ops.onnxGather(x_blocks_10_attn_T_2, this.Vars.x_patch_embed_proj_C, 0, coder.const(x_blocks_10_attn_T_2NumDims), this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm1065, x_blocks_10_attn_TraNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1036, coder.const(x_blocks_10_attn_GatNumDims));
            if isempty(perm1065)
                x_blocks_10_attn_Tra = x_blocks_10_attn_Gat;
            else
                x_blocks_10_attn_Tra = permute(model.coder.ops.extractIfDlarray(x_blocks_10_attn_Gat), perm1065);
            end

            % Gather:
            [x_blocks_10_attn_G_2, x_blocks_10_attn_G_2NumDims] = model.coder.ops.onnxGather(x_blocks_10_attn_T_2, this.Vars.x_Constant_1_output_, 0, coder.const(x_blocks_10_attn_T_2NumDims), this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_10_attn_Mul = x_blocks_10_attn_G_2 .* this.Vars.x_blocks_10_attn_Con;
            x_blocks_10_attn_MulNumDims = max(coder.const(x_blocks_10_attn_G_2NumDims), this.NumDims.x_blocks_10_attn_Con);

            % MatMul:
            [x_blocks_10_attn_M_1, x_blocks_10_attn_M_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_10_attn_Mul, x_blocks_10_attn_Tra, coder.const(x_blocks_10_attn_MulNumDims), coder.const(x_blocks_10_attn_TraNumDims));

            % Softmax:
            [x_blocks_10_attn_Sof, x_blocks_10_attn_SofNumDims] = model.coder.ops.onnxSoftmax13(x_blocks_10_attn_M_1, -1, coder.const(x_blocks_10_attn_M_1NumDims));

            % MatMul:
            [x_blocks_10_attn_Mat, x_blocks_10_attn_MatNumDims] = model.coder.ops.onnxMatMul(x_blocks_10_attn_Sof, x_blocks_10_attn_G_1, coder.const(x_blocks_10_attn_SofNumDims), coder.const(x_blocks_10_attn_G_1NumDims));

            % Transpose:
            [perm1066, x_blocks_10_attn_T_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1037, coder.const(x_blocks_10_attn_MatNumDims));
            if isempty(perm1066)
                x_blocks_10_attn_T_1 = x_blocks_10_attn_Mat;
            else
                x_blocks_10_attn_T_1 = permute(model.coder.ops.extractIfDlarray(x_blocks_10_attn_Mat), perm1066);
            end

            % Reshape:
            [shape1067, x_blocks_10_attn_ResNumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_10_attn_T_1, this.Vars.x_blocks_10_attn_C_1, coder.const(x_blocks_10_attn_T_1NumDims), 0);
            x_blocks_10_attn_Res = reshape(x_blocks_10_attn_T_1, shape1067{:});

            % MatMul:
            [x_blocks_10_attn_p_1, x_blocks_10_attn_p_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_10_attn_Res, this.onnx__MatMul_1388, coder.const(x_blocks_10_attn_ResNumDims), this.NumDims.onnx__MatMul_1388);

            % Add:
            x_blocks_10_attn_pro = this.Vars.pretrained_blocks_10 + x_blocks_10_attn_p_1;
            x_blocks_10_attn_proNumDims = max(this.NumDims.pretrained_blocks_10, coder.const(x_blocks_10_attn_p_1NumDims));

            % Mul:
            x_blocks_10_ls1_Mul_ = x_blocks_10_attn_pro .* this.Vars.pretrained_blocks_13;
            x_blocks_10_ls1_Mul_NumDims = max(coder.const(x_blocks_10_attn_proNumDims), this.NumDims.pretrained_blocks_13);

            % Add:
            x_blocks_10_Add_outp = x_blocks_9_Add_1_out + x_blocks_10_ls1_Mul_;
            x_blocks_10_Add_outpNumDims = max(coder.const(x_blocks_9_Add_1_outNumDims), coder.const(x_blocks_10_ls1_Mul_NumDims));

            % LayerNormalization:
            [x_blocks_10_norm2_La, x_blocks_10_norm2_LaNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_10_Add_outp, this.pretrained_blocks_20, this.pretrained_blocks_19, -1, 1.000000e-06, coder.const(x_blocks_10_Add_outpNumDims));

            % MatMul:
            [x_blocks_10_mlp_fc_1, x_blocks_10_mlp_fc_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_10_norm2_La, this.onnx__MatMul_1389, coder.const(x_blocks_10_norm2_LaNumDims), this.NumDims.onnx__MatMul_1389);

            % Add:
            x_blocks_10_mlp_fc1_ = this.Vars.pretrained_blocks_15 + x_blocks_10_mlp_fc_1;
            x_blocks_10_mlp_fc1_NumDims = max(this.NumDims.pretrained_blocks_15, coder.const(x_blocks_10_mlp_fc_1NumDims));

            % Div:
            x_blocks_10_mlp_ac_4 = x_blocks_10_mlp_fc1_ ./ this.Vars.x_blocks_10_mlp_ac_3;
            x_blocks_10_mlp_ac_4NumDims = max(coder.const(x_blocks_10_mlp_fc1_NumDims), this.NumDims.x_blocks_10_mlp_ac_3);

            % Erf:
            x_blocks_10_mlp_ac_5 = erf(x_blocks_10_mlp_ac_4);
            x_blocks_10_mlp_ac_5NumDims = coder.const(x_blocks_10_mlp_ac_4NumDims);

            % Add:
            x_blocks_10_mlp_act_ = x_blocks_10_mlp_ac_5 + this.Vars.x_blocks_10_mlp_ac_1;
            x_blocks_10_mlp_act_NumDims = max(coder.const(x_blocks_10_mlp_ac_5NumDims), this.NumDims.x_blocks_10_mlp_ac_1);

            % Mul:
            x_blocks_10_mlp_ac_7 = x_blocks_10_mlp_fc1_ .* x_blocks_10_mlp_act_;
            x_blocks_10_mlp_ac_7NumDims = max(coder.const(x_blocks_10_mlp_fc1_NumDims), coder.const(x_blocks_10_mlp_act_NumDims));

            % Mul:
            x_blocks_10_mlp_ac_6 = x_blocks_10_mlp_ac_7 .* this.Vars.x_blocks_10_mlp_ac_2;
            x_blocks_10_mlp_ac_6NumDims = max(coder.const(x_blocks_10_mlp_ac_7NumDims), this.NumDims.x_blocks_10_mlp_ac_2);

            % MatMul:
            [x_blocks_10_mlp_fc_4, x_blocks_10_mlp_fc_4NumDims] = model.coder.ops.onnxMatMul(x_blocks_10_mlp_ac_6, this.onnx__MatMul_1390, coder.const(x_blocks_10_mlp_ac_6NumDims), this.NumDims.onnx__MatMul_1390);

            % Add:
            x_blocks_10_mlp_fc2_ = this.Vars.pretrained_blocks_16 + x_blocks_10_mlp_fc_4;
            x_blocks_10_mlp_fc2_NumDims = max(this.NumDims.pretrained_blocks_16, coder.const(x_blocks_10_mlp_fc_4NumDims));

            % Mul:
            x_blocks_10_ls2_Mul_ = x_blocks_10_mlp_fc2_ .* this.Vars.pretrained_blocks_14;
            x_blocks_10_ls2_Mul_NumDims = max(coder.const(x_blocks_10_mlp_fc2_NumDims), this.NumDims.pretrained_blocks_14);

            % Add:
            x_blocks_10_Add_1_ou = x_blocks_10_Add_outp + x_blocks_10_ls2_Mul_;
            x_blocks_10_Add_1_ouNumDims = max(coder.const(x_blocks_10_Add_outpNumDims), coder.const(x_blocks_10_ls2_Mul_NumDims));

            % LayerNormalization:
            [x_blocks_11_norm1_La, x_blocks_11_norm1_LaNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_10_Add_1_ou, this.pretrained_blocks_27, this.pretrained_blocks_26, -1, 1.000000e-06, coder.const(x_blocks_10_Add_1_ouNumDims));

            % MatMul:
            [x_blocks_11_attn_q_1, x_blocks_11_attn_q_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_11_norm1_La, this.onnx__MatMul_1391, coder.const(x_blocks_11_norm1_LaNumDims), this.NumDims.onnx__MatMul_1391);

            % Add:
            x_blocks_11_attn_qkv = this.Vars.pretrained_blocks_21 + x_blocks_11_attn_q_1;
            x_blocks_11_attn_qkvNumDims = max(this.NumDims.pretrained_blocks_21, coder.const(x_blocks_11_attn_q_1NumDims));

            % Reshape:
            [shape1068, x_blocks_11_attn_R_1NumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_11_attn_qkv, this.Vars.x_blocks_11_attn_C_2, coder.const(x_blocks_11_attn_qkvNumDims), 0);
            x_blocks_11_attn_R_1 = reshape(x_blocks_11_attn_qkv, shape1068{:});

            % Transpose:
            [perm1069, x_blocks_11_attn_T_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1038, coder.const(x_blocks_11_attn_R_1NumDims));
            if isempty(perm1069)
                x_blocks_11_attn_T_2 = x_blocks_11_attn_R_1;
            else
                x_blocks_11_attn_T_2 = permute(model.coder.ops.extractIfDlarray(x_blocks_11_attn_R_1), perm1069);
            end

            % Gather:
            [x_blocks_11_attn_G_1, x_blocks_11_attn_G_1NumDims] = model.coder.ops.onnxGather(x_blocks_11_attn_T_2, this.Vars.x_Constant_output_0, 0, coder.const(x_blocks_11_attn_T_2NumDims), this.NumDims.x_Constant_output_0);

            % Gather:
            [x_blocks_11_attn_Gat, x_blocks_11_attn_GatNumDims] = model.coder.ops.onnxGather(x_blocks_11_attn_T_2, this.Vars.x_patch_embed_proj_C, 0, coder.const(x_blocks_11_attn_T_2NumDims), this.NumDims.x_patch_embed_proj_C);

            % Transpose:
            [perm1070, x_blocks_11_attn_TraNumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1039, coder.const(x_blocks_11_attn_GatNumDims));
            if isempty(perm1070)
                x_blocks_11_attn_Tra = x_blocks_11_attn_Gat;
            else
                x_blocks_11_attn_Tra = permute(model.coder.ops.extractIfDlarray(x_blocks_11_attn_Gat), perm1070);
            end

            % Gather:
            [x_blocks_11_attn_G_2, x_blocks_11_attn_G_2NumDims] = model.coder.ops.onnxGather(x_blocks_11_attn_T_2, this.Vars.x_Constant_1_output_, 0, coder.const(x_blocks_11_attn_T_2NumDims), this.NumDims.x_Constant_1_output_);

            % Mul:
            x_blocks_11_attn_Mul = x_blocks_11_attn_G_2 .* this.Vars.x_blocks_11_attn_Con;
            x_blocks_11_attn_MulNumDims = max(coder.const(x_blocks_11_attn_G_2NumDims), this.NumDims.x_blocks_11_attn_Con);

            % MatMul:
            [x_blocks_11_attn_M_1, x_blocks_11_attn_M_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_11_attn_Mul, x_blocks_11_attn_Tra, coder.const(x_blocks_11_attn_MulNumDims), coder.const(x_blocks_11_attn_TraNumDims));

            % Softmax:
            [x_blocks_11_attn_Sof, x_blocks_11_attn_SofNumDims] = model.coder.ops.onnxSoftmax13(x_blocks_11_attn_M_1, -1, coder.const(x_blocks_11_attn_M_1NumDims));

            % MatMul:
            [x_blocks_11_attn_Mat, x_blocks_11_attn_MatNumDims] = model.coder.ops.onnxMatMul(x_blocks_11_attn_Sof, x_blocks_11_attn_G_1, coder.const(x_blocks_11_attn_SofNumDims), coder.const(x_blocks_11_attn_G_1NumDims));

            % Transpose:
            [perm1071, x_blocks_11_attn_T_1NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1040, coder.const(x_blocks_11_attn_MatNumDims));
            if isempty(perm1071)
                x_blocks_11_attn_T_1 = x_blocks_11_attn_Mat;
            else
                x_blocks_11_attn_T_1 = permute(model.coder.ops.extractIfDlarray(x_blocks_11_attn_Mat), perm1071);
            end

            % Reshape:
            [shape1072, x_blocks_11_attn_ResNumDims] = model.coder.ops.prepareReshapeArgs(x_blocks_11_attn_T_1, this.Vars.x_blocks_11_attn_C_1, coder.const(x_blocks_11_attn_T_1NumDims), 0);
            x_blocks_11_attn_Res = reshape(x_blocks_11_attn_T_1, shape1072{:});

            % MatMul:
            [x_blocks_11_attn_p_1, x_blocks_11_attn_p_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_11_attn_Res, this.onnx__MatMul_1402, coder.const(x_blocks_11_attn_ResNumDims), this.NumDims.onnx__MatMul_1402);

            % Add:
            x_blocks_11_attn_pro = this.Vars.pretrained_blocks_11 + x_blocks_11_attn_p_1;
            x_blocks_11_attn_proNumDims = max(this.NumDims.pretrained_blocks_11, coder.const(x_blocks_11_attn_p_1NumDims));

            % Mul:
            x_blocks_11_ls1_Mul_ = x_blocks_11_attn_pro .* this.Vars.pretrained_blocks_22;
            x_blocks_11_ls1_Mul_NumDims = max(coder.const(x_blocks_11_attn_proNumDims), this.NumDims.pretrained_blocks_22);

            % Add:
            x_blocks_11_Add_outp = x_blocks_10_Add_1_ou + x_blocks_11_ls1_Mul_;
            x_blocks_11_Add_outpNumDims = max(coder.const(x_blocks_10_Add_1_ouNumDims), coder.const(x_blocks_11_ls1_Mul_NumDims));

            % LayerNormalization:
            [x_blocks_11_norm2_La, x_blocks_11_norm2_LaNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_11_Add_outp, this.pretrained_blocks_29, this.pretrained_blocks_28, -1, 1.000000e-06, coder.const(x_blocks_11_Add_outpNumDims));

            % MatMul:
            [x_blocks_11_mlp_fc_1, x_blocks_11_mlp_fc_1NumDims] = model.coder.ops.onnxMatMul(x_blocks_11_norm2_La, this.onnx__MatMul_1403, coder.const(x_blocks_11_norm2_LaNumDims), this.NumDims.onnx__MatMul_1403);

            % Add:
            x_blocks_11_mlp_fc1_ = this.Vars.pretrained_blocks_24 + x_blocks_11_mlp_fc_1;
            x_blocks_11_mlp_fc1_NumDims = max(this.NumDims.pretrained_blocks_24, coder.const(x_blocks_11_mlp_fc_1NumDims));

            % Div:
            x_blocks_11_mlp_ac_4 = x_blocks_11_mlp_fc1_ ./ this.Vars.x_blocks_11_mlp_ac_3;
            x_blocks_11_mlp_ac_4NumDims = max(coder.const(x_blocks_11_mlp_fc1_NumDims), this.NumDims.x_blocks_11_mlp_ac_3);

            % Erf:
            x_blocks_11_mlp_ac_5 = erf(x_blocks_11_mlp_ac_4);
            x_blocks_11_mlp_ac_5NumDims = coder.const(x_blocks_11_mlp_ac_4NumDims);

            % Add:
            x_blocks_11_mlp_act_ = x_blocks_11_mlp_ac_5 + this.Vars.x_blocks_11_mlp_ac_1;
            x_blocks_11_mlp_act_NumDims = max(coder.const(x_blocks_11_mlp_ac_5NumDims), this.NumDims.x_blocks_11_mlp_ac_1);

            % Mul:
            x_blocks_11_mlp_ac_7 = x_blocks_11_mlp_fc1_ .* x_blocks_11_mlp_act_;
            x_blocks_11_mlp_ac_7NumDims = max(coder.const(x_blocks_11_mlp_fc1_NumDims), coder.const(x_blocks_11_mlp_act_NumDims));

            % Mul:
            x_blocks_11_mlp_ac_6 = x_blocks_11_mlp_ac_7 .* this.Vars.x_blocks_11_mlp_ac_2;
            x_blocks_11_mlp_ac_6NumDims = max(coder.const(x_blocks_11_mlp_ac_7NumDims), this.NumDims.x_blocks_11_mlp_ac_2);

            % MatMul:
            [x_blocks_11_mlp_fc_4, x_blocks_11_mlp_fc_4NumDims] = model.coder.ops.onnxMatMul(x_blocks_11_mlp_ac_6, this.onnx__MatMul_1404, coder.const(x_blocks_11_mlp_ac_6NumDims), this.NumDims.onnx__MatMul_1404);

            % Add:
            x_blocks_11_mlp_fc2_ = this.Vars.pretrained_blocks_25 + x_blocks_11_mlp_fc_4;
            x_blocks_11_mlp_fc2_NumDims = max(this.NumDims.pretrained_blocks_25, coder.const(x_blocks_11_mlp_fc_4NumDims));

            % Mul:
            x_blocks_11_ls2_Mul_ = x_blocks_11_mlp_fc2_ .* this.Vars.pretrained_blocks_23;
            x_blocks_11_ls2_Mul_NumDims = max(coder.const(x_blocks_11_mlp_fc2_NumDims), this.NumDims.pretrained_blocks_23);

            % Add:
            x_blocks_11_Add_1_ou = x_blocks_11_Add_outp + x_blocks_11_ls2_Mul_;
            x_blocks_11_Add_1_ouNumDims = max(coder.const(x_blocks_11_Add_outpNumDims), coder.const(x_blocks_11_ls2_Mul_NumDims));

            % LayerNormalization:
            [x_norm_3_LayerNormal, x_norm_3_LayerNormalNumDims] = model.coder.ops.onnxLayerNormalization(x_blocks_11_Add_1_ou, this.pretrained_norm_weig, this.pretrained_norm_bias, -1, 1.000000e-06, coder.const(x_blocks_11_Add_1_ouNumDims));

            % Slice:
            [indices1073, x_Slice_3_output_0NumDims] = model.coder.ops.prepareSliceArgs(x_norm_3_LayerNormal, this.Vars.x_Constant_18_output, this.Vars.x_Constant_19_output, this.Vars.x_Constant_17_output, this.Vars.x_Constant_20_output, coder.const(x_norm_3_LayerNormalNumDims));
            x_Slice_3_output_0 = x_norm_3_LayerNormal(indices1073{:});

            % Transpose:
            [perm1074, x_depth_head_Trans_2NumDims] = model.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1041, coder.const(x_Slice_3_output_0NumDims));
            if isempty(perm1074)
                x_depth_head_Trans_2 = x_Slice_3_output_0;
            else
                x_depth_head_Trans_2 = permute(model.coder.ops.extractIfDlarray(x_Slice_3_output_0), perm1074);
            end

            % Reshape:
            [shape1075, x_depth_head_Resha_2NumDims] = model.coder.ops.prepareReshapeArgs(x_depth_head_Trans_2, this.Vars.x_depth_head_Const_2, coder.const(x_depth_head_Trans_2NumDims), 0);
            x_depth_head_Resha_2 = reshape(x_depth_head_Trans_2, shape1075{:});

            % Set graph output arguments
            x_depth_head_Resha_3NumDims1042 = coder.const(x_depth_head_Resha_3NumDims);
            x_depth_head_ReshapeNumDims1043 = coder.const(x_depth_head_ReshapeNumDims);
            x_depth_head_Resha_1NumDims1044 = coder.const(x_depth_head_Resha_1NumDims);
            x_depth_head_Resha_2NumDims1045 = coder.const(x_depth_head_Resha_2NumDims);

        end

    end

end