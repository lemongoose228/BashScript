### Описание задачи
На автоматической телефонной станции абоненты постоянно звонят друг другу и для каждого разговора известно время начала и окончания (в секундах). Ваша программа должная выяснить, в какой момент было наибольшее число одновременных разговоров. Если таких моментов несколько - сообщите самый ранний из них.

Первая строка содержит число разговоров (целое), в последующих строках сообщены время начала и окончания разговора (целые числа, разделённые пробелом). Все числа по модулю не превосходят 10000.

Выведите целое число - искомый момент времени

Пример 1
Ввод:
3.
3 4.
1 6.
0 7.
Вывод:
3

Пример 2
Ввод:
5
4 5
0 3
1 9
7 8
2 6
Вывод:
2


### Описание скрипта и функциональности

Сначала пользователь вводит данные в командную строку по образцу

Что делает скрипт:
1. Считывает число разговоров, которое пользователь ввёл в первой строке и сохраняет в переменную n
2. объявляется массив conversations, который будет хранить количество разговоров в каждый момент времени
3. С помощью первого мы считываем время начала и окончания каждого разговора из стандартного ввода, записваем их в переменные start и end
4. C помощью второго цикла проходим по всем моментам времени в промежутке от start до end включительно. В каждой итерации цикла мы увеличиваем значение элемента массива conversations на 1, соответствующего текущему моменту времени
5. Создаём переменные max_conversations и max_time соответствующими значениями 0
6. В цикле for ((i=0; i<=10000; i++)), мы проходим по всем секундам от 0 до 10000
7. После обработки всех разговоров, мы ищем максимальное количество разговоров и самую раннюю секунду с таким количеством. В каждой итерации цикла мы проверяем, если значение элемента массива conversations больше, чем текущее значение max_conversations. Если это так, мы обновляем значения max_conversations и max_time
8. Выводим значение переменной max_time, которая содержит искомый момент времени с наибольшим числом одновременных разговоров


### Способа запуска

1. Клонируйте репозиторий с помощью git clone <ссылка на проект> к себе
2. Пропишите $ chmod +x script.sh
3. Для запуска скрипта пропишите $ ./bashscript если вы находитесь в папке со скриптом, а если нет, то пропишите полный футь до файла $ /home/user/имя_папки/script.sh
4. Когда скрип запустится введите входные данные например:
3
3 4
1 6
0 7
5. Программа выдаст ответ на задачу с этими входными данными. В данном случае выведет "Ответ: 3"
