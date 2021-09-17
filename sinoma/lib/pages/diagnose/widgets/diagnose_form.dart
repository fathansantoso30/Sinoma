import 'package:flutter/material.dart';
import 'package:sinoma/themes/const.dart';
import 'package:survey_kit/survey_kit.dart';

class DiagnoseForm extends StatefulWidget {
  @override
  _DiagnoseFormState createState() => _DiagnoseFormState();
}

class _DiagnoseFormState extends State<DiagnoseForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: whiteColor,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: double.infinity,
              width: 600,
              child: SurveyKit(
                task: getTask(),
                onResult: (SurveyResult result) {
                  print(result.finishReason);
                },
                themeData: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.fromSwatch(
                    primarySwatch: Colors.lightBlue,
                  ).copyWith(
                    onPrimary: Colors.white,
                  ),
                  primaryColor: blueColor,
                  backgroundColor: Colors.white,
                  appBarTheme: const AppBarTheme(
                    color: Colors.white,
                    iconTheme: IconThemeData(
                      color: Colors.lightBlue,
                    ),
                    textTheme: TextTheme(
                      button: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                  iconTheme: const IconThemeData(
                    color: Colors.lightBlue,
                  ),
                  outlinedButtonTheme: OutlinedButtonThemeData(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(150.0, 60.0),
                      ),
                      side: MaterialStateProperty.resolveWith(
                        (Set<MaterialState> state) {
                          if (state.contains(MaterialState.disabled)) {
                            return BorderSide(
                              color: greyColor,
                            );
                          }
                          return BorderSide(
                            color: blueColor,
                          );
                        },
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      textStyle: MaterialStateProperty.resolveWith(
                        (Set<MaterialState> state) {
                          if (state.contains(MaterialState.disabled)) {
                            return Theme.of(context).textTheme.button?.copyWith(
                                  color: greyColor,
                                );
                          }
                          return Theme.of(context).textTheme.button?.copyWith(
                                color: blueColor,
                              );
                        },
                      ),
                    ),
                  ),
                  textButtonTheme: TextButtonThemeData(
                    style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                        Theme.of(context).textTheme.button?.copyWith(
                              color: blueColor,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void resultCall(SurveyPresenter result) {}

  Task getTask() {
    var task = NavigableTask(id: TaskIdentifier(), steps: [
      InstructionStep(
        id: StepIdentifier(id: 'START'),
        title: 'Selamat datang di\nSurvei Kesehatan\nSinoma',
        text: 'Siapkan diri anda untuk pertanyaan seputar kesehatan anda!',
        buttonText: 'Mulai Sekarang',
      ),
      QuestionStep(
          id: StepIdentifier(id: '1'),
          title: 'Risiko dan Faktor',
          text: 'Pilih sesuai dengan kondisi anda',
          answerFormat: MultipleChoiceAnswerFormat(textChoices: [
            TextChoice(text: 'Merokok', value: 'Merokok'),
            TextChoice(text: 'Menginang', value: 'Menginang'),
            TextChoice(
                text: 'Mengonsumsi alkohol', value: 'Mengonsumsi alkohol'),
            TextChoice(
                text: 'Terkena banyak paparan sinar matahari',
                value: 'Terkena banyak paparan sinar matahari'),
            TextChoice(text: 'Penyakit autoimun', value: 'Penyakit autoimun'),
            TextChoice(
                text: 'Konsumsi tembakau selain rokok',
                value: 'Konsumsi tembakau selain rokok'),
            TextChoice(text: 'Diabetes', value: 'Diabetes'),
            TextChoice(text: 'Hipertensi', value: 'Hipertensi'),
            TextChoice(text: 'Obesitas', value: 'Obesitas'),
            TextChoice(text: 'Infeksi HPV', value: 'Infeksi HPV')
          ])),
      // Lanjutan dari riwayat
      QuestionStep(
          id: StepIdentifier(id: '2'),
          title: 'Tanda',
          text: 'Pilih sesuai dengan kondisi anda',
          answerFormat: MultipleChoiceAnswerFormat(textChoices: [
            TextChoice(
                text: 'Terdapat benjolan keras',
                value: 'Terdapat benjolan keras'),
            TextChoice(
                text: 'Luka di mulut tidak sembuh',
                value: 'Luka di mulut tidak sembuh'),
            TextChoice(
                text: 'Perubahan warna merah/putih lebih dari 1 cm',
                value: 'Perubahan warna merah/putih lebih dari 1 cm'),
            TextChoice(text: 'Perdarahan spontan', value: 'Perdarahan spontan'),
            TextChoice(
                text: 'Kehilangan banyak gigi',
                value: 'Kehilangan banyak gigi'),
            TextChoice(
                text: 'Penonjolan pada kelenjar getah bening di leher',
                value: 'Penonjolan pada kelenjar getah bening di leher')
          ])),
      QuestionStep(
          id: StepIdentifier(id: '3'),
          title: 'Gejala',
          text: 'Pilih sesuai dengan kondisi anda',
          answerFormat: MultipleChoiceAnswerFormat(textChoices: [
            TextChoice(
                text: 'Nyeri di area mulut', value: 'Nyeri di area mulut'),
            TextChoice(
                text: 'Sulit menggerakkan lidah',
                value: 'Sulit menggerakkan lidah'),
            TextChoice(text: 'Pipi terasa tebal', value: 'Pipi terasa tebal'),
            TextChoice(
                text: 'Mati rasa di area mulut',
                value: 'Mati rasa di area mulut')
          ])),

      CompletionStep(
        id: StepIdentifier(id: 'END'),
        title: 'Selesai!',
        text:
            'Terima kasih telah meluangkan waktu untuk mengisi survey kami, Silahkan lanjut untuk diagnosis mulut anda',
        buttonText: 'Ke Menu Utama',
      )
    ]);

    return task;
  }
}
