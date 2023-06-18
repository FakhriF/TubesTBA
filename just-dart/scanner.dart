// Fungsi untuk mendapatkan token dari teks input
// Mengembalikan sebuah list yang berisi token dan indeks huruf berikutnya
List<String> getToken(String text, int j) {
  int k = text.length;
  String word = "";

  // Abaikan spasi dan karakter pindah baris
  while (text[j] == ' ' || text[j] == '\r' || text[j] == '\n') {
    j++;
  }

  // Ambil satu kata atau token
  while (j < k && text[j] != ' ' && text[j] != '\r' && text[j] != '\n') {
    if (text[j] == '>') {
      if (word != '') {
        // Kembalikan list yang berisi word dan j sebagai string
        return [word, j.toString()];
      } else {
        j++;
        if (text[j] == '=') {
          j++;
          // Kembalikan list yang berisi '>=' dan j sebagai string
          return [">=", j.toString()];
        } else {
          // Kembalikan list yang berisi '>' dan j sebagai string
          return [">", j.toString()];
        }
      }
    } else if (text[j] == '<') {
      if (word != '') {
        // Kembalikan list yang berisi word dan j sebagai string
        return [word, j.toString()];
      } else {
        j++;
        if (text[j] == '=') {
          j++;
          // Kembalikan list yang berisi '<=' dan j sebagai string
          return ["<=", j.toString()];
        } else {
          // Kembalikan list yang berisi '<' dan j sebagai string
          return ["<", j.toString()];
        }
      }
    } else if (text[j] == '=') {
      if (word != '') {
        // Kembalikan list yang berisi word dan j sebagai string
        return [word, j.toString()];
      } else {
        j++;
        // Kembalikan list yang berisi '=' dan j sebagai string
        return ["=", j.toString()];
      }
    } else if (text[j] == '+') {
      if (word != '') {
        // Kembalikan list yang berisi word dan j sebagai string
        return [word, j.toString()];
      } else {
        j++;
        // Kembalikan list yang berisi '+' dan j sebagai string
        return ["+", j.toString()];
      }
    } else if (text[j] == '-') {
      if (word != '') {
        // Kembalikan list yang berisi word dan j sebagai string
        return [word, j.toString()];
      } else {
        j++;
        // Kembalikan list yang berisi '-' dan j sebagai string
        return ["-", j.toString()];
      }
    }
    word += text[j];
    j++;
  }
  // Kembalikan list yang berisi word dan j sebagai string
  return [word, j.toString()];
}





// // Fungsi untuk mendapatkan token dari teks input
// String getToken(String text, int j) {
//   int k = text.length;
//   String word = "";

//   // Abaikan spasi dan karakter pindah baris
//   while (text[j] == ' ' || text[j] == '\r' || text[j] == '\n') {
//     j++;
//   }

//   // Ambil satu kata atau token
//   while (j < k && text[j] != ' ' && text[j] != '\r' && text[j] != '\n') {
//     if (text[j] == '>') {
//       if (word != '') {
//         return word;
//       } else {
//         j++;
//         if (text[j] == '=') {
//           j++;
//           return ">=";
//         } else {
//           return ">";
//         }
//       }
//     } else if (text[j] == '<') {
//       if (word != '') {
//         return word;
//       } else {
//         j++;
//         if (text[j] == '=') {
//           j++;
//           return "<=";
//         } else {
//           return "<";
//         }
//       }
//     } else if (text[j] == '=') {
//       if (word != '') {
//         return word;
//       } else {
//         j++;
//         return "=";
//       }
//     } else if (text[j] == '+') {
//       if (word != '') {
//         return word;
//       } else {
//         j++;
//         return "+";
//       }
//     } else if (text[j] == '-') {
//       if (word != '') {
//         return word;
//       } else {
//         j++;
//         return "-";
//       }
//     }
//     word += text[j];
//     j++;
//   }
//   return word;
// }
