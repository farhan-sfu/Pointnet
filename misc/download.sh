SCRIPT=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SCRIPTPATH=`dirname $SCRIPT`

cd $SCRIPTPATH/..
wget https://shapenet.cs.stanford.edu/ericyi/shapenetcore_partanno_segmentation_benchmark_v0.zip --no-check-certificate
unzip shapenetcore_partanno_segmentation_benchmark_v0.zip
rm shapenetcore_partanno_segmentation_benchmark_v0.zip

if [ ! -d "shapenet_data" ]
then
  mkdir shapenet_data
  mv shapenetcore_partanno_segmentation_benchmark_v0 shapenet_data
fi
cd -
