config_dict = {
'train_data_path' : 'data/jpg_128_128_2fps/',
'test_data_path' : 'data/lps/jpg_128_128_2fps/',
'train_dataset' : 'pf',
'test_dataset' : 'lps',
'model' : 'convolutional_LSTM',
'input_width' : 128,
'input_height' : 128,
'nb_labels' : 2,
'nb_lstm_units' : 32,
'nb_conv_filters' : 16,
'kernel_size' : 5,
'dropout_1' : 0.25,
'dropout_2' : 0.5,
'nb_epochs' : 100,
'early_stopping' : 15,
'optimizer' : 'adadelta',
'lr' : 0.001,
'round_to_batch' : 1,
'train_horses' : '[5,1,2,3]',
'val_horses' : '[4]',
'test_horses' : '[0]',
'test_run' : 0,
'seq_length' : 10,
'seq_stride' : 10,
'nb_workers' : 1,
'batch_size' : 16,
'nb_input_dims' : 5,
'val_fraction' : 0,
'data_type' : 'rgb',
'nb_lstm_layers' : 4,
'aug_flip' : 0,
'aug_crop' : 0,
'aug_light' : 0 }
