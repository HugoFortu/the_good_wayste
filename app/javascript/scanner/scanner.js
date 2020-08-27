import Quagga from 'quagga'
const quaggaScanner = () => {
  const scanDiv = document.querySelector('#barcode-scanner');
  if (scanDiv && navigator.mediaDevices && typeof navigator.mediaDevices.getUserMedia === 'function') {
    console.log('init')
    Quagga.init({
      inputStream : {
        name : "Live",
        type : "LiveStream",
        target: scanDiv,  // Or '#yourElement' (optional)
        constraints: {
          width: 640,
          height: 2000,
        },
      },
      decoder : {
        readers : ["ean_reader"],
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
      fetch('http://localhost:3000/scan/barcode', {
        headers: {"Content-Type": "application/json" },
        method: 'POST',
        body: JSON.stringify({val_barcode: barcode})
      })
      .then(response => response.json())
      .then((data) => {
        console.log(data);
      });
    });
  }
};
export { quaggaScanner }
