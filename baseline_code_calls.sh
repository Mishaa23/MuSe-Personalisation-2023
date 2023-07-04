## Valence

# 1st step:
python3 main.py --task personalisation --feature resnet50-ECG-v2 --emo_dim valence --model_dim 64 --rnn_n_layers 2 --lr 0.005 --win_len 200 --hop_len 100 --rnn_dropout 0.5 --rnn_bi --use_gpu

# 2nd step:
python3 personalisation.py --model_id RNN_2023-06-09-17-31_[resnet50-ECG-v2]_[valence]_[64_2_True_64]_[0.005_256] --checkpoint_seed 101 --emo_dim valence --lr 0.005 --early_stopping_patience 10 --epochs 10 --win_len 20 --hop_len 10 --result_csv resnet50_ECG_results_final.csv --keep_checkpoints --use_gpu


## Arousal

# 1st step:
python3 main.py --task personalisation --feature resnet50-ECG-v2 --emo_dim physio-arousal --model_dim 32 --rnn_n_layers 1 --lr 0.005 --win_len 100 --hop_len 50 --rnn_dropout 0.0 --rnn_bi --use_gpu

# 2nd step:
python3 personalisation.py --model_id RNN_2023-06-10-00-57_[resnet50-ECG-v2]_[physio-arousal]_[32_1_True_64]_[0.005_256] --checkpoint_seed 105 --emo_dim physio-arousal --lr 0.005 --early_stopping_patience 10 --epochs 20 --win_len 20 --hop_len 10 --result_csv resnet50_ECG_results_final.csv --keep_checkpoints --use_gpu