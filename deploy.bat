@echo off
echo ---------------------------------------
echo HM_UnionPi_CAT����Դ�뿪ʼ���𡣡���
echo ---------------------------------------
set /p oh_path=���������ĺ���3.0Դ��·��(����D:\OpenHarmony)��
xcopy %cd%\code\*.* %oh_path%\applications\sample\wifi-iot\app /e
if %errorlevel%==0 (echo ��ģ��demoԴ�벿��ɹ���) else (echo ��ģ��demoԴ�벿��ʧ�ܣ�)
copy %cd%\BUILD.gn %oh_path%\applications\sample\wifi-iot\app && (echo BUILD.gn����ɹ���) || (echo BUILD.gn����ʧ�ܣ�)
copy %cd%\usr_config.mk %oh_path%\device\hisilicon\hispark_pegasus\sdk_liteos\build\config && (echo usr_config.mk����ɹ���) || (echo usr_config.mk����ʧ�ܣ�)
echo HM_UnionPi_CAT����Դ�벿����ϣ�
pause