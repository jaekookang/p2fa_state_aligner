# Run state FA on LibriSpeech examples
#
# files: ./examples/libri
# run: . ./test_libri.sh

data_dir=examples/libri/
wav_id=$(ls $data_dir | grep .*.wav)

for f in $wav_id; do
	f_id=$(basename $f .wav)
	echo python align.py $data_dir$f $data_dir$f_id.txt $data_dir$f_id.TextGrid
	python align.py $data_dir$f $data_dir$f_id.txt $data_dir$f_id.TextGrid
done