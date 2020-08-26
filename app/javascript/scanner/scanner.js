import Quagga from 'quagga'
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
    Quagga.onDetected(function(result) {
      const barcode = result.codeResult.code;
      Quagga.stop();
    });
  }
};
export { quaggaScanner }
