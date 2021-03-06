mkdir citeseer
for num in $(seq 0 99)
do
	python train_grand.py --lam 0.7 --tem 0.3 --order 2 --sample 2 --dataset citeseer --input_droprate 0.0 --hidden_droprate 0.2 --hidden 32 --lr 0.01 --patience 200 --seed $num --dropnode_rate 0.5  --cuda_device 4 > citeseer/"$num".txt
done

