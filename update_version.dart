// ignore_for_file: avoid_print

import 'dart:io';

void main() async{
  String feedbackMessage = '\nVersāo atualizada com sucesso!';

  String tagName = writeOut(
    message: 'Digite a tag de versāo: '
  );
  String tagMessage = writeOut(
    message: 'Digite a mensagem da versāo: '
  );

  ProcessResult createTag = runCommand(
    command: 'git tag $tagName -m "$tagMessage"',
    feedbackMessage: 'Carregando...\n'
  );

  if (createTag.exitCode == 0) {
    ProcessResult saveChanges = runCommand(
      command: 'git add .',
      feedbackMessage: 'Carregando...\n'
    );
    print(32);

    if(saveChanges.exitCode == 0){
      String tagMessage = writeOut(
        message: 'Digite a mensagem de commit: '
      );

      ProcessResult commitChanges = runCommand(
        command: 'git commit -m "$tagMessage"',
        feedbackMessage: 'Carregando...\n'
      );

      if(commitChanges.exitCode == 0){
        ProcessResult updateVersion = runCommand(
          command: 'git push origin main $tagName',
          feedbackMessage: 'Carregando...\n'
        );

        if(updateVersion.exitCode != 0){
          feedbackMessage = 'Erro ao atualizar a versāo';
        }
      }else{
        feedbackMessage = 'Erro ao commitar as alteraçōes';
      }
    }else{
      feedbackMessage = 'Erro ao salvar as alteraçōes';
    }
  }else{
    feedbackMessage = 'Erro ao criar tag';
  }

  print(feedbackMessage);
}

ProcessResult runCommand({
  required String command,
  String? specificDirectory,
  List<String>? arguments,
  String executable = 'sh',
  required String feedbackMessage
}) {
  print(feedbackMessage);

  try {
    arguments ??= ['-c', command];

    return Process.runSync(executable, arguments, workingDirectory: specificDirectory);
  } catch (e) {
    return ProcessResult(0, 1, '', 'Erro ao executar o comando.');
  }
}

String writeOut({required String message}) {
  stdout.write(message);
  return stdin.readLineSync()!;
}