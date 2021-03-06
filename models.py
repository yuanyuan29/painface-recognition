from tensorflow.keras.layers import MaxPooling2D, GlobalAveragePooling2D, LSTM, Dense, Flatten, Conv2D
from tensorflow.keras.layers import Dropout, BatchNormalization, Input, Activation
from tensorflow.keras.layers import ConvLSTM2D
from tensorflow.keras.layers import TimeDistributed
from tensorflow.keras.applications import InceptionV3
from tensorflow.keras.models import Sequential, Model
import tensorflow as tf


class MyModel:
    def __init__(self, config_dict):
        """
        A class to build the preferred model.
        :param config_dict: dict
        """
        self.name = config_dict['model']
        self.config_dict = config_dict
        self.input_shape = config_dict['input_height'], config_dict['input_width']
        self.nb_lstm_units = config_dict['nb_lstm_units']
        self.nb_labels = config_dict['nb_labels']
        self.dropout_2 = config_dict['dropout_2']
        self.dropout_1 = config_dict['dropout_1']
        self.seq_length = config_dict['seq_length']
        self.lr = config_dict['lr']
        self.optimizer = config_dict['optimizer']
        self.batch_size = config_dict['batch_size']
        self.nb_lstm_layers = config_dict['nb_lstm_layers']
        
        if not self.config_dict['save_features']:
            if self.config_dict['video_level_mode']:
                self.video_features_model = self.config_dict['video_features_model']
                config_dict['model'] = self.video_features_model
                self.name = 'only_train_video_feats'
                if self.video_features_model == 'video_level_network':
                    self.model = self.video_level_network()
                if self.video_features_model == 'video_level_preds_attn_network':
                    self.model = self.video_level_preds_attn_network()
                if self.video_features_model == 'video_level_mil_feats':
                    self.model = self.video_level_mil_feats()
                if self.video_features_model == 'video_level_mil_feats_preds':
                    self.model = self.video_level_mil_feats_preds()
                if self.video_features_model == 'video_fc_model':
                    self.model = self.video_fc_model()
                if self.video_features_model == 'video_conv_seq_model':
                    self.model = self.video_conv_seq_model()

        if self.name == 'conv2d_timedist_lstm':
            print("Conv2d-lstm model timedist")
            self.model = self.conv2d_timedist_lstm()

        if self.name == 'conv2d_timedist_lstm_stateful':
            print("Stateful timedist conv2d-lstm model")
            self.model = self.conv2d_timedist_lstm_stateful()

        if self.name == 'conv2d_lstm':
            print("Conv2d-lstm model")
            self.model = self.conv2d_lstm(channels=3)

        if self.name == 'conv3d_lstm':
            print("Conv3d-lstm model")
            self.model = self.conv3d_lstm(channels=3)

        if self.name == 'conv2d_lstm_5d':
            print("Conv2d-lstm model 5D")
            self.model = self.conv2d_lstm_5d(channels=3)

        if self.name == 'conv2d_lstm_stateful':
            print("Conv2d-lstm model stateful")
            self.model = self.conv2d_lstm_stateful()

        if self.name == 'conv2d_lstm_informed':
            print("Conv2d-lstm model informed")
            self.model = self.conv2d_lstm_informed()

        if self.name == 'conv2d_informed':
            print("Conv2d informed model")
            self.model = self.conv2d_informed()

        if self.name == 'inception_lstm_5d_input':
            print('inception_lstm_5d_input')
            self.model = self.inception_lstm_5d_input()

        if self.name == 'inception_4d_input':
            print('inception_4d_input with imagenet weights')
            self.model, base_model = self.inception_4d_input(w='imagenet')
            # first: train only the top layers (which were randomly initialized)
            # i.e. freeze all convolutional InceptionV3 layers
            for layer in base_model.layers:
                layer.trainable = False
            self.base_model = base_model

        if self.name == 'inception_4d_input_from_scratch':
            print('inception_4d_input trained from scratch with random init')
            self.model, base_model = self.inception_4d_input(w=None)

        if self.name == '2stream':
            print('2stream')
            self.model = self.two_stream()

        if self.name == '2stream_5d_add':
            print('2stream 5D')
            if self.config_dict['inference_only']:
                self.model = self.two_stream_5d(fusion='add', train=False)
            else:
                self.model = self.two_stream_5d(fusion='add')

        if self.name == '2stream_5d_mult':
            print('2stream 5D')
            self.model = self.two_stream_5d(fusion='mult')

        if self.name == 'simonyan_2stream':
            print('Simonyan 2-stream with average fusion')
            self.model = self.simonyan_two_stream('average')

        if self.name == 'rodriguez_2stream':
            print('Rodriguez 2-stream with average fusion')
            self.model = self.two_stream_rodriguez('add')

        if self.name == '2stream_pretrained':
            print('2stream_pretrained')
            self.model = self.two_stream_pretrained()

        if self.name == 'convolutional_LSTM':
            print('Convolutional LSTM (not fully connected)')
            self.model = self.convolutional_LSTM(channels=3)

        if self.name == 'clstm_functional':
            print('C-LSTM, functional')
            self.model = self.clstm()

        if self.name == 'rodriguez':
            print('Rodriguez Deep pain model')
            self.model = self.rodriguez()

        if self.name == 'vgg16':
            print('VGG-16 trained from scratch, with 2 FC layers on top.')
            self.model = self.vgg16(w=None)

        if self.name == 'vgg16_GAP_dense':
            print('VGG-16 trained from scratch, then global avg pooling, then one FC layer.')
            self.model = self.vgg16_GAP_dense(w=None)

    def two_stream(self):
        # Functional API
        rgb_model, _ = self.inception_4d_input(w=None, top_layer=False)
        image_input = Input(shape=(self.input_shape[0], self.input_shape[1], 3))
        encoded_image = rgb_model(image_input)

        of_model, _ = self.inception_4d_input(w=None, top_layer=False)
        of_input = Input(shape=(self.input_shape[0], self.input_shape[1], 3))
        encoded_of = of_model(of_input)
        
        merged = tf.keras.layers.add([encoded_image, encoded_of])

        merged = Dropout(.2)(merged)
        dense = Dense(self.nb_labels)(merged)

        if self.nb_labels == 2:
            output = Activation('sigmoid')(dense)
        else:
            output = Activation('softmax')(dense)

        two_stream_model = Model(inputs=[image_input, of_input], outputs=[output])
        return two_stream_model

    def two_stream_pretrained(self):
        # Functional API
        rgb_model, _ = self.inception_4d_input(w='imagenet', top_layer=False)
        image_input = Input(shape=(self.input_shape[0], self.input_shape[1], 3))
        encoded_image = rgb_model(image_input)

        of_model, _ = self.inception_4d_input(w='imagenet', top_layer=False)
        of_input = Input(shape=(self.input_shape[0], self.input_shape[1], 3))
        encoded_of = of_model(of_input)
        
        merged = tf.keras.layers.add([encoded_image, encoded_of])

        merged = Dropout(.2)(merged)
        dense = Dense(self.nb_labels)(merged)

        if self.nb_labels == 2:
            output = Activation('sigmoid')(dense)
        else:
            output = Activation('softmax')(dense)

        two_stream_model = Model(inputs=[image_input, of_input], outputs=[output])
        return two_stream_model

    def rodriguez(self, top_layer=True):
        from tensorflow.keras.applications.vgg16 import VGG16
        image_input = Input(shape=(self.seq_length,
                                   self.input_shape[0],
                                   self.input_shape[1], 3))
        base_model = TimeDistributed(VGG16(weights='imagenet',
                                           include_top=False,  
                                           input_shape=(self.input_shape[0],
                                                        self.input_shape[1],
                                                        3)))(image_input)
        flatten = TimeDistributed(Flatten())(base_model)
        dense = Dense(self.nb_dense_units)(flatten)
        lstm_layer = LSTM(self.nb_lstm_units,
                          return_sequences=True)(dense)
        if top_layer:
            dense = Dense(self.nb_labels)(lstm_layer)
            if self.nb_labels == 2:
                output = Activation('sigmoid')(dense)
            else:
                output = Activation('softmax')(dense)
        else:
            output = lstm_layer
        model = Model(inputs=[image_input], outputs=[output])
        return model

    def vgg16(self, w):
        from tensorflow.keras.applications.vgg16 import VGG16
        image_input = Input(shape=(self.input_shape[0],
                                   self.input_shape[1], 3))
        base_model = VGG16(weights=w,
                           include_top=False,  
                           input_shape=(self.input_shape[0],
                                        self.input_shape[1],
                                        3))(image_input)
        flatten = Flatten()(base_model)
        dense_1 = Dense(4096)(flatten)                 # According to the paper, the two 
        dense_2 = Dense(self.nb_dense_units)(dense_1)  # FC-layers should have 4096 units each.
        if self.nb_labels == 2:
            dense_3 = Dense(self.nb_labels)(dense_2)
            output = Activation('sigmoid')(dense_3)
        model = Model(inputs=[image_input], outputs=[output])
        return model

    def vgg16_GAP_dense(self, w):
        from tensorflow.keras.applications.vgg16 import VGG16
        image_input = Input(shape=(self.input_shape[0],
                                   self.input_shape[1], 3))
        base_model = VGG16(weights=w,
                           include_top=False,  
                           input_shape=(self.input_shape[0],
                                        self.input_shape[1],
                                        3))(image_input)
        x = GlobalAveragePooling2D()(base_model)
        dense_1 = Dense(self.nb_dense_units, activation='relu')(x)
        if self.nb_labels == 2:
            dense_2 = Dense(self.nb_labels)(dense_1)
            output = Activation('sigmoid')(dense_2)
        model = Model(inputs=[image_input], outputs=[output])
        return model

    def two_stream_5d(self, fusion, train=True):

        rgb_model = self.convolutional_LSTM(channels=3, top_layer=False)
        # rgb_model = self.clstm(channels=3, top_layer=False, bn=True)
        input_array = Input(shape=(None, self.config_dict['seq_length'],
                            self.input_shape[0], self.input_shape[1], 3))
        encoded_image = rgb_model(input_array[0, :])

        of_model = self.convolutional_LSTM(channels=3, top_layer=False)
        # of_model = self.clstm(channels=3, top_layer=False, bn=True)
        encoded_of = of_model(input_array[1, :])

        if fusion == 'add':
            merged = tf.keras.layers.add([encoded_image, encoded_of])
        if fusion == 'mult':
            merged = tf.keras.layers.multiply([encoded_image, encoded_of])
        if fusion == 'concat':
            merged = tf.keras.layers.concatenate([encoded_image, encoded_of], axis=-1)

        merged_flat = Flatten()(merged)

        if train:
            merged_flat = Dropout(self.dropout_1)(merged_flat)
        dense = Dense(self.nb_labels)(merged_flat)

        if self.nb_labels == 2:
            # output = Activation('sigmoid')(dense)
            output = Activation('softmax')(dense)
        else:
            output = Activation('softmax')(dense)

        if self.config_dict['return_last_clstm']:
            outputs = [output, merged]
        else:
            outputs = [output]

        two_stream_model = Model(inputs=[input_array], outputs=outputs)

        return two_stream_model

    def two_stream_rodriguez(self, fusion):
        rgb_model = self.rodriguez(top_layer=False)
        image_input = Input(shape=(None, self.input_shape[0], self.input_shape[1], 3))
        encoded_image = rgb_model(image_input)

        of_model = self.rodriguez(top_layer=False)
        of_input = Input(shape=(None, self.input_shape[0], self.input_shape[1], 3))
        encoded_of = of_model(of_input)

        if fusion == 'add':
            merged = tf.keras.layers.add([encoded_image, encoded_of])
        if fusion == 'mult':
            merged = tf.keras.layers.multiply([encoded_image, encoded_of])
        if fusion == 'concat':
            merged = tf.keras.layers.concatenate([encoded_image, encoded_of], axis=-1)

        merged = Dropout(self.dropout_1)(merged)
        dense = Dense(self.nb_labels)(merged)

        if self.nb_labels == 2:
            output = Activation('sigmoid')(dense)
        else:
            output = Activation('softmax')(dense)

        two_stream_model = Model(inputs=[image_input, of_input], outputs=[output])

        return two_stream_model

    def simonyan_spatial_stream(self):
        model = Sequential()
        model.add(Conv2D(filters=96, kernel_size=(7,7), strides=(2,2), activation='relu',
                  input_shape=(self.input_shape[0], self.input_shape[1], 3),
                  batch_input_shape=(self.batch_size,
                                     self.input_shape[0],
                                     self.input_shape[1],
                                     3)))
        model.add(BatchNormalization())
        model.add(MaxPooling2D(pool_size=(3,3), strides=(2,2)))
        model.add(Conv2D(filters=256, kernel_size=(5,5), strides=(2,2), activation='relu'))
        model.add(BatchNormalization())
        # model.add(MaxPooling2D(pool_size=(3,3), strides=(2,2)))
        model.add(Conv2D(filters=512, kernel_size=(3,3), strides=(1,1), activation='relu',
                  input_shape=(self.input_shape[0], self.input_shape[1], 3)))
        model.add(Conv2D(filters=512, kernel_size=(3,3), strides=(1,1), activation='relu',
                  input_shape=(self.input_shape[0], self.input_shape[1], 3)))
        model.add(Conv2D(filters=512, kernel_size=(3,3), strides=(1,1), activation='relu',
                  input_shape=(self.input_shape[0], self.input_shape[1], 3)))
        model.add(MaxPooling2D(pool_size=(3,3), strides=(2,2)))
        model.add(Flatten())
        model.add(Dense(4096))
        model.add(Dense(2048))
        model.add(Dense(self.nb_labels))
        if self.nb_labels == 2:
            print("2 labels, using sigmoid activation instead of softmax.")
            model.add(Activation('sigmoid'))
        else:
            model.add(Activation('softmax'))
        print(model.summary())
        return model

    def simonyan_temporal_stream(self):
        model = Sequential()
        model.add(Conv2D(filters=96, kernel_size=(7,7), strides=(2,2), data_format='channels_first', activation='relu',
                  input_shape=(2*self.seq_length, self.input_shape[0], self.input_shape[1]),
                  batch_input_shape=(self.batch_size, 2*self.seq_length,
                                     self.input_shape[0], self.input_shape[1])))
        model.add(BatchNormalization())
        model.add(MaxPooling2D(pool_size=(3,3), strides=(2,2)))
        model.add(Conv2D(filters=256, kernel_size=(5,5), strides=(2,2), activation='relu',
                  input_shape=(self.input_shape[0], self.input_shape[1], 3), data_format='channels_first'))
        # model.add(MaxPooling2D(pool_size=(3,3), strides=(2,2)))
        model.add(Conv2D(filters=512, kernel_size=(3,3), strides=(1,1), activation='relu',
                  input_shape=(self.input_shape[0], self.input_shape[1], 3), data_format='channels_first'))
        model.add(Conv2D(filters=512, kernel_size=(3,3), strides=(1,1), activation='relu',
                  input_shape=(self.input_shape[0], self.input_shape[1], 3), data_format='channels_first'))
        model.add(Conv2D(filters=512, kernel_size=(3,3), strides=(1,1), activation='relu',
                  input_shape=(self.input_shape[0], self.input_shape[1], 3), data_format='channels_first'))
        model.add(MaxPooling2D(pool_size=(3,3), strides=(2,2)))
        model.add(Flatten())
        model.add(Dense(4096))
        model.add(Dense(2048))
        model.add(Dense(self.nb_labels))
        if self.nb_labels == 2:
            print("2 labels, using sigmoid activation instead of softmax.")
            model.add(Activation('sigmoid'))
        else:
            model.add(Activation('softmax'))
        print(model.summary())
        return model

    def simonyan_two_stream(self, fusion):
        
        rgb_model = self.simonyan_spatial_stream()
        image_input = Input(shape=(self.input_shape[0], self.input_shape[1], 3))
        rgb_class_scores = rgb_model(image_input)

        of_model = self.simonyan_temporal_stream()
        of_input = Input(shape=(2*self.seq_length, self.input_shape[0], self.input_shape[1]))
        flow_class_scores = of_model(of_input)

        if fusion == 'average':
            output = tf.keras.layers.average([rgb_class_scores, flow_class_scores])
        if fusion == 'svm':
            print('SVM implementation TODO.')

        two_stream_model = Model(inputs=[image_input, of_input], outputs=[output])

        return two_stream_model

    def inception_4d_input(self, w, top_layer=True):
        image_input = Input(shape=(self.input_shape[0], self.input_shape[1], 3))
        base_model = InceptionV3(weights=w, include_top=False)

        x = base_model.output
        x = GlobalAveragePooling2D()(x)
        x = Dense(512, activation='relu')(x)
        if top_layer:
            dense = Dense(self.nb_labels)(x)
            if self.nb_labels == 2:
                predictions = Activation('sigmoid')(dense)
            else:
                predictions = Activation('softmax')(dense)
        else:
            predictions = x
        model = Model(inputs=base_model.input, outputs=predictions)
        return model, base_model

    def inception_lstm_5d_input(self, top_layer=True):
        model = Sequential()
        model.add(TimeDistributed(InceptionV3(include_top=False,
                                              input_shape=(self.input_shape[0],
                                                          self.input_shape[1],
                                                          3)),
                                  input_shape=(self.seq_length,
                                               self.input_shape[0],
                                               self.input_shape[1],
                                               3)))
        model.add(TimeDistributed(Flatten()))
        if self.nb_lstm_layers == 1:
            model.add((LSTM(self.nb_lstm_units,
                            stateful=False,
                            dropout=self.dropout_2,
                            input_shape=(None, self.seq_length, None),
                            return_sequences=True,
                            implementation=2)))
        model.add(Dropout(self.dropout_2))
        if top_layer:
            model.add(Dense(self.nb_labels))
            if self.nb_labels == 2:
                print("2 labels, using sigmoid activation instead of softmax.")
                model.add(Activation('sigmoid'))
            else:
                model.add(Activation('softmax'))
        return model

    def convolutional_LSTM(self, channels=3, top_layer=True):
        model = Sequential()
        if self.nb_lstm_layers >= 1:
            model.add(ConvLSTM2D(filters=self.nb_lstm_units,
                                 kernel_size=(self.config_dict['kernel_size'], self.config_dict['kernel_size']),
                                 input_shape=(self.config_dict['seq_length'], self.input_shape[0], self.input_shape[1], channels),
                                 padding='same', return_sequences=True))
            model.add(TimeDistributed(MaxPooling2D()))
            model.add(BatchNormalization())
        
        if self.nb_lstm_layers >= 2:
            model.add(ConvLSTM2D(filters=self.nb_lstm_units, kernel_size=(self.config_dict['kernel_size'], self.config_dict['kernel_size']),
                                 padding='same', return_sequences=True))
            model.add(TimeDistributed(MaxPooling2D()))
            model.add(BatchNormalization())

        if self.nb_lstm_layers >= 3:
            model.add(ConvLSTM2D(filters=self.nb_lstm_units, kernel_size=(self.config_dict['kernel_size'], self.config_dict['kernel_size']),
                                 padding='same', return_sequences=True))
            model.add(TimeDistributed(MaxPooling2D()))
            model.add(BatchNormalization())
        
        if self.nb_lstm_layers >= 4:
            model.add(ConvLSTM2D(filters=self.nb_lstm_units, kernel_size=(self.config_dict['kernel_size'], self.config_dict['kernel_size']),
                                 padding='same', return_sequences=True))
            model.add(TimeDistributed(MaxPooling2D()))
            model.add(BatchNormalization())

        if self.nb_lstm_layers >= 5:
            model.add(ConvLSTM2D(filters=self.nb_lstm_units, kernel_size=(self.config_dict['kernel_size'], self.config_dict['kernel_size']),
                                 padding='same', return_sequences=True))
            model.add(BatchNormalization())

        if top_layer:
            model.add(Flatten())
            model.add(Dense(self.nb_labels))
            if self.nb_labels == 2:
                model.add(Activation('sigmoid'))
            else:
                model.add(Activation('softmax'))

        return model

    def clstm_block(self, input_tensor, nb_hidden, ks1, ks2, pooling,
                    batch_normalization, return_sequences):
        """
        x: input tensor
        nb_hidden: int
        ks: int
        pooling: str 'max'|'avg'
        batch_normalization: bool
        return_sequences: bool
        """
        # Kernel regularizer
        if self.config_dict['kernel_regularizer'] is None:
            reg = None
        else:
            reg = tf.keras.regularizers.l2(self.config_dict['kernel_regularizer'])
        # ConvLSTM2D layer
        clstm_output = tf.keras.layers.ConvLSTM2D(
            filters=nb_hidden,
            kernel_size=(ks1, ks2),
            padding=self.config_dict['padding_clstm'],
            strides=self.config_dict['strides_clstm'],
            kernel_regularizer=reg,
            dropout=self.config_dict['dropout_clstm'],
            return_sequences=return_sequences)(input_tensor)
        if return_sequences:
            # Maxpooling layer per time slice
            if pooling == 'max':
                x = tf.keras.layers.TimeDistributed(
                    tf.keras.layers.MaxPooling2D())(
                    inputs=clstm_output)
            if pooling == 'avg':
                x = tf.keras.layers.TimeDistributed(
                    tf.keras.layers.AveragePooling2D())(
                    inputs=clstm_output)
        else:
            if pooling == 'max':
                x = tf.keras.layers.MaxPooling2D()(inputs=clstm_output)
            if pooling == 'avg':
                x = tf.keras.layers.AveragePooling2D()(inputs=clstm_output)
        print(x)
        # Normalize according to batch statistics
        if batch_normalization:
            x = tf.keras.layers.BatchNormalization()(x)
            print(x)
        return x, clstm_output

    def clstm(self, channels=3, top_layer=True, bn=True):
        """x: 5D tensor, sequence of images
           bn: bool, whether to batch normalize
           return: x, the transformed input sequence."""

        input_layer = Input(shape=(
            self.config_dict['seq_length'],
            self.input_shape[0], self.input_shape[1], channels))
        layers = self.config_dict['nb_lstm_layers'] * [self.config_dict['nb_lstm_units']]
        rs = self.config_dict['return_sequences']
        nb_clstm_layers = len(layers)

        print(input)
        x = input_layer
        for l in range(nb_clstm_layers):
            name_scope = 'block' + str(l + 1)
            with tf.name_scope(name_scope):
                x, clstm_output = self.clstm_block(
                    x, nb_hidden=layers[l],
                    ks1=self.config_dict['kernel_size'],
                    ks2=self.config_dict['kernel_size'],
                    pooling=self.config_dict['pooling_method'],
                    batch_normalization=bn,
                    return_sequences=rs[l])
                print('x: ', x)
                print('clstm_output: ', clstm_output)

        if top_layer:
            with tf.name_scope('fully_con'):
                if self.config_dict['only_last_element_for_fc'] == 'yes':
                    # Only pass on the last element of the sequence to FC.
                    # return_seq is True just to save it in the graph for gradcam.
                    x = tf.keras.layers.Flatten()(x[:, -1, :, :, :])
                else:
                    x = tf.keras.layers.Flatten()(x)
                print(x)
                x = tf.keras.layers.Dense(units=self.config_dict['nb_labels'])(x)
                print(x)

        if self.config_dict['return_last_clstm']:
            model = Model(inputs=[input_layer], outputs=[x, clstm_output])
        else:
            model = Model(inputs=[input_layer], outputs=[x])

        return model

    def video_level_network(self):
        input_features = Input(shape=(None, self.config_dict['feature_dim']))
        input_preds = Input(shape=(None, 2))
        gru = tf.keras.layers.GRU(
            self.config_dict['nb_units_1'], return_sequences=True)
        gru_2 = tf.keras.layers.GRU(
            self.config_dict['nb_labels'], return_sequences=False)
        x = gru(input_features)
        x = gru_2(x)
        x = tf.keras.layers.Flatten()(x)
        x = tf.keras.layers.Dense(units=self.config_dict['nb_labels'])(x)
        x = Activation('softmax')(x)

        model = Model(inputs=[input_features, input_preds], outputs=[x])
        model.summary()

        return model

    def video_fc_model(self):
        input_features = Input(shape=(self.config_dict['video_pad_length'], self.config_dict['feature_dim']))
        input_preds = Input(shape=(self.config_dict['video_pad_length'], 2))
        # x_preds = tf.keras.layers.Flatten()(input_preds)
        x_feats = tf.keras.layers.Flatten()(input_features)
        # x = tf.keras.layers.concatenate([x_preds, x_feats], axis=1)
        # x = tf.keras.layers.GlobalAveragePooling1D()(input_features)

        x = tf.keras.layers.Dense(units=self.config_dict['nb_units_1'])(x_feats)
        x = tf.keras.layers.Dense(units=self.config_dict['nb_labels'])(x)
        x = Activation('softmax')(x)

        model = Model(inputs=[input_features, input_preds], outputs=[x])
        model.summary()

        return model


    def video_conv_seq_model(self):
        # input_features = Input(shape=(self.config_dict['video_pad_length'], self.config_dict['feature_dim']))
        # input_preds = Input(shape=(self.config_dict['video_pad_length'], 2))
        input_features = Input(shape=(None, self.config_dict['feature_dim']))
        input_preds = Input(shape=(None, 2))

        enc1_feats = tf.keras.layers.Conv1D(filters=self.config_dict['nb_units_1'],
                                            kernel_size=self.config_dict['kernel_size'],
                                            padding='same',
                                            activation='relu')
        enc2_feats = tf.keras.layers.Conv1D(filters=self.config_dict['nb_labels'],
                                            kernel_size=self.config_dict['kernel_size'],
                                            padding='same',
                                            activation='relu')
        enc3_rnn = tf.keras.layers.GRU(self.config_dict['nb_labels'], return_sequences=True)
        # enc2_feats = tf.keras.layers.Conv1D(self.config_dict['nb_labels'])
        x_feats = enc1_feats(input_features)
        x_feats = tf.keras.layers.BatchNormalization()(x_feats)
        x_feats = Dropout(self.config_dict['dropout_2'])(x_feats)
        x_feats = enc2_feats(x_feats)
        # x_feats = tf.keras.layers.Activation('relu')(x_feats)
        # x_feats = tf.keras.layers.multiply([x_feats, input_preds])
        # x_feats = enc3_rnn(x_feats)
        # x_feats = enc2_feats(x_feats)
        # x_feats = tf.keras.layers.Flatten()(x_feats)
        # x_feats = tf.keras.layers.Flatten()(input_features)
        # x = tf.keras.layers.concatenate([x_preds, x_feats], axis=1)
        # x = tf.keras.layers.GlobalAveragePooling1D()(input_features)

        # x = tf.keras.layers.Dense(units=self.config_dict['nb_units_1'])(x_feats)
        # x = tf.keras.layers.Dense(units=self.config_dict['nb_labels'])(x_feats)
        # x = Activation('softmax')(x)

        model = Model(inputs=[input_features, input_preds], outputs=[x_feats])
        model.summary()

        return model

    def video_level_mil_feats(self):

        input_features = Input(shape=(None, self.config_dict['feature_dim']))
        input_preds = Input(shape=(None, 2))
        # input_features = Input(shape=(self.config_dict['video_pad_length'], self.config_dict['feature_dim']))
        # input_preds = Input(shape=(self.config_dict['video_pad_length'], 2))

        feature_enc1 = tf.keras.layers.GRU(
            self.config_dict['nb_units_1'], return_sequences=True)
        feature_enc2 = tf.keras.layers.GRU(
            self.config_dict['nb_labels'], return_sequences=True)

        x_feats = feature_enc1(input_features)
        x_feats = feature_enc2(x_feats)
        preds_seq_from_feats = Activation('softmax')(x_feats)
        # preds_seq_from_feats = x_feats

        model = Model(inputs=[input_features, input_preds], outputs=[preds_seq_from_feats])
        model.summary()

        return model

    def video_level_mil_feats_preds(self):

        input_features = Input(shape=(self.config_dict['video_pad_length'], self.config_dict['feature_dim']))
        input_preds = Input(shape=(self.config_dict['video_pad_length'], 2))
        # Preds module
        x_preds = tf.keras.layers.Flatten()(input_preds)
        x_preds = tf.keras.layers.Dense(units=self.config_dict['nb_units_1'])(x_preds)
        x_preds = tf.keras.layers.Dense(units=self.config_dict['nb_labels'])(x_preds)
        # preds_one_from_preds = Activation('softmax')(x_preds)
        preds_one_from_preds = x_preds

        # Features module
        feature_enc1 = tf.keras.layers.GRU(
            self.config_dict['nb_units_1'], return_sequences=True)
        feature_enc2 = tf.keras.layers.GRU(
            self.config_dict['nb_labels'], return_sequences=True)

        x_feats = feature_enc1(input_features)
        x_feats = feature_enc2(x_feats)
        # preds_seq_from_feats = Activation('softmax')(x_feats)
        preds_seq_from_feats = x_feats

        model = Model(inputs=[input_features, input_preds], outputs=[preds_seq_from_feats, preds_one_from_preds])
        model.summary()

        return model

    def video_level_preds_attn_network(self):

        # input_features = Input(shape=(None, self.config_dict['feature_dim']))
        # input_preds = Input(shape=(None, 2))
        input_features = Input(shape=(self.config_dict['video_pad_length'], self.config_dict['feature_dim']))
        input_preds = Input(shape=(self.config_dict['video_pad_length'], 2))

        feature_enc1 = tf.keras.layers.GRU(
            self.config_dict['nb_units_1'], return_sequences=True)
        # feature_enc11 = tf.keras.layers.GRU(
        #     self.config_dict['nb_units_2'], return_sequences=True)
        feature_enc2 = tf.keras.layers.GRU(
            self.config_dict['nb_labels'], return_sequences=True)

        x = feature_enc1(input_features)
        x = tf.keras.layers.BatchNormalization()(x)
        # x = feature_enc11(x)
        # x = tf.keras.layers.BatchNormalization()(x)
        x = feature_enc2(x)
        # feature_enc2 = tf.keras.layers.GRU(
        #     self.config_dict['nb_labels'], return_sequences=True)
        # preds_enc_1 = tf.keras.layers.GRU(
        #     self.config_dict['nb_units_1'], return_sequences=True)
        # preds_enc_2 = tf.keras.layers.GRU(
        #     self.config_dict['nb_labels'], return_sequences=True)
        # preds = preds_enc_1(input_preds)
        # preds = preds_enc_2(input_preds)
        # x = tf.keras.layers.multiply([x, preds])
        x = tf.keras.layers.BatchNormalization()(x)
        # x = tf.keras.layers.GlobalMaxPooling1D()(x)
        # x = tf.keras.layers.GlobalAveragePooling1D()(x)
        # x = tf.keras.layers.Dense(units=self.config_dict['nb_labels'])(x)
        x = Activation('softmax')(x)

        model = Model(inputs=[input_features, input_preds], outputs=[x])
        model.summary()

        return model
