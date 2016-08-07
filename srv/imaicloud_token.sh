
#!/bin/bash

# -- jojo --
# description: generate imaicloud token
# param: imaicloud_expires - 过期时间（自1970年的毫秒数）
# param: imaicloud_payload - 载荷，是base64url编码的字符串
# param: imaicloud_role - 角色，如果多个则用"|"隔开
# param: imaicloud_userid - 用户id，即租户在imaicloud.com的二级域名
# filtered_param: pwd - provent print password to log
# -- jojo --

echo "jojo_return_value user=$USER"
pwdfile=$(htpasswd -nb $USER $PWD); echo "jojo_return_value htpasswd=$pwdfile"
exit 0
