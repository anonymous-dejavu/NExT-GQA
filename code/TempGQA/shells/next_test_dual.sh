#! /bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 <dejavu-mode>"
	exit 1
fi

python main_dual.py --checkpoint_dir=nextgqa \
	--dataset=nextgqa \
	--mc=5 \
	--feat_type='CLIPL' \
	--test='test' \
	--qmax_words=30 \
	--amax_words=38 \
	--max_feats=32 \
	--batch_size=64 \
	--batch_size_val=64 \
	--num_thread_reader=4 \
	--mlm_prob=0 \
	--embd_dim=768 \
	--ff_dim=768 \
	--dropout=0.3 \
	--lan="RoBERTa" \
	--baseline="NG+" \
	--n_layers=1 \
	--prop_num=1 \
	--vote=0 \
	--sigma=9 \
	--save_dir='../../../data/gmodels/NG+/TempCLIP/' \
	--pretrain_path='../../../data/gmodels/NG+/TempCLIP/best_model.pth' \
	--gamma=1.0 \
	--dejavu-mode $1
