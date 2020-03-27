const charSpan = document.getElementById('char-count');
const textArea = document.querySelector('textarea');

const charCount = () => {
  if (textArea) {
    textArea.addEventListener('keyup', (event) => {
      if (charSpan) {
        charSpan.innerText = 255 - textArea.value.length;
      }
    });
  }
};

export { charCount }
