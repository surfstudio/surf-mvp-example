Пример реализации архитектуры SurfMVP.

Ответственности:<br>
**ViewInput** – реализует сама **View**, ссылку держит **Presenter**. Данный протокол описывает методы, при помощи которых **Presenter** может управлять **View**, передавать данные, изменять состояния и так далее.
<br>
**ViewOutput** – реализует **Presenter**, ссылку на него держит **View**. Протокол описывает набор действий, которые могут произойти во **View**, и методы жизненного цикла, например, события взаимодействия пользователя с экраном.
<br>
**RouterInput** – реализует **Router**, а ссылку на него держит **Presenter**, так как он является единственным ответственным за то, чтобы инициировать дальнейшую навигацию в приложении.
<br>
**ModuleTransitionable** – реализуется **View**, ссылку на него держит **Router**. Это единственный «базовый» протокол в SurfMVP. Он нужен для того, чтобы предоставить Router набор методов для работы с навигацией по приложению.
<br>
**ModuleInput** – реализует **Presenter**. Данный протокол должен содержать в себе методы, при помощи которых другой модуль, который держит ссылку на этот протокол, мог бы изменять состояния текущего модуля.
<br>
**ModuleOutput** – реализует **Presenter** вызывающего модуля, ссылку держит **Presenter** вызываемого модуля.
<br>
**ModuleOutput** передается в Configurator вызываемого модуля и там устанавливается в **Presenter**. Содержит в себе методы модуля, которые влияют на поведение вызывающего модуля.​
<br>
<br>
Более подробную информацию о SurfMVP можешь найти в [статье](https://habr.com/ru/company/surfstudio/blog/485172/).