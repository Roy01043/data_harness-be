@echo off
echo ��ӭʹ��һ������ű�������
setlocal enabledelayedexpansion
set "package_path="
:input
set /p "package_path=���������õİ���(���·��)(������������һֱ��ʾ): "
if not exist "!package_path!" (
    echo �ļ������ڣ����������롣
    goto input
)
echo ��ǰ����·��Ϊ��%package_path%
ssh root@162.14.122.254 "cd /opt/applications/SDS/sds-test && make stop-be"
scp -r "%package_path%" root@162.14.122.254:/opt/applications/SDS/sds-test/backend/
ssh root@162.14.122.254 "cd /opt/applications/SDS/sds-test && make start-be-ps-logs"
echo �������