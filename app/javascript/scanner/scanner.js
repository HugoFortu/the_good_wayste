import Quagga from 'quagga'

const orderByOccurrence = (arr) => {
  var counts = {};
  arr.forEach(function(value){
      if(!counts[value]) {
          counts[value] = 0;
      }
      counts[value]++;
  });

  return Object.keys(counts).sort(function(curKey,nextKey) {
      return counts[curKey] < counts[nextKey];
  });
}


const quaggaScanner = () => {
  const scanDiv = document.querySelector('#barcode-scanner');
  if (scanDiv && navigator.mediaDevices && typeof navigator.mediaDevices.getUserMedia === 'function') {
    console.log('init')
    Quagga.init({
      inputStream : {
        name : "Live",
        type : "LiveStream",
        target: scanDiv  // Or '#yourElement' (optional)
      },
      decoder : {
        readers : ["code_128_reader", "ean_reader", "ean_8_reader", "code_39_reader", "code_39_vin_reader", "codabar_reader", "upc_reader", "upc_e_reader", "i2of5_reader", "2of5_reader","code_93_reader"],
        debug: {
          drawBoundingBox: true,
          drawScanline: true,
          showPattern: true
        }
      }
    }, function(err) {
        if (err) {
          console.log(err);
          return
        }
        console.log("Initialization finished. Ready to start");
        Quagga.start();
    });
    var last_result = [];
    Quagga.onDetected(function(result) {
      const last_code = result.codeResult.code;
      last_result.push(last_code);
      console.log(last_code);
      if (last_result.length > 35) {
        barcode = orderByOccurrence(last_result)[0];
        last_result = [];
        console.log(barcode);
        Quagga.stop();
        window.locaton.href = `/scan/barcode?val_barcode=${barcode}`;
      }

      // fetch('http://localhost:3000/scan/barcode', {
      //   headers: {"Content-Type": "application/json" },
      //   method: 'POST',
      //   body: JSON.stringify({val_barcode: barcode})
      // })
      // .then(response => response.json())
      // .then((data) => {
      //   console.log(data);
      // });
    });
  }
};
export { quaggaScanner }
export { orderByOccurrence }
